Getting and Cleaning Data Course Project
========================================

Project of [Getting and Cleaning Data course on Coursera](https://www.coursera.org/course/getdata) - September 2015.

## Project Description
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers
on a series of yes/no questions related to the project.

You will be required to submit:

1. a tidy data set as described below
2. a link to a Github repository with your script for performing the analysis, and
3. a code book that describes the variables, the data, and any transformations or
   work that you performed to clean up the data called CodeBook.md. You should also
   include a README.md in the repo with your scripts. This file explains how all
   of the scripts work and how they are connected. 


## What you find in this repository

* __CodeBook.md__: information about raw and tidy data set and elaboration made to
  transform them
* __LICENSE__: license terms for text and code
* __README.md__: this file
* __run_analysis.R__: R script to transform raw data set in a tidy one

## How to create the tidy data set

1. clone this repository: `git clone https://github.com/pedroa2silva/coursera-gettingandcleaningdata-project.git`
2. open a R console and set the working directory to the repository root (use setwd())
3. source run_analisys.R script (it requires the plyr package): `source('run_analysis.R')`. The code will download the file to a data folder under the working directory you selected.
   Note: If you're running on a Mac machine uncomment the line __download.file(fileUrl,destfile=destFileNameAndPath, method = "curl")__ and comment the previous line __download.file(fileUrl,destfile=destFileNameAndPath)__

When the code finishes running you will find in the repository root directory the file `tidydata.txt` with the tidy data set.
