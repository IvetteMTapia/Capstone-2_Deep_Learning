# Deep Learning Model for Hospitalization Data

This repository contains documentation and code related to building a recomendation system for the Million Song Dataset using the song data and user listen data.

**Project Motivation**

The Great Music Service company has a 1M catalog of songs available to their users for listening. Given the large catalog of songs, no one user can be reasonably expected to go through all the content and choose what they want to listen to.

The Great Music Service conducted with survey of their active users found that: (1) users are not aware of all the music available, (2) the catalog is too big and is hard to choose what to listen to, (3) they do not always know what they are looking for, and (4) they often use the music service as a song discovery tool in which they are explicitly interested in listening to new things.

The goal was to build a 'test' or 'preliminary' recomendation algorithm given the available computational resources and data.

**Repository Main Files**

There are several files contained in this repository that were created in the course of the project's workflow. The most important project products are as follows:

+ **Data Wrangling Code, Data Sampling and Exploratory Analysis:** Cleaning and wrangling the data was a multi-step process due to the size and format of the data. The data was first obtained as 300+ .dbc files (encompassing the years 2015 - 2018) from the publically accesible DataSUS database provided by the Brazilian Ministry of Health. Then, the Dbc files were converted to R dataframes, and the frames were concatenated to create larger CSV files for each year. For more details of data wrangling steps go [here.](https://github.com/IvetteMTapia/Capstone-2_Deep_Learning/blob/master/Reports-Graphics/Conversion%20and%20Data%20Wrangling%20Process.pdf)

> * Step 1: [Conversion of custom dbc files to CSV](https://github.com/IvetteMTapia/Capstone-2_Deep_Learning/blob/master/Code%20-%20Notebooks/Convert%20from%20dbc%20to%20CSV.R)
> * Step 2: [Taking Proportional Random Sample](https://github.com/IvetteMTapia/Capstone-2_Deep_Learning/blob/master/Code%20-%20Notebooks/Capstone_2_%20Data%20Sampling.ipynb)
> * Step 3: [Demographic Features Cleaning and Exploratory Analysis](https://github.com/IvetteMTapia/Capstone-2_Deep_Learning/blob/master/Code%20-%20Notebooks/Capstone%202_Demographics%20EDA%20%26%20Wrangling.ipynb)
> * Step 4: [Diagnosis Features Cleaning and Exploratory Analysis](https://github.com/IvetteMTapia/Capstone-2_Deep_Learning/blob/master/Code%20-%20Notebooks/Capstone%202_Diagnosis%20EDA%20%26%20Wrangling.ipynb)
> * Step 5: [Hospitalization Features Cleaning and Exploratory Analysis](https://github.com/IvetteMTapia/Capstone-2_Deep_Learning/blob/master/Code%20-%20Notebooks/Capstone%202_Hospitalization%20EDA%20%26%20Wrangling.ipynb)
> * Step 6: [Final concatenation of features, training, validation and testing datasets](https://github.com/IvetteMTapia/Capstone-2_Deep_Learning/blob/master/Code%20-%20Notebooks/Capstone%202_Concat%20-%20Train%20-%20Valid%20-%20Test%20Splits.ipynb)

+ **Deep Learning Model:**  Implementation of song popularity, artist popularity, item collaborative filetering and Ranking Matrix Factorization. Find recomender system code here.

+ **Reference:** This folder containes files that were used throughout the project as reference. Find reference files [here.](https://github.com/IvetteMTapia/Capstone-2_Deep_Learning/tree/master/Reference)

+ **Report:** This report contains in detail business motivation, data wrangling, exploratory analysis, deep learning model architecture, model prerformance results including testing and Kfold cross-validation. Additionally, the report includes recomendations on how to improvethe performance of the model and outlines alternatives. Find full report [here.](https://github.com/IvetteMTapia/Capstone-2_Deep_Learning/blob/master/Reports-Graphics/Capstone%202_Final%20Report.pdf)

+ **Presentation:** The presentation sumarizes the project motivation, findings of exploratory analysis and deep learning model implementation. Find summary presentation here.
