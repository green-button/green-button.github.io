---
layout: page
title: Page/Post Title
---
# Create the OpenESPI VM

## **Build VM**

The OpenESPI Virtual Machine (VM) is built using the Ubuntu 18.04 LTS Linux distribution running on VMware's Player (6.0.3) application.

**Download Ubuntu 18.04 LTS**

[http://www.ubuntu.com/download/desktop]
(http://www.ubuntu.com/download/desktop
 "http://www.ubuntu.com/download/desktop")

Download the appropriate Ubuntu 14.04 LTS for your computing environment

**Download VMware Player**

[https://my.vmware.com/web/vmware/free#desktop_end_user_computing/vmware_player/6_0]
(https://my.vmware.com/web/vmware/free#desktop_end_user_computing/vmware_player/6_0
 "https://my.vmware.com/web/vmware/free#desktop_end_user_computing/vmware_player/6_0")

Download the appropriate VMware Player for your computing environment

**Create VM Development Environment**  
  
1. Install VMware Player by executing the downloaded file   
1. Start VMware Player Application   
1. Select "Create a New Virtual Machine" option   
1. Select "Installer disc image file (iso): button   
1. Browse to the downloaded Ubuntu 14.04 LTS  file location   
1. Select **Next**   
1. Fill in "Full name:" [optional]   
1. Fill in "User name:" [enter bitnami]   
1. Fill in "Password:"  [enter password]   
1. Fill in "Confirm:"   [enter password]   
1. Select **Next**   
1. Fill in "Virtual Machine Name:" [optional]   
1. Fill in "Location:" [use default value]   
1. Select **Next**   
1. Select **Next**   
1. Select **Customize Hardware** button   
1. Change "Memory for this virtual machine:" to ** -- 4096 MB**   
1. Select **Close**   
1. Select **Finish**  
  
VMware Easy Install will now install the Ubuntu 14.04 LTS operating system.  When the installation is complete Ubuntu 14.04 LTS will be loaded and the Ubuntu graphic sign-on screen will appear.  To sign-on to the system **depress Ctl + g** and **enter your selected password**.

**VMware Tools for Linux - version 9.6.2 Upgrade**

If a Software Update dialogue box appears during the installation process, do the following to upgrade the Windows VMWare Player:   
1. Select **Download and Install**
***
**Add VMWare Tools**

1. From VMWare menus, select reinstall vmware tools
	* Extract into your desktop

1. Open a terminal window in that folder

    sudo apt-get install linux-headers-$(uname -r)   
    sudo ./vmware-install.pl -d   
    rm –rf * to remove folder from desktop
        
1. reboot VM
***
**VM Installation Customization**    
The following section describes several customization steps that need to be performed in order to integrate software packages and tools that are required to complete the development environment.
***
**Add terminal application to Ubuntu Launcher**

	Ctl + Alt  + t opens up terminal
	Right click on terminal in Launcher and select “Lock to Launcher”
***
**Install VMWare Tools**

1. Select **Player** on VMware Player Command Bar   
1. Highlight **Manage** on Menu   
1. Select **Reinstall VMware Tools...**   
1. Extract to contents of VMwareTools-9.6.2-1688356.tar.gz to the Desktop   
1. Open a terminal window    

        cd Desktop/vmware-tools-distrib        
        sudo ./vmware-install.pl -d        
        cd ..        
        rm –rf * [remove extracted folder from desktop]            

1. reboot VM    
  
***
**Update apt-get Repositories**

Before starting to customize your VM installation, update your apt-get repositories with the following command:

	sudo apt-get update

***

**Install Java 7 SDK Runtime**

To install the Java 7 SDK enter the following commands:    

	sudo apt-get install openjdk-7-jdk    
	export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64    
	export PATH=$PATH:/usr/lib/jvm/java-1.7.0-openjdk-amd64/bin       

To make the above export commands persistent, enter the following command:    

	gedit .bashrc    

At the bottom of the file enter:    

	export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-amd64    
	export PATH=$PATH:/usr/lib/jvm/java-1.7.0-openjdk-amd64/bin    

1. Hover the cursor over the **Save** icon
1. Click the **left mouse button**

***
**Install MySQL Server**

To install MySQL Server enter the following commands:    

	sudo apt-get install mysql-server    

During the installation process a dialogue appears:    

1. Fill in **New password for the MySQL "root" user:** [enter bitnami]    
1. Depress the **Enter** key    
1. Fill in **Repeat password for the MySQL "root" user:** [enter bitnami]       
1. Depress the **Enter** key    

***
**Install MySQL Workbench**

1. Open Ubuntu Software Center    
1. Search mysql workbench    
1. Select **MySQL Workbench** item    
1. Select **Install**  
1. Enter appropriate user **Password:**   

***     
**Configure MySQL Workbench**

The following instructions create the Data Custodian database:        

1. Select **MySQL Workbench** on Ubuntu Launcher    
1. Select **Plus Sign** next to **MySQL Connections** on MySQL Workbench Desktop    
1. Enter “datacustodian” in **Connection Name:**    
1. Select **OK**    

The following instructions create the Third Party database:     

1. Select **Plus Sign** next to **MySQL Connections** on MySQL Workbench Desktop    
1. Enter “thirdparty” in **Connection Name:**    
1. Select **OK**    

The following instructions create the OAuth2 Token Store database:     

1. Select **Plus Sign** next to **MySQL Connections** on MySQL Workbench Desktop    
1. Enter “tokenstore” in **Connection Name:**    
1. Select **OK**    

**TODO**: Need to complete this procedure after STS is installed and determine how to start the MySQL Server    
1. Test Connection: root:bitnami    
1. Create new schema “datacustodian”    

***
**Install Spring STS 3.6.0.RELEASE**

1. Select the Firefox icon on the Ubuntu Launcher    
1. Enter **https://spring.io/tools/sts/all** into the address bar of the browser    
1. Press the keyboard **ENTER** key    
1. Scroll the cursor over **Based on Eclipse 4.4** beneath the **Linux** icon    
1. Click the left mouse button    
1. Scroll the cursor over **tar.gz** beneath the **GTK,64BIT** column title    
1. Click the left mouse button    
1. Select the **Save File** button when the dialogue box appears    
1. Open the Downloads folder    
1. Open the **spring-tool-suite-3.6.0.RELEASE-e4.4-linux-gtk-x86_64.tar.gz** file    
1. Click the Extract icon at the top of the window    
1. Navigate to the **bitnami** directory    
1. Select the **Create Folder** button    
1. Enter **Spring** as the name of the folder    
1. Select the **Extract** button    
1. Select the **Close** button when the extraction completes  

The following command creates a symbolic link on the Desktop to simplify starting the STS application:    

	cd Desktop    
	ln -s /home/bitnami/Spring/sts-bundle/sts-3.6.0.RELEASE/STS STS-3.6.0.RELEASE    

**TODO**: Verify the following steps are necessary    
1. Need to add this library to get STS working properly (internal web browser)    
1. sudo apt-get install libwebkitgtk-1.0-0    

**Add open in terminal (allows browse folder and open terminal window**    

1. sudo apt-get install nautilus-open-terminal   
 
**Install Git**

1. Select **Ubuntu Software Center** on **Ubuntu Launcher**    
1. Enter **git** in the search field    
1. Select the **Fast, scalable, distributed revision control system** entry    
1. Select the **Install** button 

***
**Install Gitk**

1. Select **Ubuntu Software Center** on **Ubuntu Launcher**    
1. Enter **gitk** in the search field    
1. Select the **Fast, scalable, distributed revision control system (revision tree visualizer)** entry    
1. Select the **Install** button    

***
**Install Maven**

1. Select **Ubuntu Software Center** on **Ubuntu Launcher**    
1. Enter **maven** in the search field    
1. Select the **Java software project management and comprehension tool** entry    
1. Select the **Install** button    

***
**Install Wireshark**

1. Select **Ubuntu Software Center** on **Ubuntu Launcher**    
1. Enter **wireshark** in the search field    
1. Select the **Wireshark** entry    
1. Select the **Install** button    

***
**Configure Wireshark**

Enter the following commands to configure Wireshark for non-root user access:

	sudo groupadd wireshark        
	sudo usermod -a -G wireshark $USER        
	sudo chgrp wireshark /usr/bin/dumpcap        
	sudo chmod 755 /usr/bin/dumpcap    
	sudo setcap cap_net_raw,cap_net_admin=eip /usr/bin/dumpcap        

***
**Install curl**
Enter the following command to install curl:

    sudo apt-get install nautilus-open-terminal
    
**Install SOAPUI**
We are currently using SOAPUI 5.1.3: Download **SOAPUI 5.1.3**

[SOAPUI 5.1.3 Linux Download](http://cdn01.downloads.smartbear.com/soapui/5.1.3/SoapUI-x64-5.1.3.sh) 
1. Select the **Save File** button when the download dialogue appears    
1. Navigate to the **Downloads** folder    
1. Hover over the **SoapUI-x64-x.x.x.sh** file and click the right mouse button    
1. Select the **Properties** menu item    
1. Click on the Permissions tab    
1. Click on the **Allow executing file as program** box at the bottom of the display   
1. Select the **Close** button     
1. Open a terminal window     
1. Enter the following command:

        ./home/bitnami/Downloads/SoapUI-x64-5.x.x.sh    

1. Select the **Next** button when the **Setup Wizard** dialogue appears     
1. Select the **I accept the agreement** button     
1. Select the **Next** button     
1. Select the **Next** button    
1. Select the **Next** button    
1. Select the **Next** button    
1. Select the **I accept the agreement** button    
1. Select the **Next** button    
1. Select the **Next** button    
1. Select the **Next** button    
1. Select the **Next** button    
1. Select the **Finish** button    
1. Right click on **SoapUI** in **Launcher** and select “**Lock to Launcher**”    

***
**Install external jar files into SOAPUI**

1. Fetch from GitHub the files in https://github.com/energyos/OpenESPI-GreenButtonCMDTest/tree/master/SOAPUI/projectDependencies
2. Place all jar files in the {SOAPUI Install Directory}/bin/ext -- note that some files are in the zip file and should be extracted so there is a flat list of jars in the ext folder.
***

**Update Installed Software Packages**    

1. Select **Software Updater** on **Ubuntu Launcher**
1. Select **Install Now** button in dialogue that appears    

***
**To shrink VM before zip and exchange**

Use this procedure to shrink the VM for exchange

	cd /usr/bin
	sudo ./vmware-toolbox-cmd disk shrinkonly

when it finishes, shutdown, zip up folder

***

### Install Stunnel
[Follow instructions](https://github.com/energyos/OpenESPI-GreenButtonCMDTest/blob/master/SetUpStunnelProxy.md)

***

###Install sftp-server

**To install the ssh server functionality:**

	sudo apt-get install openssh-server

**To start / stop server**

	sudo start ssh
	sudo stop ssh

**Create sftp file repository**

1. add user openespivmssh, no password

1. create a working directory

1. You must add acceptable certificates to this authorized_keys file if they are to be able to connect

.

	cd /home/openespivmssh
	mkdir .ssh
	chmod 700 .ssh
	cd .ssh
	touch authorized_keys
	chmod 600 authorized_keys
	cp /etc/stunnel/openespi.pem /home/openespivmssh/authorized_keys


**Restart ssh server**


	sudo restart ssh


**Test** 

	ssh openespivmssh@openespivm 
	ls
	exit

* This should result in a directory listing of what is in /home/openespivmssh



***

**Give VM host name over the network**

	sudo gedit /etc/hostname
	enter: openespivm
	save and exit
	sudo gedit /etc/hosts
	add entry:
		127.0.1.1	openespivm
	save and exit
	retboot

