uh-portage
==========

__Notice__: This repo is not being updated anymore, pull requests may be accepted.

UnixHub Gen/Funtoo portage overlay.

## Use it!

This overlay cannot _(yet?)_ be found in the layman registry. To use it, you have two options:

### Using layman

While this repo is not in the official layman registry, it can be sideloaded.

```
layman -o https://raw.github.com/UnixHub/UnixHub-Portage/master/repository.xml -a UnixHub-Portage
layman --sync
```

### The Manual Way

Clone the repository, and add the following to your /etc/portage/make.conf

```make
PORTDIR_OVERLAY="/path/to/UnixHub-Portage"
```

And that's it.

## Contribute!
Hey, this is github. I don't have to tell you that you can contribute to the project. Fork, hack, submit pull requests. **Now!**
