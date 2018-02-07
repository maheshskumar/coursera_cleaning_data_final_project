---
title: "README.md"
author: "Mahesh Kumar"
date: "2/6/2018"
output: html_document
---


## Getting & Cleaning Data - Final Course Project/Assignment

This document describes the main steps in cleaning and processing data from the UCI Human Activity Recognition dataset.


## Main Steps

1. Map out the variables into specific tables (This is a manual step after examining the raw data)
2. Load the data labels
3. Load the test data & filter the test data to only retain columns that relate to metrics mean and standard deviation
4. Combine subject, activitycode and metrics into a testdata.
5. Repeat the process for training data
6. Bind test and training data into one dataset
7. Melt the data
8. Dcast the data to derive summarized metrics by Subject, Activty and Average metrics.
