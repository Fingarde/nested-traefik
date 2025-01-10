[private]
default:
    @just --list

up: global faststack my-project uccv

down:
    pushd global && docker compose down && popd
    pushd faststack && docker compose down && popd
    pushd my-project && docker compose down && popd
    pushd uccv && docker compose down && popd

global:
    pushd global && docker compose up -d && popd

faststack: global
    pushd faststack && docker compose up -d && popd

my-project: global
    pushd my-project && docker compose up -d && popd

uccv: global
    pushd uccv && docker compose up -d && popd

