# Node.js on WSL2

Note: These steps are done after [installing WSL2](wsl2.md)

## Install via asdf

```
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf install nodejs 14.17.0
asdf global nodejs 14.17.0
```

## Install via NVM

Reference: https://github.com/nvm-sh/nvm

There is a hosted Bash script that you can `curl` and pipe to `bash`.

Something like this:
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
```

After installing, restart the terminal.

To verify the install is good, run:
```
nvm ls
```

which should print out:
```
            N/A
iojs -> N/A (default)
node -> stable (-> N/A) (default)
unstable -> N/A (default)
```

To install the LTS version of node:
```
nvm install --lts
```

To verify the install is good, run:
```
node -v
```
which should print out the version. Something like this:
```
v14.16.1
```

Also, run:
```
npm -v
```
which should print out something like this:
```
6.14.12
```
