FROM python:3.9

WORKDIR /app

COPY train.py test.py requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

RUN python train.py

CMD ["python", "test.py"]