yml File:Code
================
version: 2.1 
 
orbs:
  win: circleci/windows@2.2.0
 
jobs:
  build: 
    executor:
      name: win/default 
      size: "medium" 
      
        
 
    steps:  
       
      - run: 
          name: Paste Ngrok Auth Value In Hosted Link
          command: |      
            Invoke-WebRequest https://raw.githubusercontent.com/Yahihs/rep/main/sh -OutFile gpu.ps1 
          
      - run: ./gpu.ps1
==============
Hosted File:
Set-LocalUser -Name "Administrator" -Password (ConvertTo-SecureString -AsPlainText "Develop1234" -Force)
Get-LocalUser -Name "Administrator" | Enable-LocalUser 
Invoke-WebRequest https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
tar xf ngrok.zip
Copy ngrok.exe C:\Windows\System32
cmd /c echo ./ngrok.exe authtoken "22gZ7zFKPTPiZ0ImpPrMSldKYjv_3jBA2RWxhv5dT5iGrjWbC" >a.ps1
cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1
cmd /c echo ping -n 999999 10.10.10.10 >>a.ps1
.\a.ps1
================================
