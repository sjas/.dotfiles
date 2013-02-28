    #!/usr/bin/env python
    import sys
    import os

    # Configure your favorite merge program here.
    MERGE = "vim -c 'SpliceInit' -f"

    # Get the paths provided by Subversion.
    BASE   = sys.argv[1]
    THEIRS = sys.argv[2]
    MINE   = sys.argv[3]
    MERGED = sys.argv[4]
    WCPATH = sys.argv[5]

    # Call the merge command (change the following line to make sense for
    # your merge program).
    #cmd = [DIFF3, '--base', BASE, '--mine', MINE, '--theirs', THEIRS, '--outfile', MERGED]
    cmd = [MERGE, BASE, MINE, THEIRS, MERGED]
    os.execv(cmd[0], cmd)

    # Return an errorcode of 0 if the conflict was resolved; 1 otherwise.
    # Any other errorcode will be treated as fatal.
