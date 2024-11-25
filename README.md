# Connect API using oAuth 

1. First create CAP Nodejs application for 1 entity 
2. create destination instance in SAP BTP Account
3. create xsuaa instance in SAP BTP account {xsuaa uses oAuth2 : ClientID + secret}
4. create standalone approuter to create proxy entry for node service
5. create mta and bind destination and xsuaa with node service module
6. deploy the service only to cf
7. Now we have secured service deployed on CF BTP

8. now create destination instance in connectivity section of your trial account
9. provide all the detail and choose oAuthClientCredentials option for authorization and add token service url correctly
10. login to CF, check oAuth token and list apps
11. try using curl / postman command to access that destination
12. Now use that destination using cloud-sdk and get the data
