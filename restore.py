#!/usr/bin/env python

import logging
import os
import re
import sys
import shutil

from pathlib import Path

IGNORES = (
        '.git/',
        '.gitignore',
        'README',
        'restore.py'
        )

RES = tuple(re.compile(i) for i in IGNORES)

logging.basicConfig(level=logging.INFO)


def link(target, source):
    logging.info("Restoring from {0} to {1}".format(source, target))
    if target.is_symlink():
        logging.info("Deleting existing link")
        target.unlink()
    if target.exists():
        backup = Path(str(target) + '.bak')
        target.rename(backup)
        logging.info("Backing up existing {0} to {1}".format(target, backup))
    target.symlink_to(source, source.is_dir())


def main():
    """
    Restore entire current directory to home directory
    """
    target = Path(os.environ['HOME']).resolve()
    source = Path(__file__).resolve().parent
    for subpath in source.iterdir():
        if not any(pattern.search(str(subpath)) for pattern in RES):
            link(target.joinpath('.' + subpath.name), subpath)


if __name__ == "__main__":
    main()
