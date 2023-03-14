# Selenoid + Telegraf + Prometheus + Grafana

## TL;DR

`make`

Workflow:

    Test → Selenoid:4444 ← Telegraf:9273 ← Prometheus:9090 ← Grafana:3000
                         ↖︎ Selenoid-UI:8080                ↖︎ Cadvisor:8081

- [Selenoid](https://github.com/aerokube/selenoid)
- [Selenoid-UI](https://github.com/aerokube/selenoid-ui)
- [Telegraf](https://github.com/influxdata/telegraf)
- [Prometheus](https://github.com/prometheus/prometheus)
- [Grafana](https://github.com/grafana/grafana)
