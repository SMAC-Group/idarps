# Local check on Ubuntu 22.04

==> devtools::check(document = FALSE)

══ Building ════════════════════════════════════════════════
Setting env vars:
• CFLAGS    : -Wall -pedantic -fdiagnostics-color=always
• CXXFLAGS  : -Wall -pedantic -fdiagnostics-color=always
• CXX11FLAGS: -Wall -pedantic -fdiagnostics-color=always
• CXX14FLAGS: -Wall -pedantic -fdiagnostics-color=always
• CXX17FLAGS: -Wall -pedantic -fdiagnostics-color=always
• CXX20FLAGS: -Wall -pedantic -fdiagnostics-color=always
── R CMD build ─────────────────────────────────────────────
✔  checking for file ‘/home/lionel/github_repo/idarps/DESCRIPTION’ (391ms)
─  preparing ‘idarps’:
✔  checking DESCRIPTION meta-information ...
─  checking for LF line-endings in source and make files and shell scripts (551ms)
─  checking for empty or unneeded directories
     NB: this package now depends on R (>= 3.5.0)
     WARNING: Added dependency on R >= 3.5.0 because serialized objects in
     serialize/load version 3 cannot be read in older versions of R.
     File(s) containing such objects:
       ‘idarps/data/BreastCancer.RData’ ‘idarps/data/HP13Cbicarbonate.RData’
       ‘idarps/data/PeruvianBP.RData’ ‘idarps/data/bronchitis.RData’
       ‘idarps/data/centenarian.rda’ ‘idarps/data/codex.RData’
       ‘idarps/data/cortisol.RData’ ‘idarps/data/covid.RData’
       ‘idarps/data/data_covid_switzerland_spatial.RData’
       ‘idarps/data/diabetes.RData’ ‘idarps/data/diet.RData’
       ‘idarps/data/fev.RData’ ‘idarps/data/kuwait_bp.rda’
       ‘idarps/data/pharmacy.RData’ ‘idarps/data/reading.RData’
       ‘idarps/data/snoring.RData’ ‘idarps/data/students.RData’
─  building ‘idarps_0.0.5.tar.gz’
   
══ Checking ════════════════════════════════════════════════
Setting env vars:
• _R_CHECK_CRAN_INCOMING_USE_ASPELL_           : TRUE
• _R_CHECK_CRAN_INCOMING_REMOTE_               : FALSE
• _R_CHECK_CRAN_INCOMING_                      : FALSE
• _R_CHECK_FORCE_SUGGESTS_                     : FALSE
• _R_CHECK_PACKAGES_USED_IGNORE_UNUSED_IMPORTS_: FALSE
• NOT_CRAN                                     : true
── R CMD check ─────────────────────────────────────────────
─  using log directory ‘/home/lionel/github_repo/idarps.Rcheck’ (494ms)
─  using R version 4.4.3 (2025-02-28)
─  using platform: x86_64-pc-linux-gnu
─  R was compiled by
       gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
       GNU Fortran (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
─  running under: Ubuntu 22.04.5 LTS
─  using session charset: UTF-8
─  using options ‘--no-manual --as-cran’
✔  checking for file ‘idarps/DESCRIPTION’
─  checking extension type ... Package
─  this is package ‘idarps’ version ‘0.0.5’
─  package encoding: UTF-8
✔  checking package namespace information ...
✔  checking package dependencies (1.7s)
✔  checking if this is a source package
✔  checking if there is a namespace
✔  checking for executable files ...
✔  checking for hidden files and directories
✔  checking for portable file names
✔  checking for sufficient/correct file permissions
✔  checking whether package ‘idarps’ can be installed (2.5s)
✔  checking installed package size
✔  checking package directory
N  checking for future file timestamps ...
   unable to verify current time
✔  checking DESCRIPTION meta-information (369ms)
✔  checking top-level files
✔  checking for left-over files
✔  checking index information
✔  checking package subdirectories (740ms)
✔  checking code files for non-ASCII characters ...
✔  checking R files for syntax errors ...
✔  checking whether the package can be loaded (510ms)
✔  checking whether the package can be loaded with stated dependencies ...
✔  checking whether the package can be unloaded cleanly ...
✔  checking whether the namespace can be loaded with stated dependencies ...
✔  checking whether the namespace can be unloaded cleanly (670ms)
✔  checking loading without being on the library search path (580ms)
✔  checking dependencies in R code (858ms)
✔  checking S3 generic/method consistency (778ms)
✔  checking replacement functions (351ms)
✔  checking foreign function calls (361ms)
✔  checking R code for possible problems (3.8s)
✔  checking Rd files (432ms)
✔  checking Rd metadata ...
✔  checking Rd line widths ...
✔  checking Rd cross-references ...
✔  checking for missing documentation entries ...
✔  checking for code/documentation mismatches (913ms)
✔  checking Rd \usage sections (918ms)
✔  checking Rd contents ...
✔  checking for unstated dependencies in examples ...
✔  checking contents of ‘data’ directory ...
✔  checking data for non-ASCII characters (698ms)
✔  checking LazyData
✔  checking data for ASCII and uncompressed saves (4.2s)
✔  checking examples (1.2s)
✔  checking for non-standard things in the check directory
✔  checking for detritus in the temp directory
   
   See
     ‘/home/lionel/github_repo/idarps.Rcheck/00check.log’
   for details.
   
── R CMD check results ─────────────────── idarps 0.0.5 ────
Duration: 25.8s

❯ checking for future file timestamps ... NOTE
  unable to verify current time

0 errors ✔ | 0 warnings ✔ | 1 note ✖

R CMD check succeeded

# GitHub actions checks

All tests passed successfully. See https://github.com/SMAC-Group/idarps/actions/workflows/R-CMD-check.yaml

# Downstream dependencies

There are currently no downstream dependencies for this package.

