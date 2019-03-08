# Code Testing
A simple way to test your Powershell scripts.  This will preform a lint test using PSScriptanalyser and a unit test using Pester.

## Build the docker image

First build the docker image
`docker build -t " .`

Run your test script.
`docker run -v "$(pwd):C:/code" -w C:/code codetesting powershell -File run_tests.ps1`
