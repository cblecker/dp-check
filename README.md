# dp-check

Container image wrapping the
[`dp_check`](https://github.com/GoogleCloudPlatform/grpc-gcp-tools/tree/master/dp_check)
tool from
[GoogleCloudPlatform/grpc-gcp-tools](https://github.com/GoogleCloudPlatform/grpc-gcp-tools).

`dp_check` is a command-line tool for checking the proper configuration and
setup of a VM with respect to
[DirectPath](https://cloud.google.com/compute/docs/networking/configure-directpath)
and a particular Google Cloud service.

## Usage

```sh
docker pull ghcr.io/cblecker/dp-check:latest
docker run --rm ghcr.io/cblecker/dp-check --service=<SERVICE_NAME>
```

## License

[Apache License 2.0](LICENSE)
