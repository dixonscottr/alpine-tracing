#!/bin/bash -xe

while true; do
        curl \
                -X GET \
                "http://127.0.0.1:8000/"

        curl \
                -X GET  \
                "http://127.0.0.1:8000/index/"

        sleep 1
done