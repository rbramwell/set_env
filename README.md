# set_env - Set Environment Variables during Puppet Runs

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with set_env](#setup)
    * [What set_env affects](#what-set_env-affects)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

When working with the [puppetlabs-aws](https://forge.puppetlabs.com/puppetlabs/aws) module we found it painful and less secure to have to hard code credentials,
 or store a file on the target puppet agent host with sensitive data in them.  So instead we wanted pass the sensitive
 data in an environment variable.  And thus the birth of set_env...

## Module Description

set_env is a Puppet Custom Type that will set a variable for the current running puppet run

## Setup

Installation is simple...

    puppet module install vormetriclabs-set_env
    
or if using Librarian or r10k, add it to your Puppetfile

    mod "vormetriclabs-set_env"

### What set_env affects

* The environment variables of the puppet agent during it's run only...


## Usage

Setting a temporary environment variable is pretty easy:

```ruby
set_env {"variable_name":
    value => "variable_value"
}
```

For example to set the AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY for use in puppetlabs-aws

```ruby
set_env {"AWS_ACCESS_KEY_ID":
    value => "ABCDEFG123456"
}
set_env {"AWS_SECRET_ACCESS_KEY":
    value => "abcdefg123456?!@#$%"
}
```

## Reference

Here, list the classes, types, providers, facts, etc contained in your module.
This section should include all of the under-the-hood workings of your module so
people know what the module is touching on their system but don't need to mess
with things. (We are working on automating this section!)

## Limitations

Tested on:

- Windows 7, 8, 8.1
- CentOS/RHEL 5, 6, 7
- Ubuntu 12.04, 14.04 LTS

Should work with just about any other OS though as its only requirements are puppet and ruby.

## Development

Feel free to submit issues, or pull requests



