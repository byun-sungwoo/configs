#    ██╗  ██╗██████╗  ██╗██████╗    ███████╗██╗  ██╗
#    ██║  ██║╚════██╗███║╚════██╗   ██╔════╝██║  ██║
#    ███████║ █████╔╝╚██║ █████╔╝   ███████╗███████║
#    ██╔══██║██╔═══╝  ██║██╔═══╝    ╚════██║██╔══██║
# ██╗██║  ██║███████╗ ██║███████╗██╗███████║██║  ██║
# ╚═╝╚═╝  ╚═╝╚══════╝ ╚═╝╚══════╝╚═╝╚══════╝╚═╝  ╚═╝

# Directories
H212REPOSITORY=~/Documents/2020spring/h212_ta/repositories
H212ATTENDANCE=~/Documents/2020spring/h212_ta/attendance

# Run attendance program
function h212attendance() {
	og_pwd=$(pwd)
	cd $H212ATTENDANCE
	javac Attendance.java
	clear
	java Attendance
	rm Attendance.class
	cd $og_pwd
}

# Update student repositories and remove any local changes
function h212repoupdate() {
	og_pwd=$(pwd)
	cd $H212REPOSITORY
	for REPO in $(ls)
	do
		cd $REPO
		echo [reset/clean/pull $REPO]
		git reset --hard HEAD
		git clean -f
		git pull origin master
		cd ..
	done
	cd $og_pwd
}
