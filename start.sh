#!/bin/bash

service ssh start
exec su git -c "./gogs web"
