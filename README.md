<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

Reloadly is a wrapper library for Reloadly that helps Send airtime online with a simple integration

## Features

Getting reloadly token
Getting reloadly balance
More methods in next update

## Getting started

Depends on dio :4.0.0

## Usage

## Installing
Add reloadly to your pubspec.yaml file:

reloadly: 1.0.0

Import reloadly  in files that it will be used:

import 'package:reloadly/reloadly.dart'; 

## Get token
var reloadly = Reloadly();
<!-- To get token use this method
Takes a client_id and client_secret
-->
String token = await reloadly.getToken('YOUR_CLIENT_ID_HERE','client_secret');

## Get balance
var reloadly = Reloadly();
<!-- To get balance use this method.
The method takes the token received from the above method
-->
String balance= await reloadly.getBalance(token);


## How to Contribute
Want to contribute to the project? We will be proud to highlight you as one of our collaborators. Here are some points where you can contribute and make Get (and Flutter) even better.

Helping to translate the readme into other languages.
Adding documentation to the readme.
Write articles or make videos teaching how to use reloadly (they will be inserted in the Readme and in the future in our Wiki).
Offering PRs for code/tests.
Including new functions.
Any contribution is welcome!.
