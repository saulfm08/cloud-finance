#!/bin/sh

python manage.py migrate --noinput
python manage.py shell -c "\
from django.contrib.auth import get_user_model; \
from django_celery_beat.models import PeriodicTask, IntervalSchedule; \
User=get_user_model(); \
User.objects.create_superuser('admin', 'admin@admin.com', 'admin')"

exec "$@"



