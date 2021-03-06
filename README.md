<h1 align="center">
  .dotfiles
  
  🗃️
</h1>
<div align="center">
  a collection of different .dotfiles and other configs
  
  ![License](https://img.shields.io/github/license/hristotanev/.dotfiles?color=lightgrey&style=for-the-badge)
  ![Maintainance](https://img.shields.io/badge/actively%20maintained-yes-success?style=for-the-badge&logo=appveyor)
</div>

## Requirements
* [rcm](https://github.com/thoughtbot/rcm) - a free and open source dotfile management tool developed by [Thoughtbot](https://thoughtbot.com/)

## Pre-installation
Remember to back-up all the configuration you already have before running the installer.

## Installation
To install and link all dotfiles with all the set up required simply run the following command in your terminal:

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/hristotanev/.dotfiles/main/install.sh)"`

## Remove dotfiles and other configuration
In order to remove all dotfiles and configurations, run `rcdn && rm -rf .dotfiles` from your home directory.

## Next steps
- [ ] highlight and set-up dependencies inside the installer
- [ ] think about config back-up automation before fresh install
- [ ] set-up deploy pipeline and versioning convention to allow for automatic tagging with CircleCI
