# cluster-shell

Start a kubectl shell for a Gardener shoot in a Gardener seed namespace

## Installation

```bash
curl -LO https://raw.githubusercontent.com/mwennrich/cluster-shell/main/cluster-shell
chmod +x ./cluster-shell
sudo mv ./cluster-shell /usr/local/bin/cluster-shell
```

## Usage

```bash
cluster-shell -n shoot--pxxxx--shootname --context myseed
```

Following tools are installed:

- kubectl
- stern
- kubectx
- kubens

Useful aliases (including bash completion)

- k
- ke (k get events)
- kns (change namespace)
