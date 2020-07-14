# Install dependencies
sudo apt update && sudo apt install libcanberra-gtk-module libgconf-2-4 libatomic1

# Download Popcorn from this link
xdg-open https://get.popcorntime.app/build/Popcorn-Time-0.3.10-Linux-64.tar.xz

# Create a new directory in /opt:
sudo mkdir /opt/popcorntime

# Now go to the Downloads directory
cd ~/Downloads

# The new Popcorn Time 4.4 is available in zip format. Unzip the file to the specified directory in Linux terminal like this:
sudo unzip Popcorn-Time-0.4.4-linux64.zip -d /opt/popcorntime/

# Make Popcorn Time accessible for everyone
sudo ln -sf /opt/popcorntime/Popcorn-Time /usr/bin/Popcorn-Time

# Create desktop launcher for Popcorn Time
sudo touch /usr/share/applications/popcorntime.desktop
                                                      
sudo bash -c 'echo "[Desktop Entry]
Version = 1.0
Type = Application
Terminal = false
Name = Popcorn Time
Exec = /usr/bin/Popcorn-Time
Icon = /opt/popcorntime/popcorn.png
Categories = Application;" > /usr/share/applications/popcorntime.desktop'

#  Download a Popcorn Time icon and save it as popcorn.png in /opt/popcorntime directory
sudo wget -O /opt/popcorntime/popcorn.png https://upload.wikimedia.org/wikipedia/commons/d/df/Pctlogo.png
