# set scf name
SCF=uservices.scf

# download config from GitHub, copy to bigip1 and load/merge onto bigip1
curl --silent https://raw.githubusercontent.com/learnf5/$COURSE_ID/main/scf/$SCF --output /tmp/$SCF
sudo scp /tmp/$SCF 192.168.1.31:/var/local/scf
sudo ssh 192.168.1.31 tmsh load sys config merge file $SCF

# download attacks and iRules, move/copy files to the Lab_Files folder and clean up
cd /tmp
git clone https://github.com/learnf5/WAF175.git attacks
git clone https://github.com/learnf5/WAF175.git iRules
mv /tmp/attacks/attacks /home/student/Desktop/Lab_Files
cp --recursive /tmp/iRules/iRules/. /home/student/Desktop/Lab_Files
rm --recursive --force /tmp/attacks /tmp/iRules /home/student/Desktop/Lab_Files/harvest_readme.md 
chmod +x /home/student/Desktop/Lab_Files/*.shA
