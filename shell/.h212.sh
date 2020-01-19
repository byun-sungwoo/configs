#    ██╗  ██╗██████╗  ██╗██████╗    ███████╗██╗  ██╗
#    ██║  ██║╚════██╗███║╚════██╗   ██╔════╝██║  ██║
#    ███████║ █████╔╝╚██║ █████╔╝   ███████╗███████║
#    ██╔══██║██╔═══╝  ██║██╔═══╝    ╚════██║██╔══██║
# ██╗██║  ██║███████╗ ██║███████╗██╗███████║██║  ██║
# ╚═╝╚═╝  ╚═╝╚══════╝ ╚═╝╚══════╝╚═╝╚══════╝╚═╝  ╚═╝

# Directories
H212_DIR=~/Documents/2020spring/h212_ta
H212_REP=$H212_DIR/repositories
H212_ATD=$H212_DIR/attendance

# Run attendance program
function h212-attendance() {
	og_pwd=$(pwd)
	cd $H212_ATD
	javac Attendance.java
	clear
	java Attendance
	rm Attendance.class
	cd $og_pwd
}

# Update student repositories and remove any local changes
function h212-update-repo() {
	og_pwd=$(pwd)
	cd $H212_REP
	for REPO in $(ls)
	do
		cd $REPO
		echo ----reset/clean/pull $REPO----
		git reset --hard HEAD
		git clean -f
		git pull origin master
		cd ..
	done
	cd $og_pwd
}
