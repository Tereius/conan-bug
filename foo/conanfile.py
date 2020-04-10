#!/usr/bin/env python
# -*- coding: utf-8 -*-

from conans import ConanFile


class FooConan(ConanFile):
    name = "libFoo"
    version = "1.0"
    url = ""
    description = "A library"
    license = ""
    settings = "os", "arch", "compiler"
