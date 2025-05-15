# elastiflow
Runs Elastiflow in Docker

- Set `vm.max_map_count` with `echo 'vm.max_map_count=262144' | tee -a /etc/sysctl.conf` in order to get services running properly.
- Netflow port is 9996 by default
- Use override file to enable manual sampler definitions. You'll also need to update sample_rate.yml inside flowcoll settings.
- To import default dashboard, use `curl -XPOST "http://127.0.0.1:5601/api/saved_objects/_import?overwrite=true" -k -H "kbn-xsrf: true" -H "securitytenant: global" --form file=@kibana-8.2.x-codex-dark.ndjson`

## references

[https://medium.com/@ebisong18/from-zero-to-flow-setting-up-elastiflow-in-minutes-05e3a40e79c3](https://medium.com/@ebisong18/from-zero-to-flow-setting-up-elastiflow-in-minutes-05e3a40e79c3)

[https://blog.remontti.com.br/6255](https://blog.remontti.com.br/6255)