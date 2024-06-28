Some options to tune performance:

* `--engine.Mode=latency`: prioritize startup & warmup over long-term peak performance
* `--vm.Xmx1024m`: limit memory to this many MB

These can be set in env var `GRAAL_PYTHON_ARGS` to affect all subprocesses conveniently.
