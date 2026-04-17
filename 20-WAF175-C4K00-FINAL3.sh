# set scf name
SCF=base.scf

# download config from GitHub, copy to bigip1 and load/merge onto bigip1
curl --silent https://raw.githubusercontent.com/learnf5/$COURSE_ID/main/scf/$SCF --output /tmp/$SCF
sudo scp /tmp/$SCF 192.168.1.31:/var/local/scf
sudo ssh 192.168.1.31 tmsh load sys config merge file $SCF

# make a file available to the student
curl https://raw.githubusercontent.com/learnf5/WAF175/refs/heads/main/JSS.yml --remote-name --output-dir ~/Desktop/Lab_Files --create-dirs --silent
