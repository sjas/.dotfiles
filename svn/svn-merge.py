#!/usr/bin/env python
# -*- coding: utf-8 -*-
import sys
import os
import subprocess
from multiprocessing import Process

# Configure your favorite merge program here.
#MERGE = "vim"

# Get the paths provided by Subversion.
BASE   = sys.argv[1]
THEIRS = sys.argv[2]
MINE   = sys.argv[3]
MERGED = sys.argv[4]
WCPATH = sys.argv[5]

#callstring = "vim -f "
#callstring += BASE
#callstring += ", "
#callstring += MINE
#callstring += ", "
#callstring += THEIRS
#callstring += ", "
#callstring += MERGED
#callstring += "-c 'SpliceInit'"

#print callstring

# Call the merge command (change the following line to make sense for
# your merge program).
#cmd = [DIFF3, '--base', BASE, '--mine', MINE, '--theirs', THEIRS, '--outfile', MERGED]
#cmd = [MERGE, callstring]

Process(target=subprocess.call, args=(('vim', '-f', BASE, MINE, THEIRS, MERGED, '-c', 'SpliceInit', ),)).start()

#call(callstring)
#return subprocess.Popen([sys.executable, callstring], stdout=subprocess.PIPE, stderr=subprocess.PIPE, stdin=subprocess.PIPE)
#os.execv(cmd[0], cmd)

# Return an errorcode of 0 if the conflict was resolved; 1 otherwise.
# Any other errorcode will be treated as fatal.
