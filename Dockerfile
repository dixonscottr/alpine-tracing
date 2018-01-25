FROM alpine:3.6

RUN apk add --no-cache python3
RUN apk --no-cache add curl
RUN apk --no-cache add bash
RUN python3 -m ensurepip && rm -r /usr/lib/python*/ensurepip && pip3 install --upgrade pip setuptools
RUN if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip; fi
RUN rm -rf /root/.cache

RUN mkdir /app
COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt
RUN python3 myapp/manage.py migrate
RUN echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@example.com', 'pass')" | python3 myapp/manage.py shell

EXPOSE 8000

RUN ["chmod", "+x", "myapp/run.sh"]
ENTRYPOINT myapp/run.sh