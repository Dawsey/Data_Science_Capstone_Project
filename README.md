---
output: 
  html_document: 
    keep_md: yes
---

# Coursera Data Science Capstone Project
#### January 2020

### Introduction
This Shiny App forms part of the Data Science Capstone Project to develop a Natural Language Processing (NLP) word prediction tool.
The Word Predictor takes words entered by the user and predicts the next word based on a corpus of documents that includes Twitter feeds, News, and Blogs.

### Data and Processing
The data was made available to students via this link https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip.

The three separate data sets were sampled at 30% of their size and combined using their source (news, twitter, blog) as new document variables.

### The Model
The `quanteda` package was used to process text data. The model was built by sampling the three datasets and combining them into one corpus.
Three n-grams were developed consisting of 2, 3 and 4 grams in the model building. All of which are combined into a list and loaded into this Shiny application.

The four most frequently occurring predicted end words are presented in the action buttons in descending order of frequency.

### Instructions
The app is hosted on rpubs (https://datality.shinyapps.io/Word_Predictor/).

The default sentence can be modified by typing over it, or predictions made by clicking on the relevant Action button.
Do not add a space after the last word - if you do, the predictor will not interpret it.
The text box size can be increased by dragging the handle in the lower right corner.

This repository contains the code for the final project in the Coursera Data Science Specialisation to build a text prediction shiny app.
