# ipify-api

A stripped down reimplementation of Randall Degges' [ipify.org](https://www.ipify.org/) API in the [Crystal language](https://crystal-lang.org/).

I wanted to see how fast Crystal was compared to the [benchmarks Randall reported for the current Go API](https://www.rdegges.com/2018/to-30-billion-and-beyond/). With Crystal, I'm getting about 3000 requests/second when testing against a deployment on the public internet and about 40,000 requests/second testing locally.

If someone wants to teach me how to investigate and improve the performance of my Crystal code, [let me know](https://twitter.com/crc)!

```txt
$ wrk -t2 -c500 -d10 https://ipify-api-crystal.herokuapp.com/
Running 10s test @ https://ipify-api-crystal.herokuapp.com/
  2 threads and 500 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   147.00ms   90.76ms   1.16s    97.11%
    Req/Sec     1.78k   391.37     2.49k    77.89%
  33931 requests in 10.07s, 5.50MB read
Requests/sec:   3370.56
Transfer/sec:    559.57KB
```

```txt
wrk -t2 -c500 -d10 http://localhost:8080
Running 10s test @ http://localhost:8080
  2 threads and 500 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    15.39ms   17.78ms 188.94ms   93.33%
    Req/Sec    20.29k     6.38k   28.57k    75.00%
  404964 requests in 10.07s, 44.03MB read
  Socket errors: connect 0, read 50, write 0, timeout 0
Requests/sec:  40217.31
Transfer/sec:      4.37MB
```

## Contributing

1. Fork it ( https://github.com/crcastle/ipify-api/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [[crcastle]](https://github.com/crcastle) Chris Castle - creator, maintainer
