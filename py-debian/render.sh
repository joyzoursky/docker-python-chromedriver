#!/bin/bash

render() {
sedStr="
  s!%%PYTHON_VERSION%%!$python_version!g;
"

sed -E "$sedStr" $1
}

python_versions=(3.6 3.7 3.8)

for python_version in ${python_versions[*]}; do
  version=$python_version
  if [ ! -d $version ]
  then
    mkdir $version
  fi
  render Dockerfile.template > $version/Dockerfile
done
