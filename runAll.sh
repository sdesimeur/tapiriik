#!/bin/bash
cd /divers/tapiriik
source tap-env/bin/activate
/usr/bin/python3 manage.py runserver >/var/log/tapiriik/server.log 2>/var/log/tapiriik/server_error.log &
/usr/bin/python3 ./sync_worker.py >/var/log/tapiriik/sync_worker.log 2>/var/log/tapiriik/sync_worker_error.log &
/usr/bin/python3 ./sync_scheduler.py >/var/log/tapiriik/sync_scheduler.log 2>/var/log/tapiriik/sync_scheduler_error.log &
