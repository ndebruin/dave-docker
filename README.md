# dave-docker

A simple and lightweight build for https://github.com/micromata/dave into an alpine docker container.


# Running

```
docker run -d \
        -v ./config.yaml:/dave/config.yaml:ro \
        -v ./data:/data:rw
        -p 80:80
        ghcr.io/ndebruin/dave-docker:latest
```

# Configuration

`config.yaml` can be pulled from this repository.

```
users:
  ndebruin:
    password: "$2a$10$NGetkM2oa5WPhB1BSgrpPOf9OtZ5ksXfZD/1.QgsapitpAWKw/D6K"
    subdir: "/ndebruin"
```

* `ndebruin:` can be changed to set the username
* The password is bcrypt encrypted, and can be generated using the `davecli` binary in this repo.
* `/ndebruin` jails the user to the `/data/ndebruin` directory.