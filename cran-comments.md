# Local check on Ubuntu 22.04

── R CMD check results ─────────────────────── idarps 0.0.3 ────
Duration: 10.1s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

R CMD check succeeded

Duration: 10.1s


# Rhub check

## Test environments
- R-hub windows-x86_64-devel (r-devel)
- R-hub ubuntu-gcc-release (r-release)
- R-hub fedora-clang-devel (r-devel)

## R CMD check results
❯ On windows-x86_64-devel (r-devel), fedora-clang-devel (r-devel)
  checking HTML version of manual ... NOTE
  Skipping checking math rendering: package 'V8' unavailable

❯ On windows-x86_64-devel (r-devel)
  checking for detritus in the temp directory ... NOTE
  Found the following files/directories:
    'lastMiKTeXException'

0 errors ✔ | 0 warnings ✔ | 2 notes ✖

# GitHub actions checks

All tests passed successfully.

# Downstream dependencies

There are currently no downstream dependencies for this package.

