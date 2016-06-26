# headphones

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with headphones](#setup)
    * [What headphones affects](#what-headphones-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with headphones](#beginning-with-headphones)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
6. [Development - Guide for contributing to the module](#development)

## Overview

Install Headphones

## Module Description

Installs Headphones via git, sets up sensible defaults and configures
the service to start at boot.

## Setup

### What headphones affects

* Checks out Headphones from git
* Creates a systemd unit file


### Beginning with headphones

If you just want Headphones installed with the default options:

    class { 'headphones: }
    # or
    include ::headphones

## Usage

All interaction for Headphones is done via the `headphones` class

## Reference

### Classes

##### Public classes
* `headphones`: Installs and configures the Headphones service

#### Private classes:
* `headphones::config`: Sets up the default options for Headphones
* `headphones::install`: Installs Headphones
* `headphones::service`: Configures the Headphones service
