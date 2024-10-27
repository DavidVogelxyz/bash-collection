# file-permissions

This script was originally completed on 2024 October 26, Saturday.

The `file-permissions` script performs the following actions:

- runs `grep` recursively through a directory named `keys`
- gets all of the file paths to the private keys
- confirms that all of the private keys (and the `~/.ssh/config` file) have file permissions of `600`
