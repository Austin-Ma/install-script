INSTALL
trash (moves files to trashcan via CLI)
mas (mac app store CLI)

LEARN MORE
mackup (backup app settings in a safe directory, sync settings between workstation )


PASS LEARN MORE


DEFINITELY PASS 
svn (old git, with issues git resolved. Centralized rather than distributed)


**MACOS Migration via Homebrew**
https://openfolder.sh/macos-migrations-with-brewfile
"brew bundle dump" => given a machine, what brew and cask files are installed
"brew bundle" => Look in current directory for a brew file, and imnstall packages from said file
"xcode-select --install" # homebrew dependencies
"/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" # install homebrew using curl


SYSTEM PREFERENCE SETTINGS FOR OSX
https://ss64.com/osx/syntax-defaults.html
https://medium.com/@notrab/friendly-os-x-defaults-d7f0cc39f2b3
https://www.learningosx.com/101-ways-to-tweak-os-x-using-terminal/
https://www.defaults-write.com/page/5/


https://www.defaults-write.com/add-a-blank-space-to-the-dock/

https://www.defaults-write.com/disable-gatekeeper-on-your-mac/

https://www.defaults-write.com/adding-quit-option-to-os-x-finder/


OSA-Script to set up the UI specifications
	- Dock placement, icons on dock
	- Folder tiling
	- Desktop icon size, text size, 
	- Disable Ask Siri
	- Dark appearance
	- Default web browser

Homebrew and cask for package and application installation


SAMPLE SCRIPTS

https://gist.github.com/bradp/bea76b16d3325f5c47d4
https://github.com/pathikrit/mac-setup-script/blob/master/install.sh
https://github.com/joeworkman/mac-setup-tool/blob/master/mac-setup.sh

Dot file import
https://github.com/holman/dotfiles
https://kalis.me/dotfiles-automating-macos-system-configuration/
https://github.com/mathiasbynens/dotfiles/blob/master/.macos



TOP HOMEBREW PACKAGES
https://formulae.brew.sh/analytics/install/365d/
https://formulae.brew.sh/analytics/install-on-request/365d/
https://lib.rs/command-line-utilities



Potential packages
==================
Parallel # Parallel processing, xargs alternative
Tldr # Condensed MAN notes 
Jq # JSON processor
Ncdu # Disk utility, manage files that are taking up too much space
Taskwarrior # TODO list
Tmux #multiple terminal sessions on one window
Tty-clock #Simple clock display


Leetcode CLI
https://github.com/skygragon/leetcode-cli



iMessage sign in
iCloud sign in
Device Pairing

Restart Mac, while disc waking up hold CMD + R  to enter=> Reinstall MacOS => Continue => Select Disk => Install latest OS => Set up instructioms


https://opensource.com/article/19/5/python-3-default-mac


Regulating CPU Process on OS X
	cputhrottle => install via Home-brew

Oneget (Windows package manager)
Microsoft Deployment toolkit

https://superuser.com/questions/6977/time-machine-backup-on-s3
http://jeremy.zawodny.com/blog/archives/007641.html
https://juicefs.com/docs/en/intro.html
https://www.makeuseof.com/tag/turn-nas-windows-share-time-machine-backup/
rsync files for backup
Use Jungle Disk (GUI that handles it for you)


Time Machine S3 Bucket 
	- Mount S3 bucket as POSIX FS for Mac (Mount S3 as local device)
	- Juicefs


New Laptop Applications
	iTerm2
		- OhmyZsh
	Visual Studio Code w/ packages
	Python Packages 
	Homebrew
	NPM
	Docker

	Microsoft Office
	Adobe Photoshop, Lightroom, Premiere Pro, Acrobat
	Dropbox
	Spotify 
	Discord

	Touch Bar settings
	Postman
	VirtualBox
	VLC

	Automatic developer environment via. Docker



Chef => Desired state configuration
	- Avoid config differences between hosts that are supposed to be identical (configuration drift)

Given a group of machines, how can we create a report for a group of machines giving info on
	Which hosts are the VM on?
	Who has the VM admin role?


Images are a template for a Docker container that you want to run
	When images are run, you get a container
	Containers contain: OS, software, application
	Each container provides one service
	Since containers are their own world, they can have their own frameworks and languages.

Rather than have one monolithic application, separate the concerns.
	One service for login, one for product, one for search, one for shopping cart
	The main website is very simple, only making API calls when needed for each service.



==========================
How to read a docker file 
==========================

# Specify base image you will build on top of
FROM python:3-onbuild	

# Copy source code onto image
COPY . /usr/src/app

# Provide commands to run when it starts. The following runs python with the script api.py
CMD [“python”, “api.py]


==========================
How to run
==========================
docker run

# This is tedious if you have multiple containers to run, instead leverage docker-compose to spin up all needed containers in one command

# We create a docker-compose file (.yml file)


==========================
How to read a docker-compose file
==========================
# Specify the version of compose file format
version: ‘3’

# Specify services
Services: 
	product-service:
		# Tell docker-compose what to build, with root as location of docker compose file
		build: ./product
		# Mount in a volume
		volumes:
			- ./product:/usr/src/app
		# Specify ports for application
		ports: 
			-5001:80

==========================
How to run
==========================
Docker-compose up

open -a "Google Chrome" http://google.com
open -a "Google Chrome"
 
Microsoft deployment toolkit
