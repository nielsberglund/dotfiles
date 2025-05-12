# dotfiles
Repo for setup scripts, settings, etc.

## Installation

You first need to install XCode command line tools from your shell:

``` sh
$ xcode-select --install
```
**Code Snippet 1:** *Install XCode*

When running the code in *Code Snippet 1* you will be presented with some installation dialogs. Just follow their prompts and when the installation have succeeded you can reboot. This may not be absolutely necessary, but do it just to be on the "safe side".

You now have the base requirement, and you can continue to the main installation script, which is `bootstrap`. This script:

* Installs `homebrew`.
* Using `homebrew` installs `git`.
* Clones the `dotfiles` repo which contains the various scripts, settings, etc.

You run the `bootstrap` script like so:
```sh
$ curl -s https://raw.githubusercontent.com/nielsberglund/dotfiles/main/bootstrap | bash
```
**Code Snippet 2:** *Executing the Bootstrap Script*

In *Code Snippet 2* you see how we use `curl` to execute the script, and how we pipe it to the `bash` command.

When `bootstrap` has run you are ready to continue. However, before you do that you need to clone a private repo so that `git-credential-manager` will run and store the credentials:

```sh
git clone https://github.com/nielsberglund/credrepo.git
```
**Code Snippet 3:** *Clone Private Repo for GCM*

You run the code from the `repos` directory. When you have done that you can continue with the installation.

### Installation of the Rest

There are two ways to install the rest of the stuff:

* Run the `setup.sh` script in the root of the cloned `dotfiles` repository. (You do this if you feel lucky.)
* Switch to `scripts` directory and run the scripts individually (`xxx-standalone.sh`). (You do this if you want to be in control.)

Before you do either of the above you need to allow execution of the scripts. You do that in the `scripts` folder like so:

```sh
$ chmod 755 ./*.sh
```

If you run the individual scripts you should run them in the following order:

1. `osx-standalone.sh`
1. `fonts-standalone.sh`
1. `brewfile-standalone2.sh`
1. `symlinks-standalone.sh`

#### Misc.

The brewfile  installs among other things libpq (client tools for PostgreSQL). To add pqsql to the path you need to add the following to your .zshrc file:

```sh
echo 'export PATH="/opt/homebrew/opt/libpq/bin:$PATH"' >> ~/.zshrc'
```
**Code Snippet 4:** *Add libpq to Path*

You may have to uncheck the `Dock > Show recent applications in Dock` setting in System Preferences.

## Manual Installs/Settings

### Hugo/GitHub Repos

When cloning the nielsberglund.com and aimldatadurban.org repos, use:

`git clone --recurse-submodules https://github.com/nielsberglund/nielsblogsource.git`

### Magnifier

In Settings/Accessibility Zoom:

* Enable: "Use keyboard shortcuts to zoom"
* Enable: "Use trackpad gesture to zoom"

In Advanced "Zoomed images moves":

* Enable "Continiously with pointer"








