#!/bin/sh

# Start the SSH agent
sshinf="${HOME}/.ssh-agent-info"

if pgrep -x -u "${USER}" ssh-agent >/dev/null 2>&1; then
    eval `cat $sshinf`
else
    eval `ssh-agent -t 7200 | sed '/^echo.*/d' | tee "$sshinf"`
fi
