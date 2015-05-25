uh-portage
==========

__Notice__: This repo is not being updated anymore, pull requests may be accepted.

UnixHub Gen/Funtoo portage overlay.

## Use it!

This overlay cannot _(yet?)_ be found in the layman registry. To use it, you have two options:

### Using layman

While this repo is not in the official layman registry, it can be sideloaded.

```
layman -o https://raw.github.com/nixers-projects/uh-portage/master/repository.xml -a uh-portage
layman --sync
```

### The Manual Way

Clone the repository, and add the following to your /etc/portage/make.conf

```make
PORTDIR_OVERLAY="/path/to/uh-portage
```

And that's it.
