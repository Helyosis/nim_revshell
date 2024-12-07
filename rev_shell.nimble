# Package

version       = "0.16.3"
author        = "Dominik Picheta"
description   = "Nim package manager."
license       = "BSD"

bin = @["rev_shell"]
srcDir = "."
installExt = @["nim"]

# Dependencies

when defined(nimdistros):
  import distros
  if detectOs(Ubuntu):
    foreignDep "libssl-dev"
  else:
    foreignDep "openssl"

task test, "Run the Nimble tester!":
  withDir "tests":
    exec "nim c -r tester"
