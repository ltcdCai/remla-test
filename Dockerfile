# Dockerfile
FROM python:3.7-slim
WORKDIR /root
COPY requirements.txt /root/
RUN python -m pip install --upgrade pip &&\
    pip install -r requirements.txt
COPY app.py /root/
ENTRYPOINT ["python"]
CMD ["app.py"]
