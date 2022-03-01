#!/bin/bash

function user_details {
    echo "username : $(whoami)"
    echo "Home Directory: $HOME"
    echo "Date: $(date)"
}

user_details