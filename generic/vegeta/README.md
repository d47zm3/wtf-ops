### Vegeta

```
echo "GET https://example.com" | vegeta attack -duration=10s -rate 30 | tee results.bin | vegeta report
```

Load testing tool in Go, custom bodies, headers and so on, check out [docs](https://github.com/tsenart/vegeta).
