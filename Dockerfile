FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

COPY ./app /app

RUN pip install --upgrade pip && \
    pip install -r /app/requirements.txt

EXPOSE 80

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
