#!/bin/bash
echo $PWD
kill -9 $(fuser 80/tcp 2>/dev/null)
sleep 2
cd /home/ubuntu/CollegeMatchmaker/
echo $PWD
export FLASK_APP=main.py
echo $FLASK_APP
flask run --host=0.0.0.0 --port=80