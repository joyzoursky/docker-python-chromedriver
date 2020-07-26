#!/bin/bash

render() {
sedStr="
  s!%%PYTHON_VERSION%%!$python_version!g;
  s!%%ALPINE_VERSION%%!$alpine_version!g;
"

sed -E "$sedStr" $1
}

python_versions=(3.6-alpine3.7 3.7-alpine3.8 3.8-alpine3.10)
alpine_versions=(3.7 3.8 3.10)

for i in ${!python_versions[@]}; do
  python_version=${python_versions[i]}
  alpine_version=${alpine_versions[i]}

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
