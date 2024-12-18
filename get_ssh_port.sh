#!/bin/bash
grep -i '^Port' /etc/ssh/sshd_config | awk '{print $2}'
