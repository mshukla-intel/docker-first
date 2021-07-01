FROM registry.connect.redhat.com/intel/openvino-runtime
#FROM python:latest
RUN yum install -y python3
WORKDIR /app
#COPY ./requirements.txt /app
#RUN pip3 install -r requirements.txt --no-cache-dir
COPY . /app
ENTRYPOINT ["python3"]
CMD ["app.py"]
