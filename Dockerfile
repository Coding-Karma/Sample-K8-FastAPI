FROM python:3.9
WORKDIR /code 
COPY ./requirement.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
COPY ./hello.py /code/hello.py
CMD ["uvicorn", "hello:app", "--host", "0.0.0.0", "--port", "80"]
EXPOSE 80/tcp