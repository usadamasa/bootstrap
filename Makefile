all:
	echo "usage ./bootstrap.sh"

.PHONY: brew
brew:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

.PHONY: dotfile
dotfile:
	rm -rf ~/dotfile
	git clone https://github.com/usadamasa/dotfile.git ~/dotfile
	cd ~/dotfile && sh ./bootstrap.sh

.PHONY: fonts
fonts:
	brew tap sanemat/font
	brew reinstall --powerline --vim-powerline ricty

.PHONY: code
	brew cask update
	brew cask install visual-studio-code

.PHONY: misc
	brew update
	brew install \
		ansible \
		awscli \
		cmake \
		llvm \
		python  \
		qt \
		vim \
		wget \

