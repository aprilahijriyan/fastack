#!/bin/bash

python -m smtpd -c DebuggingServer -n -d &
uvicorn app.main:app --workers 2 --host "0.0.0.0" --port 6700
