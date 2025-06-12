# download config form GitHub, copy to bigip1 and merge/load it onto bigip1
curl --silent https://raw.githubusercontent.com/learnf5/$COURSE_ID/main/scf/guided-config.scf --output /tmp/guided-config.scf
sudo scp /tmp/guided-config.scf 192.168.1.31:/var/local/scf
sudo ssh 192.168.1.31 tmsh load sys config merge file guided-config.scf

# download attack scripts and iRules; move to Lab_Files; clean up
cd /tmp
git clone https://github.com/learnf5/waf.git attacks
git clone https://github.com/learnf5/waf.git iRules
mv /tmp/attacks/attacks /home/student/Desktop/Lab_Files
cp --recursive /tmp/iRules/iRules/. /home/student/Desktop/Lab_Files
rm --recursive --force /attacks /home/student/Desktop/Lab_Files/harvest_readme.md /iRules
chmod +x /home/student/Desktop/Lab_Files/*.sh
