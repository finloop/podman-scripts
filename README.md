# Podman-scripts

Scripts that make dealing with podman quadlets a tad easier.

## Installation

1. Make sure that you've added `~/.local/bin` to PATH. 
Add this line to `.zshrc` or `.bashrc`.

```sh
export PATH="$HOME/.local/bin:$PATH"
```

2. Clone this repository:

```sh
git clone https://github.com/finloop/podman-scripts.git
cd podman-scripts
make install
```

## Usage

### pods

```sh
Usage: pods [-h] command 
Podman scripts for quadlet management.

Available options:

-h, --help              Show help

Commands:
  ls    List quadlet config files
```

### pods ls

```
Usage: pods-ls [-c] [c] [container] [-v] [v] [volume]

List quadlet config files.

Available options:

-h, --help              Show help
-v, v, volume           List quadlet volumes
-c, c, container        List quadlet containers
```

### Examples

```txt
$ pods ls
/home/pk/.config/containers/systemd
└── bookstack
    ├── bookstack.container
    ├── bookstack-db.container
    ├── bookstack-db.volume
    ├── bookstack.pod
    └── bookstack.volume
```

```txt
$ pods ls -c
/home/pk/.config/containers/systemd
└── bookstack
    ├── bookstack-db.volume
    └── bookstack.volume
```
