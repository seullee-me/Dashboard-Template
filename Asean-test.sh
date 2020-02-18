#!/bin/bash

# THIS IS FOR DASHBOARD TEMPLATE SHELL SCRIPT FOR WINDOW SERVER

#####################################
#				    #
#  PUT YOUR RESOURCE'S NAME BELOW   #
#  ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓   #				    
#				    #
#####################################



UserAPIkeys=""
 
DashboardName="ASEAN-001-APP"
Hostname1="asean-app01"
Hostname2="asean-app02"
ServerName="APP"
AccountId="2544268"



# CREATE YOUR DASHBOARD.json file
cp Dashboard-Template-Win.json ${DashboardName}.json



sudo sed -i 's/EBSESOF-001-WEB/'${DashboardName}'/g' ${DashboardName}.json 
sudo sed -i 's/ESOF-PROD2-WEB01/'${Hostname1}'/g' ${DashboardName}.json 
sudo sed -i 's/ESOF-PROD2-WEB02/'${Hostname2}'/g' ${DashboardName}.json 
sudo sed -i 's/WEB Server/'${ServerName}' Server/g' ${DashboardName}.json 
sudo sed -i 's/2589629/'${AccountId}'/g' ${DashboardName}.json 

# CHANGE TO EXECUTABLE FILES BECAUSE OF GIT
sudo chmod 777 import-dashboards
sudo chmod 777 export-dashboards

# IMPORT DASHBOARDS TO CUSTOMER'S ACCOUNT 
./import-dashboards -apikey ${UserAPIkeys} -defn ${DashboardName}.json

