# update functions in bashrc
function update-bashrc() {
	source ~/.bashrc
}

# ssh to burrow as dsbyun
function dsbyun@burrow() {
	ssh dsbyun@burrow.soic.indiana.edu
}

# ssh to silo as dsbyun
function dsbyun@silo() {
	ssh dsbyun@silo.soic.indiana.edu
}

PATH1=~/Documents/2019-fall/c212_ta/attendance

# [C212 Attendance Program]
# Compile and run attendance program. Move files.
function lab212-runmv() {
	og_pwd=$(pwd) # store to go back later
	cd $PATH1
	mv output/newlab/* output/oldlabs/
	javac Attendance.java
	java Attendance
	mv output/!(oldlabs|newlab) output/newlab
	cd $og_pwd # go back to og
}

# Compile and run attendance program.
function lab212-run() {
	og_pwd=$(pwd)
	cd $PATH1
	javac Attendance.java
	java Attendance
	cd $og_pwd
}

# Open first file in newlab
function lab212-open() {
	og_pwd=$(pwd)
	cd $PATH1/output/newlab
	vim $(ls *|head -n 1)
	cd $og_pwd
}

# Call the long ass gogh command
function gogh-color() {
	bash -c "$(wget -qO- https://git.io/vQgMr)"
}
