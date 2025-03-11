#!/bin/bash

python manage.py migrate
python manage.py collectstatic --noinput
# python manage.py runserver 0.0.0.0:8000

gunicorn --bind 0.0.0.0:8000 core.wsgi:application