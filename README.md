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
* Kicks off the rest of the installation using the `setup.sh` script in the root of the cloned `dotfiles` repository.

You run the `bootstrap` script like so:
```sh
$ curl -s https://raw.githubusercontent.com/nielsberglund/dotfiles/main/bootstrap | bash
```
**Code Snippet 2:** *Executing the Bootstrap Script*

In *Code Snippet 2* you see how we use `curl` to execute the script, and how we pipe it to the `bash` command.

#### Misc.

The brewfile  installs among other things libpq (client tools for PostgreSQL). To add pqsql to the path you need to add the following to your .zshrc file:

```sh
echo 'export PATH="/opt/homebrew/opt/libpq/bin:$PATH"' >> ~/.zshrc'
```