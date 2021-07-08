#!/bin/bash

render() {
sedStr="
  s!%%PYTHON_VERSION%%!$python_version!g;
"

sed -E "$sedStr" $1
}

python_versions=(3.6 3.7 3.8 3.9)

for python_version in ${python_versions[*]}; do
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
