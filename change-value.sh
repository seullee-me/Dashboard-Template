#!/bin/bash


#####################################
#				    #
#  PUT YOUR RESOURCE'S NAME BELOW   #
#  ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓   #				    
#				    #
#####################################
DashboardName="PUT_YOUR_DASHBOARD_NAME"
Hostname1="PUT_YOUR_HOSTNAME1_HERE"
Hostname2="PUT_YOUR_HOSTNAME2_HERE"
WidgetName="PUT_YOUR_WIDGETNAME_HERE"
AccountId="PUT_YOUR_CUSTOMER_ACCOUNT_ID"




# CREATE YOUR DASHBOARD.json file
cp Dashboard-Template.json ${DashboardName}.json



sudo sed -i 's/EBSESOF-001-WEB/'${DashboardName}'/g' ${DashboardName}.json 
sudo sed -i 's/EBSESOF-01-WEB/'${Hostname1}'/g' ${DashboardName}.json 
sudo sed -i 's/EBSESOF-02-WEB/'${Hostname2}'/g' ${DashboardName}.json 
sudo sed -i 's/WEB Server/'${WidgetName}' Server/g' ${DashboardName}.json 
sudo sed -i 's/2589629/'${AccountId}'/g' ${DashboardName}.json 

