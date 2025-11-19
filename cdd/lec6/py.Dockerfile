FROM python:3.11-slim

WORKDIR /app

# Copy only dependencies first
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy application code after dependencies
COPY . .

CMD ["python", "app.py"]