H212REPOSITORY=~/Documents/2020spring/h212_ta/studentrepo
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

function gitpullrepo() {
	git pull origin master;
}

function h212repoupdate() {
	og_pwd=$(pwd);
	cd $H212REPOSITORY;
	cd spr2020-h212-alleno;		$(gitpullrepo);
	cd spr2020-h212-corbrisc;	$(gitpullrepo);
	cd spr2020-h212-tcburdon;	$(gitpullrepo);
	cd spr2020-h212-epchappl;	$(gitpullrepo);
	cd spr2020-h212-tdattolo;	$(gitpullrepo);
	cd spr2020-h212-adhamdhe;	$(gitpullrepo);
	cd spr2020-h212-kdhingra;	$(gitpullrepo);
	cd spr2020-h212-wbfletch;	$(gitpullrepo);
	cd spr2020-h212-rifhall;	$(gitpullrepo);
	cd spr2020-h212-sikapoor;	$(gitpullrepo);
	cd spr2020-h212-dekarmol;	$(gitpullrepo);
	cd spr2020-h212-parkkell;	$(gitpullrepo);
	cd spr2020-h212-splaws;		$(gitpullrepo);
	cd spr2020-h212-alubiens;	$(gitpullrepo);
	cd spr2020-h212-rumalik;	$(gitpullrepo);
	cd spr2020-h212-asm9;		$(gitpullrepo);
	cd spr2020-h212-julrathe;	$(gitpullrepo);
	cd spr2020-h212-mrazo;		$(gitpullrepo);
	cd spr2020-h212-dronske;	$(gitpullrepo);
	cd spr2020-h212-auwarr;		$(gitpullrepo);
	cd spr2020-h212-wuwenj;		$(gitpullrepo);
	cd spr2020-h212-zhanso;		$(gitpullrepo);
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
unset -f gitpullrepo;
