#!/usr/bin/env python
# -*- coding: utf-8 -*-

from conans import ConanFile


class FooConan(ConanFile):
    name = "libBar"
    version = "1.0"
    url = ""
    description = "A library"
    license = ""
    settings = "os", "arch", "compiler"
    generators = "cmake"
    requires = "foo/1.0@testing/testing"
