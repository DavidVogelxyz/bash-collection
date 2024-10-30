# error-handling

This script was originally completed on 2024 October 29, Tuesday.

`error-handling` is a basic script that demonstrates the benefit of error handling.

## Example

As an example, the script would be run as follows:

```
bash error-handling.sh file.txt
```

`file.txt` contains some IDs, and the script read the IDs from `file.txt` and loops over them, passing them to `example` as an argument.

If `example` succeeds, then the command operates on the argument as expected.

If `example` fails, it creates a timestamped entry in an `error_log`, letting the user know which IDs failed and when.

## Use case

In the real script, `example` was a function that would output a failure to `STDOUT`. On an input file with hundreds of IDs (each with 20 lines of output), this was a painful task.

With error handling, the user doesn't have to sift through `STDOUT` to look for failures.

Instead, an `error_log` is created *only if* the processing of any IDs fails. If no failures occur, then no `error_log` file is created.
