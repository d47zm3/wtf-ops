### Taskfile

```
# Taskfile.yml

version: '3'

env:
  ENV: testing

dotenv: ['.env', '{{.ENV}}/.env.', '{{.HOME}}/.env']

tasks:
  greet:
    cmds:
      - echo "Using $KEYNAME and endpoint $ENDPOINT"
```

Too much to write about, check official [docs](https://taskfile.dev/#/usage?id=task).
