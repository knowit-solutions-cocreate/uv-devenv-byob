# What is this repo?

[![uv](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/uv/main/assets/badge/v0.json)](https://github.com/astral-sh/uv)
[![Static Badge](https://img.shields.io/badge/sdf-v0.10.7-blue)](https://docs.sdf.com/introduction/welcome)
[![Built with Nix](https://img.shields.io/static/v1?logo=nixos&logoColor=white&label=&message=Built%20with%20Nix&color=41439a)](https://builtwithnix.org)

This repo is a nix+python development environment using the following technologies

- uv for python package management
- devenv for general package management under nix
- It also uses a bring-your-own-binary which is packaged using a nix flake

# Prerequisites

- devenv
- direnv (optional, for automatic loading)

# How to run?

```bash
devenv shell
```

Or just enter the directory and run

```bash
direnv allow
```
If you are using direnv.


