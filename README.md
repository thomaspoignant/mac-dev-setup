# mac-dev-setup
![made-with-bash](https://img.shields.io/badge/-Made%20with%20Bash-1f425f.svg?logo=image%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw%2FeHBhY2tldCBiZWdpbj0i77u%2FIiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8%2BIDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTExIDc5LjE1ODMyNSwgMjAxNS8wOS8xMC0wMToxMDoyMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkE3MDg2QTAyQUZCMzExRTVBMkQxRDMzMkJDMUQ4RDk3IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkE3MDg2QTAzQUZCMzExRTVBMkQxRDMzMkJDMUQ4RDk3Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6QTcwODZBMDBBRkIzMTFFNUEyRDFEMzMyQkMxRDhEOTciIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QTcwODZBMDFBRkIzMTFFNUEyRDFEMzMyQkMxRDhEOTciLz4gPC9yZGY6RGVzY3JpcHRpb24%2BIDwvcmRmOlJERj4gPC94OnhtcG1ldGE%2BIDw%2FeHBhY2tldCBlbmQ9InIiPz6lm45hAAADkklEQVR42qyVa0yTVxzGn7d9Wy03MS2ii8s%2BeokYNQSVhCzOjXZOFNF4jx%2BMRmPUMEUEqVG36jo2thizLSQSMd4N8ZoQ8RKjJtooaCpK6ZoCtRXKpRempbTv5ey83bhkAUphz8fznvP8znn%2B%2F3NeEEJgNBoRRSmz0ub%2FfuxEacBg%2FDmYtiCjgo5NG2mBXq%2BH5I1ogMRk9Zbd%2BQU2e1ML6VPLOyf5tvBQ8yT1lG10imxsABm7SLs898GTpyYynEzP60hO3trHDKvMigUwdeaceacqzp7nOI4n0SSIIjl36ao4Z356OV07fSQAk6xJ3XGg%2BLCr1d1OYlVHp4eUHPnerU79ZA%2F1kuv1JQMAg%2BE4O2P23EumF3VkvHprsZKMzKwbRUXFEyTvSIEmTVbrysp%2BWr8wfQHGK6WChVa3bKUmdWou%2BjpArdGkzZ41c1zG%2Fu5uGH4swzd561F%2BuhIT4%2BLnSuPsv9%2BJKIpjNr9dXYOyk7%2FBZrcjIT4eCnoKgedJP4BEqhG77E3NKP31FO7cfQA5K0dSYuLgz2TwCWJSOBzG6crzKK%2BohNfni%2Bx6OMUMMNe%2Fgf7ocbw0v0acKg6J8Ql0q%2BT%2FAXR5PNi5dz9c71upuQqCKFAD%2BYhrZLEAmpodaHO3Qy6TI3NhBpbrshGtOWKOSMYwYGQM8nJzoFJNxP2HjyIQho4PewK6hBktoDcUwtIln4PjOWzflQ%2Be5yl0yCCYgYikTclGlxadio%2BBQCSiW1UXoVGrKYwH4RgMrjU1HAB4vR6LzWYfFUCKxfS8Ftk5qxHoCUQAUkRJaSEokkV6Y%2F%2BJUOC4hn6A39NVXVBYeNP8piH6HeA4fPbpdBQV5KOx0QaL1YppX3Jgk0TwH2Vg6S3u%2BdB91%2B%2FpuNYPYFl5uP5V7ZqvsrX7jxqMXR6ff3gCQSTzFI0a1TX3wIs8ul%2Bq4HuWAAiM39vhOuR1O1fQ2gT%2F26Z8Z5vrl2OHi9OXZn995nLV9aFfS6UC9JeJPfuK0NBohWpCHMSAAsFe74WWP%2BvT25wtP9Bpob6uGqqyDnOtaeumjRu%2ByFu36VntK%2FPA5umTJeUtPWZSU9BCgud661odVp3DZtkc7AnYR33RRC708PrVi1larW7XwZIjLnd7R6SgSqWSNjU1B3F72pz5TZbXmX5vV81Yb7Lg7XT%2FUXriu8XLVqw6c6XqWnBKiiYU%2BMt3wWF7u7i91XlSEITwSAZ%2FCzAAHsJVbwXYFFEAAAAASUVORK5CYII%3D) [![License: Unlicense](https://img.shields.io/badge/license-Unlicense-blue.svg)](http://unlicense.org/)



This script allow you to install all the tools you need for setting up your dev environnement on your brand new mac.

# Launch installation
```shell
curl https://raw.githubusercontent.com/thomaspoignant/mac-dev-setup/master/mac-dev-setup.sh | bash
```

# What does it install?

It will install all this tools:
- ## Homebrew
  The Missing Package Manager for macOS, Homebrew installs the stuff you need that Apple (or your Linux system) didn’t.

  After the installation you will be available to install almost everything you need for your mac. You can list installed packages with `brew list` and `brew cask list`.

  I recommend running brew doctor every now and then to make sure things are good and `brew cleanup` to remove unused files.
- ## iTerm2
  iTerm2 is a replacement for Terminal (https://www.iterm2.com/).

  My favorites is that you can split your terminal in multiple views.

  ![iTerm2 screenshot](screenshots/iTerm2.png "iTerm2 screenshot")

- ## zsh / oh-my-zsh
  A delightful community-driven (with 1500+ contributors) framework for managing your zsh configuration. Includes 200+ optional plugins (rails, git, OSX, hub, capistrano, brew, ant, php, python, etc), over 140 themes to spice up your morning, and an auto-update tool so that makes it easy to keep up with the latest updates from the community. https://ohmyz.sh/

  There is a ton of great things to do with oh-my-zsh. [Powerlevel10k](https://github.com/romkatv/powerlevel10k) is my theme of choice.
  
  There are also a lot of [plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins) availablem go check it you will certainly find some things great for your usage.

- ## Most used command line tools.
  - **curl** : command line tool and library for transferring data with URLs.
  - **wget** : software package for retrieving files using HTTP, HTTPS, FTP and FTPS.
  - **micro** : A modern and intuitive terminal-based text editor.
  ![micro screenshot](screenshots/micro.png "micro screenshot")

  - **lsd** : The next gen ls command.

    Pimp your `ls` command to display icons and color to have a better experience.

    ![lsd screenshot](screenshots/lsd.png "lsd screenshot")

  - **tree** : `tree` is a recursive directory-listing program that produces a depth indented listing of files..
  ![tree screenshot](screenshots/tree.png "tree screenshot")

  - **ack** : `ack` is designed as a replacement for 99% of the uses of grep.
  - **jq** : `jq` is a lightweight and flexible command-line JSON processor.
  - **bash-completion** : Programmable completion functions for bash.
  - **htop** : Similar to top but allows you to scroll vertically and horizontally.
  - **tldr** : A collection of simplified and community-driven man pages.
  ![tldr screenshot](screenshots/tldr.png "tldr screenshot")

- ## GIT
  Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.
  ### git-alias
    Some great aliases to make your life easier when using GIT command line (https://github.com/thomaspoignant/gitalias).
  ### git-secrets
    Prevents you from committing secrets and credentials into git repositories (https://github.com/awslabs/git-secrets).
- ## Web browsers
  - Google Chrome
  - Mozilla Firefox
  - Microsoft Edge
- ## Productivity tools
  - **slack**: The Collaboration Hub.
  - **whatsapp**: Messaging system.
  - **rectangle**: Move and resize windows in macOS using keyboard shortcuts or snap areas.
  - **KAP**:  This is the best screen capture app right now.
  - **evernote**: Note taking app.
  - **spotify**: Music streaming.
  - **VLC**: Free and open source cross-platform multimedia player that plays most multimedia files, and various streaming protocols.
- ## IDE
  ### intellij idea
    Best IDEA for java and also the rest (https://www.jetbrains.com/idea/).
  ### vsCode
    A great text editor who can be an IDE sometimes (https://code.visualstudio.com/).
- ## Development
  ### Languages
  - **Java**
  - **golang**
  - **python**
  - **terraform**
  - **node**
  ### Database tools
  - **Dbeaver**: DB browser.
  - **libpq**: Postgres client command line.
  ### FTP/SFTP
  - **cyberduck**
  ### Docker
  - **docker**
  - **docker command line completion**
  ### AWS
  - **awscli**: official aws command line
  - **saws**: A supercharged AWS command line interface.
  ### API
  - **ngrok**: Expose your local APIs online.
  - **postman**: Call your APIs.