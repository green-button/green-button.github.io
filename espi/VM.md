---
layout: page
title: Page/Post Title
---

The OpenESPI Development Virtual Machine is a Linux Ubuntu desktop environment that may be used to jumpstart your OpenESPI development efforts. 

The following instructions should be followed to configure the Spring Tool Suite development IDE

#Download the VM and VMware Player

You will need to download and install VMware Player or Fusion to run the virtual machine on your PC.

* VM Ware Player for Linux and Windows:	[http://www.vmware.com/products/player/overview.html](http://www.vmware.com/products/player/overview.html)

* VM Ware Fusion for Mac OSx: [http://www.vmware.com/products/fusion/overview.html](http://www.vmware.com/products/fusion/overview.html)

Next, download the virual machine: [http://openespi.s3-website-us-east-1.amazonaws.com/virtualmachines/OpenESPI-Greenbutton-javaVM.zip](http://openespi.s3-website-us-east-1.amazonaws.com/virtualmachines/OpenESPI-Greenbutton-javaVM.zip)


#VM Configuration Instructions

<ol>
<li>NOTE: The Virtual Machine is downloaded as a compressed file. On Windows 7, we have noticed that WinZip is required to de-compress the VM folder!
</ol>
<li>When asked if VM was "copied" or "moved", select "copied"</li>
<li>login as <b>bitnami</b> (the default but will say "Authorized User" in menu) with password: <b>password</b>
<hr />
<li>setup github keys</li>
<ol>
<li>If you have already configured your keys:</li>
<ol>
<li>from a local VM terminal:</li>
<ol>
<li>copy your keys to the /home/bitnami/.ssh </li>
<li><b>sudo chmod 600 id_rsa</b> (assumes private key is id_rsa) to set permissions on private key</li>
<li><b>ssh –T git@github.com</b> (to test keys and verify you connect to git securely)</li>
</ol>
</ol>
<li>If you have not made keys, Follow procedure defined at <a href="http://help.github.com/linux-set-up-git/">Github</a> (start at step Next: Set Up SSH Keys)</li>
<li>Note: You might want to save these keys for use on other computers/platforms if desired</li>
</ol>
<ol>
<li>Use firefox and go to: https://github.com/</li>
<li>login to GitHub using your github.com credentials {<b><i>gitUserName</i></b> : <b><i>pw</i></b>}</li>
<li>navigate to the https://github.com/energyos/OpenESPI repository</li>
<li>On GitHub, <b>fork</b> the master branch of the OpenESPI repository</li>
</ol>
<li>Now Configure your local git repository: from a local VM Terminal, do git commands to configure the git workspace</li>
<ol>
<li><b>git config --global user.name "Firstname Lastname"</b></li>
<li><b>git config --global user.email "your_email@youremail.com"</b></li>
<li><b>git config --global github.user {<i>gitUserName</i>}</b></li>
</ol>
<ol>
<h2>Run STS</h2>
<li>Run STS from VM shortcut in home/desktop folder (choose Workspace OpenESPIWorkspace)</li>
<li>When you first start your development, you should pull the current repository versions down to your VM. This is easily accomplished by:
<ol>
<li>Right-Click on the repository.</li>
<li>select "Team/Pull" to get the current repository changes
<li>accepting all of the changes
<li>and doing a Clean/Build of the updated repository.</li>
</ol>
At this point you should be able to run the current versions of DataCustodian and ThirdParty. Right-click on DataCustodian or ThirdParty projects and select Run/Run on Server.


