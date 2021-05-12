# WSL2

## What is WSL2?

Windows Subsystem for Linux. It is a lightweight "utility" VM created by Microsoft to enable a Linux-like environment on Windows.

![wsl2-architecture](wsl2-architecture.png)

WSL2 requires Hyper-V. Turning on Hyper-V prevents VirtualBox from running (with any semblance of speed and sanity).

## Installing WSL2

Reference: https://www.omgubuntu.co.uk/how-to-install-wsl2-on-windows-10

Some manual steps will allow you to run WSL2 without being on an Insiders Windows build.

## Memory leak workaround

Set the maximum memory for WSL2. See [.wslconfig](../src/mnt/c/Users/samuel/.wslconfig).

```
[wsl2]
memory=6GB
```

Create an alias that frees up memory. See [.bash_aliases](../src/.bash_aliases).

```
# This is specific to WSL 2. If the WSL 2 VM goes rogue and decides not to free
# up memory, this command will free your memory after about 20-30 seconds.
#   Details: https://github.com/microsoft/WSL/issues/4166#issuecomment-628493643
alias drop_cache="sudo sh -c \"echo 3 >'/proc/sys/vm/drop_caches' && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'\""
```

## Dual-booting Hyper-V on/off

TODO
