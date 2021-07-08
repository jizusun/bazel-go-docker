#!/bin/bash

commit_tag="commit-"$(git rev-parse --short HEAD)
echo "VERSION ${commit_tag}"