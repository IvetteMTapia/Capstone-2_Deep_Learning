# Deep Learning Model for Hospitalization Data

**Project Motivation**

This project uses hospitalization authorization data that is publically available through the informatics department of Brazilian Ministry of Health. A deep neural network model is used to make predictions regarding procedures performed on a patient given the information given on a patient’s authorization request record. The input data (x) is both categorical and numerical, and the output (y) variable is categorical (procedures group performed). 

A record in the AIH database is created when a hospital or healthcare unit generates a request for hospitalization. Providers submit demographic and health information about the patient. This request is approved, reduced, rejected, or rejected due to an error. While the patient is in the hospital, the record is updated to also contain information about procedures performed and discharge. Each row of information represents a hospitalization. If a patient is hospitalized more than 30 days, a new authorization is needed and a new record (i.e. row is created).

**Repository Main Files**

Below are the work products produced during the project's duration.

+ **Data Wrangling Code, Data Sampling and Exploratory Analysis:** Cleaning and wrangling the data was a multi-step process due to the size and format of the data. The data was first obtained as 300+ .dbc files (encompassing the years 2015 - 2018) from the publically accesible DataSUS database provided by the Brazilian Ministry of Health. Then, the Dbc files were converted to R dataframes, and the frames were concatenated to create larger CSV files for each year. For a visual representation of data wrangling steps go [here.](https://github.com/IvetteMTapia/Capstone-2_Deep_Learning/blob/master/Reports-Graphics/Conversion%20and%20Data%20Wrangling%20Process.pdf)

> * Step 1: [Conversion of custom dbc fiTheles to CSV](https://github.com/IvetteMTapia/Capstone-2_Deep_Learning/blob/master/Code%20-%20Notebooks/Convert%20dbc%20to%20csv.R)
> * Step 2: [Taking Proportional Random Sample](https://github.com/IvetteMTapia/Capstone-2_Deep_Learning/blob/master/Code%20-%20Notebooks/Capstone_2_%20Data%20Sampling.ipynb)
> * Step 3: [Demographic Features Cleaning and Exploratory Analysis](https://github.com/IvetteMTapia/Capstone-2_Deep_Learning/blob/master/Code%20-%20Notebooks/Capstone%202_Demographics%20EDA%20%26%20Wrangling.ipynb)
> * Step 4: [Diagnosis Features Cleaning and Exploratory Analysis](https://github.com/IvetteMTapia/Capstone-2_Deep_Learning/blob/master/Code%20-%20Notebooks/Capstone%202_Diagnosis%20EDA%20%26%20Wrangling.ipynb)
> * Step 5: [Hospitalization Features Cleaning and Exploratory Analysis](https://github.com/IvetteMTapia/Capstone-2_Deep_Learning/blob/master/Code%20-%20Notebooks/Capstone%202_Hospitalization%20EDA%20%26%20Wrangling.ipynb)
> * Step 6: [Final concatenation of features, training, validation and testing datasets](https://github.com/IvetteMTapia/Capstone-2_Deep_Learning/blob/master/Code%20-%20Notebooks/Capstone%202_Concat%20-%20Train%20-%20Valid%20-%20Test%20Splits.ipynb)

+ **Deep Learning Model:**  Implementation of experimental and final deep neural network models. The neural networks were executed on a EC2 AWS (p2.xlarge) instance. Find deep learning models code [here](https://github.com/IvetteMTapia/Capstone-2_Deep_Learning/blob/master/Code%20-%20Notebooks/Feature_Engineering_and_Deep_Learning.ipynb).

+ **Reference:** This folder containes files that were used throughout the project as reference. Find reference files [here.](https://github.com/IvetteMTapia/Capstone-2_Deep_Learning/tree/master/Reference)

+ **Report:** This report contains in detail business motivation, data wrangling, exploratory analysis, deep learning model architecture, model prerformance results including testing and Kfold cross-validation. Additionally, the report includes recomendations on how to improvethe performance of the model and outlines alternatives. Find full report [here.](https://github.com/IvetteMTapia/Capstone-2_Deep_Learning/blob/master/Reports-Graphics/Capstone%202_Final%20Report.pdf)

+ **Presentation:** The presentation sumarizes the project motivation, findings of exploratory analysis and deep learning model implementation. Find summary presentation here.
