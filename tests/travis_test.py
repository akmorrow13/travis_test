#!/usr/bin/env python


import sys
import os
import glob
import unittest

class TravisTest(unittest.TestCase):

    def test_first(self):
        """ Check to see if it adds the word 'blah' to each line. """
        assert(3 == 3)

    def test_broken(self):
        """ Check to see if it adds the word 'blah' to each line. """
        assert(2 == 3)


