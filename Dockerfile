FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install --upgrade pip --no-cache-dir
RUN pip install -r requirements.txt
RUN chmod +x /app/entrypoint.sh
COPY . /app
COPY entrypoint.sh /app/entrypoint.sh

ENTRYPOINT [ "/app/entrypoint.sh" ]
# CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000"]
# CMD [ "gunicorn", "core.wsgi:application", "--bind", "0.0.0.0:8000"]
