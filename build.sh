#!/bin/bash

build() {
  mint build --skip-service-worker --skip-icons
}

copy_icon() {
  cp icon.png ./dist
}

replace_manifest() {
  cp manifest.json ./dist
}

build
copy_icon
replace_manifest