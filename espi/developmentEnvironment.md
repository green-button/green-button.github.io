---
layout: page
title: Page/Post Title
---
# Github development with OpenESPI

**OpenESPI is assembled with three distinct projects:**

*    OpenESPI-Common-java – Contains the schema and structure of data and persistence. Includes support for interfaces to these classes.
*    OpenESPI-DataCustodian-java – Contains the controller classes and GUI interfaces for implementing a Data Custodian using the Common library.
*    OpenESPI-ThirdParty-java – Contains the controller classes and GUI interfaces for implementing a ThirdParty using the Common library.


**How to get going:**

1.  Set up your github account and keys
2.  Clone the 3 projects OpenESPI-Common-java, OpenESPI-DataCustodian-java, & OpenESPI-ThirdParty-java on github
3.  Install STS and MySQL and tools or use the VM which has it all prepackaged. For instructions on how the VM was assembled see section HowTo: Construct New VM.
4.  Fetch all the code from github – see section 1.1 Getting Fresh Code Base from GitHub.
5.  Create an STS workspace – see section 1.2 Set up STS.


**To set up GIT repository with your keys**

1.  Setup github keys
1.  If you have already configured your keys:
	>from a local VM terminal copy your keys to the /home/user1/.ssh
	>sudo chmod 600 id_rsa (assumes private key is id_rsa) to set permissions on private key
	>ssh –T git@github.com (to test keys and verify you connect to git securely)
1.  If you have not made keys, Follow procedure defined at Github (start at step Next: Set Up SSH Keys)
Note: You might want to save these keys for use on other computers/platforms if desired
1.  Register yourself on git configurations


	git config --global user.name "Marty Burns"
	git config --global user.email "marty@hypertek.us"
	git config --global github.user MartyBurns


## Getting Fresh Code Base from GitHub

To establish needed MAVEN environmental variable (for normal or sudo shells)

As sudo, edit /etc/environment and add line:

	export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=256m"


To build fresh, remove all files from folder – e.g.:

	cd /home/bitnami/git/energyos
	rm –rf *




### Run following script – no Fork: ###

	mkdir dev
	cd dev
	git clone https://github.com/energyos/OpenESPI-Common-java.git
	git clone https://github.com/energyos/OpenESPI-DataCustodian-java.git
	git clone https://github.com/energyos/OpenESPI-ThirdParty-java.git

### Run following script – based on YourFork: ###

	mkdir dev
	cd dev
	git clone git@github.com:<your fork>/OpenESPI-Common-java.git
	git clone git@github.com:<your fork>/OpenESPI-DataCustodian-java.git
	git clone git@github.com:<your fork>/OpenESPI-ThirdParty-java.git
	cd OpenESPI-Common-java
	git remote add upstream https://github.com/energyos/OpenESPI-Common-java.git
	cd ..
	cd OpenESPI-DataCustodian-java
	git remote add upstream https://github.com/energyos/OpenESPI-DataCustodian-java.git
	cd ..
	cd OpenESPI-ThirdParty-java
	git remote add upstream https://github.com/energyos/OpenESPI-ThirdParty-java.git
	cd ..

### Test that it works:
This command will compile and test for the "dev" profile:

	cd OpenESPI-Common-java
	mvn -P devmysql -Dmaven.test.skip=true -Djetty.skip clean install
	cd ..
	cd OpenESPI-DataCustodian-java
	mvn -P devmysql -Dmaven.test.skip=true -Djetty.skip clean install
	cd ..
	cd OpenESPI-ThirdParty-java
	mvn -P devmysql -Dmaven.test.skip=true -Djetty.skip clean install
	cd ..


Each compile and build should succeed (*note: you must build for Common first as the other projects depend on the jar file produced*).

# Set up STS
Instructions here are for use within the Ubuntu VM. Similar steps would need to be taken in other OSs.

## Create STS workspace

Use this procedure to configure STS once the source code from github in on your development machine:

1. Run STS by clicking icon on desktop
1. When asked,  open workspace in clean directory
1. Turn off tool tips in lower right hand corner when it pops up (unless you love them)
1. Close opening page
1. In project browser on left, right click and select import/Maven/Existing Maven Projects
1. Navigate to the git/energyos folder and select
1. Import all projects into workspace.
1. Select menu projects/Build Automatically and make sure it is unchecked.
1. Select Project/BuildAll


### Run under STS

1. 	Right click on DataCustodian and select Run/Run on Server
1. 	Click next on the dialogue and add ThirdParty to Configured resources
1. 	Click finish
 
### To change the profile being built

There are several profiles in the project. Each one combines different test data, databases, and initialization behavior.

For each project in STS, right click and select properties/maven and put the desired profile name in the “active maven profiles” entry.

Clean and build all projects.

## Building for a specific profile and running it

When building other than the “dev” profile, regression tests should not be run because they are dependent on the profile and various data that is stuffed into the memory database.

### These commands build the projects: ###

	cd OpenESPI-Common-java
	mvn -P <profile> -Dmaven.test.skip=true clean  install
	cd ..
	cd OpenESPI-DataCustodian-java
	mvn -P <profile> -Dmaven.test.skip=true clean  install
	cd ..
	cd OpenESPI-ThirdParty-java
	mvn -P <profile>  -Dmaven.test.skip=true clean  install
	cd ..


