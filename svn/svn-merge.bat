@echo off

rem configure mergetool here
set MERGE="vim -c 'SpliceInit -f'"

rem get params
set BASE=%1
set THEIRS=%2
set MINE=%3
set MERGED=%4
set WCPATH=%5

rem call the mergetool
%MERGE% %BASE% %MINE% %THEIRS% %MERGED%
