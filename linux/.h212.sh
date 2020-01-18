H212REPOSITORY=~/Documents/2020spring/h212_ta/repositories
H212ATTENDANCE=~/Documents/2020spring/h212_ta/attendance

function h212attendance() {
	og_pwd=$(pwd);
	cd $H212ATTENDANCE;
	javac Attendance.java;
	clear;
	java Attendance;
	rm Attendance.class;
	cd $og_pwd;
}

function h212repoupdate() {
	og_pwd=$(pwd);
	cd $H212REPOSITORY;
	cd spr2020-h212-alleno;		git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-corbrisc;	git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-tcburdon;	git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-epchappl;	git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-tdattolo;	git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-adhamdhe;	git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-kdhingra;	git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-wbfletch;	git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-rifhall;	git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-sikapoor;	git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-dekarmol;	git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-parkkell;	git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-splaws;		git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-alubiens;	git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-rumalik;	git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-asm9;		git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-julrathe;	git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-mrazo;		git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-dronske;	git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-auwarr;		git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-wuwenj;		git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd spr2020-h212-zhanso;		git reset --hard HEAD;	git clean -f;	git pull origin master;	cd ..;
	cd $og_pwd;
}

function h212repoclone() {
	git clone https://github.com/c212/spr2020-h212-alleno;
	git clone https://github.com/c212/spr2020-h212-corbrisc;
	git clone https://github.com/c212/spr2020-h212-tcburdon;
	git clone https://github.com/c212/spr2020-h212-epchappl;
	git clone https://github.com/c212/spr2020-h212-tdattolo;
	git clone https://github.com/c212/spr2020-h212-adhamdhe;
	git clone https://github.com/c212/spr2020-h212-kdhingra;
	git clone https://github.com/c212/spr2020-h212-wbfletch;
	git clone https://github.com/c212/spr2020-h212-rifhall;
	git clone https://github.com/c212/spr2020-h212-sikapoor;
	git clone https://github.com/c212/spr2020-h212-dekarmol;
	git clone https://github.com/c212/spr2020-h212-parkkell;
	git clone https://github.com/c212/spr2020-h212-splaws;
	git clone https://github.com/c212/spr2020-h212-alubiens;
	git clone https://github.com/c212/spr2020-h212-rumalik;
	git clone https://github.com/c212/spr2020-h212-asm9;
	git clone https://github.com/c212/spr2020-h212-julrathe;
	git clone https://github.com/c212/spr2020-h212-mrazo;
	git clone https://github.com/c212/spr2020-h212-dronske;
	git clone https://github.com/c212/spr2020-h212-auwarr;
	git clone https://github.com/c212/spr2020-h212-wuwenj;
	git clone https://github.com/c212/spr2020-h212-zhanso;
}

unset -f h212repoclone;
