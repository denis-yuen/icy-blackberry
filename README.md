# icy-blackberry
Example for the HCA Hackathon

## Usage

Use handy [quick start tutorial](https://github.com/ngs-docs/2017-cloud-workflows-misc/blob/master/install-and-run-with-dockstore.md)

### Run with cwltool

```
cwltool --non-strict Dockstore.cwl params.json
```

### Run with Dockstore (consult launch-with)

Setup permissions for Dockstore.json
```
dockstore tool launch --entry quay.io/denis_yuen/icy-blackberry:master --json Dockstore.json
```
