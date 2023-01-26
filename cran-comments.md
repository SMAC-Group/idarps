# Local check on Ubuntu 22.04

── R CMD check results ────────────────────── idarps 0.0.1 ────
Duration: 8.9s

❯ checking for future file timestamps ... NOTE
  unable to verify current time

❯ checking top-level files ... NOTE
  Non-standard files/directories found at top level:
    ‘cran-comments.md’ ‘data-raw’ ‘scripts’ ‘static’

0 errors ✔ | 0 warnings ✔ | 2 notes ✖

R CMD check succeeded

# Rhub check

  Build ID:   idarps_0.0.1.tar.gz-32aaaf3752ef484f9f8d4c025ea3a7ce
  Platform:   Windows Server 2022, R-devel, 64 bit
  Submitted:  7m 6.2s ago
  Build time: 2m 13.3s

❯ checking CRAN incoming feasibility ... [18s] NOTE
  Maintainer: 'The package maintainer <lionelvoirol@hotmail.com>'
  
  New submission
  
  DESCRIPTION fields with placeholder content:
    Maintainer: The package maintainer <lionelvoirol@hotmail.com>

❯ checking DESCRIPTION meta-information ... NOTE
  Maintainer field differs from that derived from Authors@R
    Maintainer: 'The package maintainer <lionelvoirol@hotmail.com>'
    Authors@R:  'Lionel Voirol <lionelvoirol@hotmail.com>'

❯ checking top-level files ... NOTE
  Non-standard files/directories found at top level:
    'cran-comments.md' 'data-raw' 'scripts' 'static'

❯ checking for detritus in the temp directory ... NOTE
  Found the following files/directories:
    'lastMiKTeXException'

0 errors ✔ | 0 warnings ✔ | 4 notes ✖


# Downstream dependencies
There are currently no downstream dependencies for this package.

