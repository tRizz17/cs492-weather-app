# Tom's Weather App

Welcome to Tom's weather app! This is a mobile weather app written in Flutter/Dart that was created over the course of a term. As the basis for writing this application was for a school project, all of the code in the application was hand-written rather than generated via LLM. 

## Highlights

Here are some of the main features of this app:

- Location-based forecast through manual entry
- Location-based forecast through current GPS coordinates
- 7-day day/night forecasts
- Detailed forecast for each day within forecast range
- Dynamic color theme based on current day's forecast

## Overview

This app allow users to select a location either through manual entry of a city/town in the USA or through GPS coordinates of a user's current location and get a forecast for that location. The forecast includes day/night forecast through 7 days as well as a detailed forecast for each day.


### Navigation
From a user's perspective, there are two main pages, the Location page and the Forecasts page. Navigating between pages is accomplished either through swiping or clicking the icon tab in the app bar.

### Location Page
A location can be selected on the Location page through the text-input field or the GPS button, and all locations are saved in a SQlite database and displayed on the Location page. 

Multiple locations can be saved and displayed and users can also delete stored locations. When a location is selected or active, the currently selected location is shown underneath the location input area. 

### Forecast Page
The Forecast page has two main areas: The top of the page shows a horizontally-scrolling list of tiles that each display a succinct view of day/night forecasts through the 7-day forecast range. Each tile contains what day/night the forecast is for, an SVG icon corresponding to the forecast, the temperature, and a short summarized forecast. Below the forecast-tile row there is a detailed forecast. Clicking on any forecast tile will display that tile's detailed forecast which includes a more verbose description of the forecast along with a backdrop image dynamically obtained from Pexels that corresponds to the forecast.

### Drawer
Additionally, there is a drawer that can be accessed via clicking on the hamburger menu in the top-right of the app bar. This will disclose a drawer that contains a dark mode switch. The dark mode setting will persist across user sessions. 

### Color Theme
Theme-wise, the app uses the current forecast of the current location to update the global color theme of the app. For instance, if the temperature is above 100, the app bar will be bright orange. If the temperature is at the freezing point or below, the app bar will be a frosty blue. There are additional colors for temperatures in-between. 


# Deployment Instructions

## Step 1: Ensure Flutter is installed on your machine

Before you begin, make sure that you have the Flutter installed on your machine. Refer to the official Flutter documentation and follow their steps here --> https://docs.flutter.dev/install

## Step 2: Log in to GitHub

Before you begin, make sure you are logged in to your GitHub account. If you don't have a GitHub account yet, [create one here](https://github.com/join).

## Step 3: Fork the Repository

1. Go to the main repository URL:  
   [https://github.com/tRizz17/cs492-weather-app](https://github.com/tRizz17/cs492-weather-app.git)

2. In the top-right corner, click the **Fork** button to create a copy of the repository under your own GitHub account.  
   - This will create a forked version of the repository that you can modify without affecting the original repository.

## Step 4: Clone Your Fork to Your Local Machine

1. **Navigate to a directory** on your local machine where you want to store the repository. You can use the terminal to move to that directory. For example:
   ```bash
   cd ~/Documents/Projects
   ```

2. **Clone the repository**
  ```bash
  git clone https://github.com/YOUR_USERNAME/cs492-weather-app.git  
  ```

**replace with your own user name**

3. **Navigate to the new repository**
  ```bash
   cd cs492-weather-app
  ```