### To run DataCustodian: ###

	cd OpenESPI-DataCustodian-java
	mvn -P devmysql -Dmaven.test.skip=true clean tomcat7:run


### To run ThirdParty: ###

	cd OpenESPI-ThirdParty-java
	mvn -P devmysql -Dmaven.test.skip=true clean tomcat7:run


## Setting up remote deploy on build machine

### Create Deployment Profile ###

Use one of the existing profiles or create a new specific one:

        <profile>
            <id>greenbuttondata</id>
            <properties>
                <datacustodian.base.url>http://services.greenbuttondata.org/DataCustodian</datacustodian.base.url>
                <profile>greenbuttondata</profile>
                <database>mysql</database>
                <hbm2ddl_auto>none</hbm2ddl_auto>
            </properties>
        </profile>

### Setting up remote deploy on build machine

Based on VM configuration – may need different settings.xml on other environment:

1.  Make /etc/maven/settings.xml have record (of course with the correct login info)

	<server>
	    <id>TomcatServerDeployment</id>
	    <username>bitnami</username>
	    <password>password</password>
	</server>

2.  Make sure plugin is configured in POM file for each project

            <plugin>
                <groupId>org.apache.tomcat.maven</groupId>
                <artifactId>tomcat7-maven-plugin</artifactId>
                <version>2.0</version>
                <configuration>
                    <path>/DataCustodian</path>
                    <url>http://services.greenbuttondata.org/manager/text</url>
                    <server>TomcatServerDeployment</server>
                </configuration>
            </plugin>

### Build and deploy

This script will download from github, compile, and deploy to a remote tomcat server running the manager app:

	// make sure this path is to your tomcat server to start and stop
	sudo ~/springsource/vfabric-tc-server-developer-2.9.3.RELEASE/base-instance/bin/tcruntime-ctl.sh stop
	
	echo Building for $1 Profile
	cd OpenESPI-Common-java
	mvn -P $1 -Dmaven.test.skip=true -Djetty.skip clean install
	cd ..
	cd OpenESPI-DataCustodian-java
	mvn -P $1 -Dmaven.test.skip=true -Djetty.skip clean install
	cd ..
	cd OpenESPI-ThirdParty-java
	mvn -P $1 -Dmaven.test.skip=true -Djetty.skip clean install
	cd ..
	
	sudo ~/springsource/vfabric-tc-server-developer-2.9.3.RELEASE/base-instance/bin/tcruntime-ctl.sh start
	
	curl --upload-file ./OpenESPI-DataCustodian-java/target/DataCustodian.war "http://radmin:radmin@localhost:8080/manager/text/deploy?path=/DataCustodian&update=true"
	curl --upload-file ./OpenESPI-ThirdParty-java/target/ThirdParty.war "http://radmin:radmin@localhost:8080/manager/text/deploy?path=/ThirdParty&update=true"


## **Creating a new profile for OpenESPI**

1.  Copy the "dev" profile
2.  pasted the copy back in to the pom
3.  changed "dev" -> "devmysql"
4.  removed <activation>…</activation> from devmysql
5.  changed "hsql" -> "mysql"
6.  put the devmysql profile in the project/properties/maven configuration of both DC and TP
7.  build project for DC and TP
8.  validate that mysql and localhost:8080 are being used for both services.


## Pre-populating the database

The development profiles devmysql and greenbuttondata use persistent databases. That is the code does not automatically recreate the databases on each run.

In order to work with these profiles the databases must exist prior to running the programs. The following scripts can be run to create and populate the databases to a known state. See the OpenESPI-Common-java/etc folder for the files discussed in this section. They can all be run in sequence by this script:

1.  create and populate the database tables
		
		// drop/create databases 
		mysql --user=root --password=password < cleandatabases_dc.sql
		mysql --user=root --password=password < cleandatabases_tp.sql
		
		// create tables 
		mysql --user=root --password=password < thirdpartymysql.sql
		mysql --user=root --password=password < datacustodianmysql.sql
		mysql --user=root --password=password < tokenstore.sql
		
		// prepopulate tables 
		mysql --user=root --password=password < prepopulatesql_dc.sql
		mysql --user=root --password=password < prepopulatesql_tp.sql

1.  thirdpartymysql.sql and datacustodianmysql.sql create the database tables
1.  prepopulatesql_dc.sql and prepopulate_tp.sql provide initial table data
1.  There are two sets of reference files for DataCustodian and ThirdParty that are used to prepopulate the database:

	prepopulatesql_users_dc.sql
	prepopulatesql_users_tp.sql
	prepopulatesql_applicationinformation_dc
	prepopulatesql_applicationinformation_tp
	prepopulatesql_tokenstore.sql

1.  There are versions of these files -- specifically the applicationinformation one -- that allow for tailoring of the href links to specific web sites. You can use one of the samples or one of your own. Copy it to the file names above.

1.	You can use the scripts initializedatabases.sh which recreates the database, or, reset.sh that empties the tables and repopulates them.


## intializedatabases.sh

There is a script in OpenESPI-Common-java/etc that can be used to re-initialize the database with destroying the tables. It will delete the database, recreate the tables, reset the autonumbering of records to 0, and prepopulate with the desired data.

## reset.sh

There is a script in OpenESPI-Common-java/etc that can be used to re-initialize the database without destroying the tables. It will delete the table contents, reset the autonumbering of records to 0, and prepopulate with the desired data.
