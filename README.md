# docker-benchmark
benchmark tools: apache bench, wrk, wrk2...

## usage
```
docker run --name wrk -d babim/benchmark:wrk

docker exec -it wrk bash
wrk
Usage: wrk <options> <url>
  Options:
    -c, --connections <N>  Connections to keep open
    -d, --duration    <T>  Duration of test
    -t, --threads     <N>  Number of threads to use
                                                      
    -s, --script      <S>  Load Lua script file
    -H, --header      <H>  Add header to request
        --latency          Print latency statistics   
        --timeout     <T>  Socket/request timeout     
    -v, --version          Print version details
                                                      
  Numeric arguments may include a SI unit (1k, 1M, 1G)
  Time arguments may include a time unit (2s, 2m, 2h)
```

## tag
```
babim/benchmark:SOFT		=> Soft with wait attach to container
babim/benchmark:SOFT-run	=> container to run (recommend run docker with --rm)
example: docker run --rm babim/benchmark:wrk -v
babim/benchmark:SOFT-x86	=> 32 bit version
babim/benchmark:all	=> all benchmark tools
```