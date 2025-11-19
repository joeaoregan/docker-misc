# base image ubuntu os
FROM ubuntu:22.04

# update and install python
RUN apt-get update
RUN apt-get install -y python3 python3-pip

# set up working directory, copy all files
WORKDIR /app
COPY . /app/

# install requirements
# -r - remove zipped versions of binaries
RUN pip install -r requirements.txt

# run application
CMD ["python3", "app.py"]