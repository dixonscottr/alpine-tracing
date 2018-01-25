#!/bin/sh

export DATADOG_ENV=test
export DATADOG_TRACE_AGENT_PORT=8126
export DATADOG_SERVICE_NAME=worker
export DATADOG_TRACE_AGENT_HOSTNAME=${DDAGENT_SERVICE_HOST}

ddtrace-run gunicorn -p :8000 myapp.wsgi