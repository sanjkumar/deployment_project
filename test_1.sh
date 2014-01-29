#!/bin/bash

. /home/sanjeev/Desktop/deploy_project/isRunning.sh

isRunning mysqld >> logs/sqloutput.txt

#isRunning mysqld > logs/sqloutput.txt
#isRunning apache2 >> logs/apache2output.txt