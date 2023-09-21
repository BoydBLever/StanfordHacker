# StanfordHacker ReadMe

## Description

### What is the StanfordHacker project?

The StanfordHacker project was born from my desire to provide a seamless experience for travelers heading to Silicon Valley to rent a bed at my residence - which is known as Stanford Hacker House since it is located across the street from Stanford University and is marketed towards other software engineers and hackers - for about $1000 on a month-to-month basis. Though I have an existing WordPress site for Stanford Hacker House at [stanfordhacker.com](http://stanfordhacker.com), my WordPress proficiency is not high enough to handle the integration of advanced functionalities, such as the payment portal I envisioned and that I knew guests wanted to use.

Recognizing these challenges, I decided to leverage my advanced Java programming prowess in the StanfordHacker project. The result? A full-stack Spring Boot application offering a rich user experience. Some highlights include an interactive carousel showcasing the amenities available and a sophisticated payment gateway allowing guests to effortlessly reserve their spots.

## Setup and Installation 
### Step 1: Check Java Version

Run this Terminal Command:    
`
java -version
`  

Expected output:  

`
java version "19.0.1" 2022-10-18
Java(TM) SE Runtime Environment (build 19.0.1+10-21)
Java HotSpot(TM) 64-Bit Server VM (build 19.0.1+10-21, mixed mode, sharing)
`

If Java is not installed on your machine, then visit Java's download page and select your operating system and proceed to download the package.

### Step 2: Check for Build Tool
Maven is a software tool that helps you manage Java projects and automate application builds. Check if you already have Maven installed by running this command:
`
mvn -v
`

Expected output:

`
Apache Maven 3.9.4 (dfbb324ad4a7c8fb0bf182e6d91b0ae20e3d2dd9)
Maven home: /opt/homebrew/Cellar/maven/3.9.4/libexec
Java version: 20.0.2, vendor: Homebrew, runtime: /opt/homebrew/Cellar/openjdk/20.0.2/libexec/openjdk.jdk/Contents/Home
Default locale: en_US, platform encoding: UTF-8
OS name: "mac os x", version: "13.5.1", arch: "aarch64", family: "mac"
`

If you do not have Maven installed, visit the documentation for instructions on how to install this essential tool.

After confirming that Maven is installed on your machine, run these terminal commands:

```
mvn clean install
mvn spring-boot:run
```


The first command cleans any previous build, installs the dependencies, and compiles the project. This command compiles the source code, runs tests, packages the compiled code into a JAR file, and then installs that JAR into your local Maven repository. The second command starts the Spring Boot application. Using `mvn clean install` ensures a completely fresh build which is nice to have if you plan on making a lot of edits to the codebase.

### Step 3: Visit StanfordHacker

Open your browser and navigate to http://localhost:8080. View the pictures in the carousel, watch the introductory video, and make a booking.

## File Structure

I built the StanfordHacker project with a modern, decoupled architecture. I used Spring Boot for the backend and a separate frontend application, which integrates with Square's Web Payments SDK. The Spring Boot backend and primary landing page for StanfordHacker are hosted on localhost:8080, and the user interface for collecting credit card information, and making payments, is hosted on localhost:3000.

Java applications can be built using several different file structures. The one that I used for StanfordHacker follows the model - view - controller (MVC) pattern. The model represents the data and the business logic of the application. The view defines the user interface of the application. This is a full-stack web application. The controllers and models constitute the backend. The view is the user interface. While Spring Boot supports several templating engines, such as Thymeleaf, FreeMarker, and Mustache, I used custom CSS, images, and a video that I recorded myself to define the frontend. These files are located in the src -> main -> resources -> static folder.

## Quickstart for using Square's Web Payments SDK

There is a separate code repository and README.md file for the Square Payments API that I successfully integrated into this project. You may find it at this link: [[Square's Web Payment's SDK]](https://github.com/BoydBLever/web-payments-quickstart2).
