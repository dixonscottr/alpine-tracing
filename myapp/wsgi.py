"""
WSGI config for {{ project_name }} project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/2.0/howto/deployment/wsgi/
"""

import os
import sys

from django.core.wsgi import get_wsgi_application

# add your project directory to the sys.path
project_home = u'/app'
if project_home not in sys.path:
    sys.path.append(project_home)

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "myapp.settings")

application = get_wsgi_application()