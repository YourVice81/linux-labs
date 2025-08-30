________________________________________
🧭 Session Journal — August 30, 2025
🧪 Focus
Scaffold Lab 2: Networking Tools and Diagnostics in the linux-labs GitHub repository using WSL on Windows.
________________________________________
🔧 Issues Encountered & Resolutions
1. Missing Project Directory
•	Issue: cd ~/projects/linux-labs returned “No such file or directory.”
•	Resolution: Created the directory manually using mkdir -p ~/projects/linux-labs.
2. GitHub SSH Authentication Failure
•	Issue: git clone failed with “Please make sure you have the correct access rights.”
•	Resolution: 
o	Generated a new SSH key with ssh-keygen -t ed25519
o	Added the public key to GitHub under SSH settings
o	Verified connection with ssh -T git@github.com
3. Network Unreachable on Port 22
•	Issue: git push failed with “ssh: connect to host github.com port 22: Network is unreachable.”
•	Resolution: Switched to GitHub’s alternate SSH port (443) using: 
•	git remote set-url origin ssh://git@ssh.github.com:443/YourVice81/linux-labs.git
4. DNS Resolution Failure in WSL
•	Issue: ping github.com and apt update failed with “Temporary failure in name resolution.”
•	Resolution: 
o	Disabled auto-DNS generation via .wslconfig
o	Manually set /etc/resolv.conf with Google and Cloudflare DNS
o	Locked the file with chattr +i to prevent overwrites
o	Restarted WSL with wsl --shutdown
5. Git Identity Not Set
•	Issue: Git prompted to set default identity.
•	Resolution: Configured global identity with: 
•	git config --global user.name "Victor Yurtola"
•	git config --global user.email "YouVice81@github.com"
6. Not Inside a Git Repo
•	Issue: “fatal: not a git repository” when running Git commands.
•	Resolution: Navigated to correct directory and confirmed .git presence.
________________________________________
✅ Achievements
•	SSH key securely configured and tested
•	DNS resolution restored inside WSL
•	GitHub remote set to alternate SSH port for reliable access
•	Lab 2 folder scaffolded with OBJECTIVES.md and exercise1.md
•	First exercise built around ip a output and interface diagnostics
•	Branch lab2-networking created, committed, and pushed successfully
________________________________________
🧠 Reflections
•	Troubleshooting is part of the craft—each issue deepened understanding of WSL, Git, and network behavior.
•	DNS and SSH setup are foundational for any DevOps workflow; documenting these steps will help others.
•	The process reinforced the value of methodical problem-solving and clean environment setup.
________________________________________
🧼 Next Steps
•	Scaffold Exercise 2: ping diagnostics and latency interpretation
•	Add lab roadmap to README for easier navigation
•	Create a reusable session closeout checklist (SESSION-CLOSE.md)
•	Consider scripting environment setup for future labs
________________________________________

