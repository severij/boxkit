# my-box

## About

The purpose of this project is to create a customized CLI (Command-Line
Interface) environment tailored to my specific requirements. The base is Arch
Linux and it includes a set of tools, configurations, and enhancements that I
find useful for my daily command-line tasks. You can find the list of installed
packages in the [packages](packages) file.

## How to use

If you use distrobox:

```
distrobox create -i ghcr.io/severij/my-box -n my-box
distrobox enter my-box
```

If you use toolbx:

```
toolbox create -i ghcr.io/severij/my-box -c my-box
toolbox enter my-box
```

## Verification

These images are signed with sisgstore's cosign. You can verify the signature
by downloading the cosign.pub key from this repo and running the following
command:

```
cosign verify --key cosign.pub ghcr.io/severij/my-box
```


## Disclaimer

Please note that the tools, configurations, and settings in this repository are
tailored to my personal preferences and workflow. They may not suit everyone's
needs or work seamlessly in every environment. Use them at your own discretion
and make any necessary modifications to adapt them to your specific
requirements. This repo itself is a fork of
[ublue-os/boxkit](https://github.com/ublue-os/boxkit).
