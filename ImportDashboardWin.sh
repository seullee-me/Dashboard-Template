#!/bin/bash

# THIS IS FOR DASHBOARD TEMPLATE SHELL SCRIPT FOR WINDOW SERVER

#####################################
#				    #
#  PUT YOUR RESOURCE'S NAME BELOW   #
#  ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓   #				    
#				    #
#####################################



UserAPIkeys="PUT_YOUR_API_KEY"
 
DashboardName="PUT_YOUR_DASHBOARD_NAME"
Hostname1="PUT_YOUR_HOSTNAME1_HERE"
Hostname2="PUT_YOUR_HOSTNAME2_HERE"
ServerName="PUT_YOUR_WIDGETNAME_HERE"
AccountId="PUT_YOUR_CUSTOMER_ACCOUNT_ID"



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






