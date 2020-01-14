---
output: 
  html_document: 
    keep_md: yes
---

# Coursera Data Science Capstone Project

This Shiny App forms part of the Data Science Capstone Project to develop a Natural Language Processing (NLP) word prediction tool.
The Word Predictor takes words entered by the user and predicts the next word based on a corpus of documents such as Twitter feeds, News, and Blogs.

### The Model
The `quanteda` package was used to process text data. The model was built by sampling the three datasets and combining them into one corpus.
Three n-grams were developed consisting of 2, 3 and 4 grams in the model building. All of which are combined into a list and loaded into this Shiny application.
The four most frequently occurring end words are presented in the Action buttons in descending order of frequency.

### Instructions
The app is hosted on rpubs (https://datality.shinyapps.io/Word_Predictor/).

The default sentence can be modified by typing over it, or predictions made by clicking on the relevant Action button.
Do not add a space after the last word - if you do, the predictor will not interpret it.
The text box size can be increased by dragging the handle in the lower right corner.

This repository contains the code for the final project in the Coursera Data Science Specialisation to build a text prediction shiny app
