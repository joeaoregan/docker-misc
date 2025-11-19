# base image - minimal version of python
FROM python:3.11-slim

# directory to copy files into (creates if not there)
WORKDIR /app

# Copy only dependencies first (in same folder as dockerfile)
COPY requirements.txt .

# install flask library from requirements file
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code after dependencies
# Copy whatever else is in the folder into the working directory (app code)
COPY . .

# Start the app running
CMD ["python", "app.py"]

# Exposing the port is more for documentation
# But, better to put it in
EXPOSE 8080