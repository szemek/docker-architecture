#!/bin/bash
set -e
cd /home/app/site
bundle check || bundle install
