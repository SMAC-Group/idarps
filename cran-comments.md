# Resubmission

This is a resubmission of 0.0.6. In this version we have:

* Updated the redirected URL in `man/BreastCancer.Rd` (changed from
  bmccancer.biomedcentral.com to link.springer.com) to address the
  CRAN auto-check NOTE on URL redirection.

# Local check on Windows

==> devtools::check(document = FALSE)

══ Building ═════════════════════════════════════════════════════════════════════
Setting env vars:
• CFLAGS    : -Wall -pedantic -fdiagnostics-color=always
• CXXFLAGS  : -Wall -pedantic -fdiagnostics-color=always
• CXX11FLAGS: -Wall -pedantic -fdiagnostics-color=always
• CXX14FLAGS: -Wall -pedantic -fdiagnostics-color=always
• CXX17FLAGS: -Wall -pedantic -fdiagnostics-color=always
• CXX20FLAGS: -Wall -pedantic -fdiagnostics-color=always
── R CMD build ──────────────────────────────────────────────────────────────────
✔  checking for file 'C:\Users\LucaI\Desktop\github_local\2026\idarps/DESCRIPTION'
─  preparing 'idarps':
✔  checking DESCRIPTION meta-information
─  checking for LF line-endings in source and make files and shell scripts
─  checking for empty or unneeded directories
─  building 'idarps_0.0.6.tar.gz'
   
══ Checking ═════════════════════════════════════════════════════════════════════
Setting env vars:
• _R_CHECK_CRAN_INCOMING_REMOTE_               : FALSE
• _R_CHECK_CRAN_INCOMING_                      : FALSE
• _R_CHECK_FORCE_SUGGESTS_                     : FALSE
• _R_CHECK_PACKAGES_USED_IGNORE_UNUSED_IMPORTS_: FALSE
• NOT_CRAN                                     : true
── R CMD check ──────────────────────────────────────────────────────────────────
─  using log directory 'C:/Users/LucaI/Desktop/github_local/2026/idarps.Rcheck'
─  using R version 4.4.3 (2025-02-28 ucrt)
─  using platform: x86_64-w64-mingw32
─  R was compiled by
       gcc.exe (GCC) 13.3.0
       GNU Fortran (GCC) 13.3.0
─  running under: Windows 11 x64 (build 26200)
─  using session charset: UTF-8
─  using options '--no-manual --as-cran'
✔  checking for file 'idarps/DESCRIPTION'
─  checking extension type ... Package
─  this is package 'idarps' version '0.0.6'
─  package encoding: UTF-8
✔  checking package namespace information
✔  checking package dependencies ...
✔  checking if this is a source package
✔  checking if there is a namespace
✔  checking for executable files ... 
✔  checking for hidden files and directories ...
✔  checking for portable file names
✔  checking whether package 'idarps' can be installed (1.6s)
✔  checking installed package size ... 
✔  checking package directory
N  checking for future file timestamps ... 
   unable to verify current time
✔  checking DESCRIPTION meta-information ... 
✔  checking top-level files
✔  checking for left-over files
✔  checking index information
✔  checking package subdirectories ...
✔  checking code files for non-ASCII characters ...
✔  checking R files for syntax errors ... 
✔  checking whether the package can be loaded ... 
✔  checking whether the package can be loaded with stated dependencies ... 
✔  checking whether the package can be unloaded cleanly ... 
✔  checking whether the namespace can be loaded with stated dependencies ... 
✔  checking whether the namespace can be unloaded cleanly ... 
✔  checking loading without being on the library search path ... 
✔  checking dependencies in R code ... 
✔  checking S3 generic/method consistency ... 
✔  checking replacement functions ... 
✔  checking foreign function calls ... 
✔  checking R code for possible problems (2.3s)
✔  checking Rd files ... 
✔  checking Rd metadata ... 
✔  checking Rd line widths ... 
✔  checking Rd cross-references ... 
✔  checking for missing documentation entries ... 
✔  checking for code/documentation mismatches (550ms)
✔  checking Rd \usage sections ... 
✔  checking Rd contents ... 
✔  checking for unstated dependencies in examples ... 
✔  checking contents of 'data' directory ...
✔  checking data for non-ASCII characters ... 
✔  checking LazyData ...
✔  checking data for ASCII and uncompressed saves ... 
✔  checking examples (398ms)
✔  checking for non-standard things in the check directory
✔  checking for detritus in the temp directory
   
   See
     'C:/Users/LucaI/Desktop/github_local/2026/idarps.Rcheck/00check.log'
   for details.
   
   ERROR: Unknown command "TMPDIR=C:/Users/LucaI/AppData/Local/Temp/RtmpoFcOnp/file100854e3dac". Did you mean command "update"?
   Warning message:
   In system2("quarto", "-V", stdout = TRUE, env = paste0("TMPDIR=",  :
     running command '"quarto" TMPDIR=C:/Users/LucaI/AppData/Local/Temp/RtmpoFcOnp/file100854e3dac -V' had status 1
── R CMD check results ──────────────────────────────────────── idarps 0.0.6 ────
Duration: 12.4s

❯ checking for future file timestamps ... NOTE
  unable to verify current time

0 errors ✔ | 0 warnings ✔ | 1 note ✖

R CMD check succeeded

# GitHub actions checks

All tests passed successfully. See https://github.com/SMAC-Group/idarps/actions/workflows/R-CMD-check.yaml

# Downstream dependencies

There are currently no downstream dependencies for this package.

