# Sample C# Project For ExpertTexting API
This is a documentation file for the sample C# project for ExpertTexting API. In this project, you get to know how to use ExpertTexting API in C#.

By using this sample project, users will be able to make calls programmatically in C# language through ET's API

## Description
This project contains visual studio web application solution. In the solution, there is a webform (.aspx file) by the name of `ExpertTextingApiSample.aspx` 

This page consists of multiple textboxes to take input from user (for API parameters) and three buttons which perform the following functions:

1. Query Account Balance    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// This button is used to query user account balance.
2. Send SMS            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// This button is used to send text sms.
3. Send Unicode SMS      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// This button is used to send unicode sms.

  
## Usage
You do not need to edit any files for running this project. Just simply view the `ExpertTextingApiSample.aspx` page in browser and enter all the required details in the respective textboxes and press your desired button. Result will be displayed on the bottom of the screen. 

## Tutorial : Adding ET API's Web Reference In Your Project
First you need to know the ExpertTexting API's base URL, which is 
`https://www.experttexting.com/exptapi/exptsms.asmx`

Now to add web reference to your own project, kindly follow the below steps: 

1. In Solution Explorer, right-click the name of the project that you want to add the service to, and then click Add Service Reference. The Add Service Reference dialog box appears.
2. In the Add Service Reference dialog box, click the Advanced button. The Service Reference Settings dialog box appears.
3. In the Service Reference Settings dialog box, click Add Web Reference. The Add Web Reference dialog box appears.
4. In Add Web Reference dialog box, add ExpertTexting base URL (mentioned above) and click the "GO" button (arrow button) next to it.
5. After the base URL is loaded, choose a suitable name for the API or leave it as default. Now click "Add Reference" button.

That is it. You have successfully added ExpertTexting API in your project. Now once added, you can use code from API document available here:

`http://www.experttexting.com/_assets/docs/Exetel_SMS_API_docv1.pdf`

## Screenshot
Below is the screenshot of `ExpertTextingApiSample.aspx` webpage

![Alt text](http://s21.postimg.org/eok48h4nb/2015_08_26_15_51_57.png "ExpertTexting WebApi C# Sample ScreenShot")
