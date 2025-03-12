#!/bin/bash

python manage.py migrate --noinput
python manage.py collectstatic --noinput
# python manage.py runserver 0.0.0.0:8000

gunicorn --bind 0.0.0.0:8000 --workers 3 core.wsgi:application