# Generating Dockerfile

## Overview

The auto generation scripts in the current projects have a simple CLI to allow the user to define the input files and output directory, this includes the platform and images config. For every tag defined in images config, the Dockerfiles will be auto generated inside directory each named for its corresponding tag. These directories will also include any files or entrypoints need during buildtime for the tagged image.

## Commands

The current script has two modes, the first where each argument is explicitly specified, and the second where only the residing directory need be specified. Both absolute and relative paths are acceptable.

```
$ ./create_dockerfiles.py --help
usage: create_dockerfiles.py [-h] {explicit,dir} ...

Generate the 'Dockerfile's for the base docker images

positional arguments:
  {explicit,dir}  help for subcommand
    explicit      explicit --help
    dir           dir --help

optional arguments:
  -h, --help      show this help message and exit
```

### Explicit
```
Each parameter must be specified explicitly as no assumption of the filenames or paths are made.

$ ./create_dockerfiles.py explicit --help
usage: create_dockerfiles.py explicit [-h] -p PLATFORM -i IMAGES -o OUTPUT

optional arguments:
  -h, --help            show this help message and exit
  -p PLATFORM, --platform PLATFORM
                        Path to platform config
  -i IMAGES, --images IMAGES
                        Path to images config
  -o OUTPUT, --output OUTPUT
                        Path to write generate Dockerfiles
```

### Directory
```

Only the residing directory path that includes the files named `platform.yaml` and `images.yaml.em`, the output folders are written to the same path.

$ ./create_dockerfiles.py dir --help
usage: create_dockerfiles.py dir [-h] -d DIRECTORY

optional arguments:
  -h, --help            show this help message and exit
  -d DIRECTORY, --directory DIRECTORY
                        Path to read config and write output
```
