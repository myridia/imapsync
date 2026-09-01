# AGENTS.md — imapsync

## What this is
A Docker image that transfers and syncs an IMAP mail account (with its full folder structure) from one server to another, wrapping the `imapsync` tool.

## Stack
- Docker (Debian base)
- Perl (imapsync and its many dependencies)
- MariaDB client

## Build
```bash
docker build -t myridia/imapsync .
```

## Run
```bash
docker run -i myridia/imapsync \
  --tls1 --host1 serverfoo.com --user1 bar@foo.com --password1 secret \
  --tls2 --host2 serverbar.com --user2 foo@bar.com --password2 secret
```

## Structure
- `Dockerfile` — installs Perl IMAP libraries and the imapsync binary
- `build.sh` — build helper
- `remove_all_dockers.sh` — cleanup helper

## Conventions
- No comments in code unless asked.
- Passwords are provided at runtime, not baked into the image.
