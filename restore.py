#!/usr/bin/env python
# encoding: utf-8

import os
import sys

IGNORE_DIRS = (".git")
IGNORE_FILES = (".gitignore", "README")

def link(target, source):
    print("Restoring from {0} to {1}".format(source, target))
    if os.path.islink(target):
        print("Deleting existing link")
        os.remove(target)
    if os.path.exists(target):
        backup = "{0}.bak".format(target)
        print("Backing up existing {0} to {1}".format(target, backup))
    os.symlink(source, target)

def main():
    """
    Restore entire current directory to home directory
    """
    target = os.environ['HOME']
    source = os.path.abspath(os.path.dirname(sys.argv[0]))
    for name in os.listdir(source):
        sourcename = os.path.join(source, name)
        if os.path.abspath(sourcename) == os.path.abspath(sys.argv[0]):
            continue #Don't Copy Self
        targetname = os.path.join(target, name)
        if os.path.isdir(sourcename) and name != ".git":
            link(targetname, sourcename)
        elif os.path.isfile(sourcename) and name not in ["README",
                ".gitignore"]:
            link(targetname, sourcename)

if __name__=="__main__":
    main()
