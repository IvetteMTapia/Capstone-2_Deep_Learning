# Import & Require Needed Libraries
require(read.dbc)
require(foreign)
require (readr)
require(purrr)
require(dplyr)
require(data.table)

# View one .dbc files from 2015 RD folder
setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Raw Data/Reduced_2015")
read.dbc("RDAC1501.dbc")

# View one .dbc files from 2015 SP folder
setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Raw Data/SP 2015")
read.dbc("SPAC1501.dbc")

# Create lists of files to be converted and bind

#RD Files 2015-2018

setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Raw Data/Reduced_2015")
AIHRD_2015_FILES = list.files(pattern="*.dbc")
setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Raw Data/Reduced_2016")
AIHRD_2016_FILES = list.files(pattern="*.dbc")
setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Raw Data/Reduced_2017")
AIHRD_2017_FILES = list.files(pattern="*.dbc")
setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Raw Data/Reduced_2018")
AIHRD_2018_FILES = list.files(pattern="*.dbc")

# Convert and Append RD 2015 Files.

setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Raw Data/Reduced_2015")

read.all_RD_2015 <- lapply(AIHRD_2015_FILES, read.dbc)
df_RD_2015 <- rbindlist(read.all_RD_2015, fill=FALSE, idcol=NULL)

# Write Converted and Bound 2015 Files to CSV

setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Converted Files")

write.csv(df_RD_2015,'AIH_RD_2015.csv',row.names=FALSE, fileEncoding = "UTF-8")

# Convert and Append RD 2016 Files.

setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Raw Data/Reduced_2016")

read.all_RD_2016 <- lapply(AIHRD_2016_FILES, read.dbc)
df_RD_2016 <- rbindlist(read.all_RD_2016, fill=FALSE, idcol=NULL)

# Write Converted and Bound 2016 Files to CSV

setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Converted Files")

write.csv(df_RD_2016,'AIH_RD_2016.csv', row.names=FALSE, fileEncoding = "UTF-8")


# Convert and Append RD 2017 Files.

setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Raw Data/Reduced_2017")

read.all_RD_2017 <- lapply(AIHRD_2017_FILES, read.dbc)

df_RD_2017 <- rbindlist(read.all_RD_2017, fill=FALSE, idcol=NULL)

setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Converted Files")

write.csv(df_RD_2017,'AIH_RD_2017.csv',row.names=FALSE,fileEncoding = "UTF-8")

# Convert and Append RD 2018 Files.

setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Raw Data/Reduced_2018")

read.all_RD_2018 <- lapply(AIHRD_2018_FILES, read.dbc)

df_RD_2018 <- do.call("rbind", read.all_RD_2018)

# Write Converted and Bound 2018 Files to CSV

setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Converted Files")

write.csv(df_RD_2018,'AIH_RD_2018.csv',row.names=FALSE, fileEncoding = "UTF-8")

# Create small sample file from 2018 dataset

setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Converted Files")

write.csv(read.all_RD_2018[[1]],'AIH_sample_2018.csv', row.names=FALSE, fileEncoding = "UTF-8")

