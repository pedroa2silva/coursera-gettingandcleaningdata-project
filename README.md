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

1. clone this repository: `git clone git@github.com:maurotrb/getting-cleaning-data-2014-project.git`
2. download [compressed raw data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
3. unzip raw data and copy the directory `UCI HAR Dataset` to the cloned repository root directory
4. open a R console and set the working directory to the repository root (use setwd())
5. source run_analisys.R script (it requires the plyr package): `source('run_analysis.R')`
* If you're running on a Mac machine uncomment the line __download.file(fileUrl,destfile=destFileNameAndPath, method = "curl")__ and comment the previous line __download.file(fileUrl,destfile=destFileNameAndPath)__

In the repository root directory you find the file `tidydata.txt` with the tidy data set.
