#!/usr/bin/env python
import jinja2
import yaml
pools = None
with open('pools.yaml', 'r') as fp:
    pools = yaml.load(fp)
env = jinja2.Environment(loader=jinja2.FileSystemLoader('.'),
                         undefined=jinja2.StrictUndefined)
development = env.get_template('template.yaml').render(pools=pools, service_instance="development")
development = yaml.load(development)
with open('../generated/development.yaml', 'w') as fp:
    fp.write(yaml.dump(development, default_flow_style=False))
