FROM python:3.9-slim

WORKDIR /app

COPY . ./

# RUN pip install --upgrade pip
RUN pip install -r requirements.txt -q

EXPOSE 5000

CMD python myindex.py