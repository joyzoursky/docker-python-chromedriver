#!/bin/bash

render() {
sedStr="
  s!%%PYTHON_VERSION%%!$python_version!g;
  s!%%ALPINE_VERSION%%!$alpine_version!g;
"

sed -E "$sedStr" $1
}

python_versions=(3.6-alpine 3.7-alpine 3.8-alpine 3.9-alpine)
alpine_version=3.14

for i in ${!python_versions[@]}; do
  python_version=${python_versions[i]}

  version=$python_version
  if [ ! -d $version ]
  then
    mkdir $version
  fi
  render Dockerfile.template > $version/Dockerfile

  selenium_version="$python_version-selenium"
  if [ ! -d $selenium_version ]
  then
    mkdir $selenium_version
  fi
  render Dockerfile-selenium.template > $selenium_version/Dockerfile
done
