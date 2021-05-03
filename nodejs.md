# Node.js

## Windows

Note: These steps are done after [installing WSL2](wsl2.md)

### Install NVM

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

### Install Node.js

