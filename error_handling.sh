#!/bin/bash

create_dir() {
	mkdir demo
}

if ! create_dir; then
	echo "THe cide is being interrupted"
	exit 1

fi

echo "this should not work"
