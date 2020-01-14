---
output: 
  html_document: 
    keep_md: yes
---

# Coursera Data Science Capstone Project
#### January 2020

### Introduction
This Shiny app forms part of the Data Science Capstone Project to develop a Natural Language Processing (NLP) word prediction tool.
The Word Predictor takes words entered by the user and predicts the next word based on a corpus of documents that includes Twitter feeds, News, and Blogs.

### Data and Processing
The data was made available to students via this link https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip.

The three separate data sets were sampled at 30% of their size and combined using their source (news, twitter, blog) as new document variables.

### The Model
The `quanteda` package was used to process text data. The model was built by sampling the three data sets and combining them into one corpus.
Three n-grams were developed consisting of 2, 3 and 4 grams in the model building. All of which are combined into a list and loaded into this Shiny application.

The four most frequently occurring predicted end words are presented in the action buttons in descending order of frequency.

### Shiny Word Prediction App
The app is hosted on r pubs (https://datality.shinyapps.io/Word_Predictor).

The app calls the `word_predictor.R` function which takes the user entered words and compares them to the n-grams in the model. The most frequently matching end words are presented to the user via reactive Action buttons. Each of the four buttons reactively update as the user types words in the text box.

When the user selects the predicted word from the buttons, this word is then added to the text box and a new prediction is made.

The intention is to provide similar functionality as a smart phone.

#### Instructions
The default sentence can be modified by typing over it, or predictions made by clicking on the relevant Action button.
Do not add a space after the last word - if you do, the predictor will not interpret it.
The text box size can be increased by dragging the handle in the lower right corner.

### Code
All of the code for the final project in the Coursera Data Science Specialisation can be found on my Github repo https://github.com/Dawsey/Data_Science_Capstone_Project.
