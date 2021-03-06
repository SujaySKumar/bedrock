#!/bin/bash

DEPLOY_SCRIPT=/data/bedrock/deploy
WORKING_DIR=/data/bedrock/src/www.mozilla.org-django/bedrock
SITE_NAME=www.mozilla.org
PYTHON=../venv/bin/python
PD_PATH=lib/product_details_json

cd $WORKING_DIR
$PYTHON manage.py update_product_details
$DEPLOY_SCRIPT -q "${SITE_NAME}-django/bedrock/$PD_PATH"
exit 0
