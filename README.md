*Course Project for the  
*Getting and Cleaning Data Course 
*by the John Hopkins University
*on Coursera
*by Nicolas E. Kuzminski
*Created on 2018-10-25

The purpose of this project was to demonstrate my ability to collect, work with, and clean a data set. The goal was to prepare tidy data that can be used for later analysis. 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article: 
http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). 

Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the input data for this project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


On this GitHub repository, I published the material I created for this project, described below:
https://github.com/nicokuz/Getting-and-Cleaning-Data-Course-Project

- 'README.md': This file.

- 'run_analysis.R': The R script file that produces the tidy data set.

- 'CodeBook.md': Description of the tidy summarized dataset produced by the script.


Summary of the logic automatized by the script, which the source itself is documented with descriptive comments.

1. Downloading and decompression (unziping) of the source raw data files. 
2. Load the reference list of possible activities and features, each one from its corresponding file.
3. Load  training and test datasets, each conformed by three files containing matching rows for: subject, activity, features.
4. Merge all the six datasets, binding corresponding columns, and appending rows for train and test datasets.
5. Some tidy up of the column names, factor de activity values, the origin values, etc.
6. From the full detailed tidy dataset, it outputs a summarized one, aggregated by activity and subject (with train/test origin as an extra attribute), along with the means of each of the original mean/std features measured.  
