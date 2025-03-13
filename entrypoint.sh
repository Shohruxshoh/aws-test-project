#!/bin/bash

python manage.py migrate --noinput
python manage.py collectstatic --noinput
# python manage.py runserver 0.0.0.0:8000

gunicorn --bind 0.0.0.0:8000 core.wsgi:application --workers 3 --timeout 120 --threads 3