# Import & Require Needed Libraries
require(read.dbc)
require(foreign)
require (readr)
require(purrr)
require(dplyr)

# View one .dbc files from 2015 RD folder
setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Reduced_2015")
read.dbc("RDAC1501.dbc")

# View one .dbc files from 2015 SP folder
setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/SP 2015")
read.dbc("SPAC1501.dbc")

# Create lists of files to be converted and bind

#RD Files 2015-2018

setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Reduced_2015")
RD_2015_FILES = list.files(pattern="*.dbc")
setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Reduced_2016")
RD_2016_FILES = list.files(pattern="*.dbc")
setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Reduced_2017")
RD_2017_FILES = list.files(pattern="*.dbc")
setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Reduced_2018")
RD_2018_FILES = list.files(pattern="*.dbc")
setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/SP 2015")

# Convert and Append RD 2015 Files.

setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Reduced_2015")

read.all_RD_2015 <- lapply(RD_2015_FILES, read.dbc)
df_RD_2015 <- do.call("rbind", read.all_RD_2015)

# Write Converted and Bound 2015 Files to CSV

setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data")

write.csv(df_RD_2018,'df_RD_2015.csv')

# Convert and Append RD 2016 Files.

setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Reduced_2016")

read.all_RD_2016 <- lapply(RD_2016_FILES, read.dbc)
df_RD_2016 <- do.call("rbind", read.all_RD_2016)

# Write Converted and Bound 2016 Files to CSV

setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data")

write.csv(df_RD_2018,'df_RD_2016.csv')

# Convert and Append RD 2017 Files.

setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Reduced_2017")

read.all_RD_2017 <- lapply(RD_2017_FILES, read.dbc)

# 2017 too big to do all at once. Split files.

# 2017 File 1

write.csv(rbind(read.all_RD_2017[[1]],read.all_RD_2017[[2]],
                read.all_RD_2017[[3]],read.all_RD_2017[[4]],
                read.all_RD_2017[[5]],read.all_RD_2017[[6]],
                read.all_RD_2017[[7]],read.all_RD_2017[[8]],
                read.all_RD_2017[[9]],read.all_RD_2017[[10]],
                read.all_RD_2017[[11]],read.all_RD_2017[[12]],
                read.all_RD_2017[[13]],read.all_RD_2017[[14]],
                read.all_RD_2017[[15]],read.all_RD_2017[[16]],
                read.all_RD_2017[[17]],read.all_RD_2017[[18]],
                read.all_RD_2017[[19]],read.all_RD_2017[[20]],
                read.all_RD_2017[[21]],read.all_RD_2017[[22]],
                read.all_RD_2017[[23]],read.all_RD_2017[[24]],
                read.all_RD_2017[[25]],read.all_RD_2017[[26]],
                read.all_RD_2017[[27]],read.all_RD_2017[[28]],
                read.all_RD_2017[[29]],read.all_RD_2017[[30]],
                read.all_RD_2017[[31]],read.all_RD_2017[[32]],
                read.all_RD_2017[[33]],read.all_RD_2017[[34]],
                read.all_RD_2017[[35]],read.all_RD_2017[[36]],
                read.all_RD_2017[[37]],read.all_RD_2017[[38]],
                read.all_RD_2017[[39]],read.all_RD_2017[[40]],
                read.all_RD_2017[[41]],read.all_RD_2017[[42]],
                read.all_RD_2017[[43]],read.all_RD_2017[[44]],
                read.all_RD_2017[[45]],read.all_RD_2017[[46]],
                read.all_RD_2017[[47]],read.all_RD_2017[[48]],
                read.all_RD_2017[[49]],read.all_RD_2017[[50]],
                read.all_RD_2017[[51]],read.all_RD_2017[[52]],
                read.all_RD_2017[[53]],read.all_RD_2017[[54]],
                read.all_RD_2017[[55]],read.all_RD_2017[[56]],
                read.all_RD_2017[[57]],read.all_RD_2017[[58]],
                read.all_RD_2017[[59]],read.all_RD_2017[[60]],
                read.all_RD_2017[[61]],read.all_RD_2017[[62]],
                read.all_RD_2017[[63]],read.all_RD_2017[[64]],
                read.all_RD_2017[[65]],read.all_RD_2017[[66]],
                read.all_RD_2017[[67]],read.all_RD_2017[[68]],
                read.all_RD_2017[[69]],read.all_RD_2017[[70]],
                read.all_RD_2017[[71]],read.all_RD_2017[[72]],
                read.all_RD_2017[[73]],read.all_RD_2017[[74]],
                read.all_RD_2017[[75]],read.all_RD_2017[[76]],
                read.all_RD_2017[[77]],read.all_RD_2017[[78]],
                read.all_RD_2017[[79]],read.all_RD_2017[[80]],
                read.all_RD_2017[[81]],read.all_RD_2017[[82]],
                read.all_RD_2017[[83]],read.all_RD_2017[[84]],
                read.all_RD_2017[[85]],read.all_RD_2017[[86]],
                read.all_RD_2017[[87]],read.all_RD_2017[[88]],
                read.all_RD_2017[[89]],read.all_RD_2017[[90]],
                read.all_RD_2017[[91]],read.all_RD_2017[[92]],
                read.all_RD_2017[[93]],read.all_RD_2017[[94]],
                read.all_RD_2017[[95]],read.all_RD_2017[[96]],
                read.all_RD_2017[[97]],read.all_RD_2017[[98]],
                read.all_RD_2017[[99]],read.all_RD_2017[[100]]), 
          "df_RD_2017_1.csv")

# 2017 File 2

write.csv(rbind(read.all_RD_2017[[101]],read.all_RD_2017[[102]],
                read.all_RD_2017[[103]],read.all_RD_2017[[104]],
                read.all_RD_2017[[105]],read.all_RD_2017[[106]],
                read.all_RD_2017[[107]],read.all_RD_2017[[108]],
                read.all_RD_2017[[109]],read.all_RD_2017[[110]],
                read.all_RD_2017[[111]],read.all_RD_2017[[112]],
                read.all_RD_2017[[113]],read.all_RD_2017[[114]],
                read.all_RD_2017[[115]],read.all_RD_2017[[116]],
                read.all_RD_2017[[117]],read.all_RD_2017[[118]],
                read.all_RD_2017[[119]],read.all_RD_2017[[120]],
                read.all_RD_2017[[121]],read.all_RD_2017[[122]],
                read.all_RD_2017[[123]],read.all_RD_2017[[124]],
                read.all_RD_2017[[125]],read.all_RD_2017[[126]],
                read.all_RD_2017[[127]],read.all_RD_2017[[128]],
                read.all_RD_2017[[129]],read.all_RD_2017[[130]],
                read.all_RD_2017[[131]],read.all_RD_2017[[132]],
                read.all_RD_2017[[133]],read.all_RD_2017[[134]],
                read.all_RD_2017[[135]],read.all_RD_2017[[136]],
                read.all_RD_2017[[137]],read.all_RD_2017[[138]],
                read.all_RD_2017[[139]],read.all_RD_2017[[140]],
                read.all_RD_2017[[141]],read.all_RD_2017[[142]],
                read.all_RD_2017[[143]],read.all_RD_2017[[144]],
                read.all_RD_2017[[145]],read.all_RD_2017[[146]],
                read.all_RD_2017[[147]],read.all_RD_2017[[148]],
                read.all_RD_2017[[149]],read.all_RD_2017[[150]],
                read.all_RD_2017[[151]],read.all_RD_2017[[152]],
                read.all_RD_2017[[153]],read.all_RD_2017[[154]],
                read.all_RD_2017[[155]],read.all_RD_2017[[156]],
                read.all_RD_2017[[157]],read.all_RD_2017[[158]],
                read.all_RD_2017[[159]],read.all_RD_2017[[160]],
                read.all_RD_2017[[161]],read.all_RD_2017[[162]],
                read.all_RD_2017[[163]],read.all_RD_2017[[164]],
                read.all_RD_2017[[165]],read.all_RD_2017[[166]],
                read.all_RD_2017[[167]],read.all_RD_2017[[168]],
                read.all_RD_2017[[169]],read.all_RD_2017[[170]],
                read.all_RD_2017[[171]],read.all_RD_2017[[172]],
                read.all_RD_2017[[173]],read.all_RD_2017[[174]],
                read.all_RD_2017[[175]],read.all_RD_2017[[176]],
                read.all_RD_2017[[177]],read.all_RD_2017[[178]],
                read.all_RD_2017[[179]],read.all_RD_2017[[180]],
                read.all_RD_2017[[181]],read.all_RD_2017[[182]],
                read.all_RD_2017[[183]],read.all_RD_2017[[184]],
                read.all_RD_2017[[185]],read.all_RD_2017[[186]],
                read.all_RD_2017[[187]],read.all_RD_2017[[188]],
                read.all_RD_2017[[189]],read.all_RD_2017[[190]],
                read.all_RD_2017[[191]],read.all_RD_2017[[192]],
                read.all_RD_2017[[193]],read.all_RD_2017[[194]],
                read.all_RD_2017[[195]],read.all_RD_2017[[196]],
                read.all_RD_2017[[197]],read.all_RD_2017[[198]],
                read.all_RD_2017[[199]],read.all_RD_2017[[200]]), 
          "df_RD_2017_2.csv")

# 2017 File 3

write.csv(rbind(read.all_RD_2017[[201]],read.all_RD_2017[[202]],
                read.all_RD_2017[[203]],read.all_RD_2017[[204]],
                read.all_RD_2017[[205]],read.all_RD_2017[[206]],
                read.all_RD_2017[[207]],read.all_RD_2017[[208]],
                read.all_RD_2017[[209]],read.all_RD_2017[[210]],
                read.all_RD_2017[[211]],read.all_RD_2017[[212]],
                read.all_RD_2017[[213]],read.all_RD_2017[[214]],
                read.all_RD_2017[[215]],read.all_RD_2017[[216]],
                read.all_RD_2017[[217]],read.all_RD_2017[[218]],
                read.all_RD_2017[[219]],read.all_RD_2017[[220]],
                read.all_RD_2017[[221]],read.all_RD_2017[[222]],
                read.all_RD_2017[[223]],read.all_RD_2017[[224]],
                read.all_RD_2017[[225]],read.all_RD_2017[[226]],
                read.all_RD_2017[[227]],read.all_RD_2017[[228]],
                read.all_RD_2017[[229]],read.all_RD_2017[[230]],
                read.all_RD_2017[[231]],read.all_RD_2017[[232]],
                read.all_RD_2017[[233]],read.all_RD_2017[[234]],
                read.all_RD_2017[[235]],read.all_RD_2017[[236]],
                read.all_RD_2017[[237]],read.all_RD_2017[[238]],
                read.all_RD_2017[[239]],read.all_RD_2017[[240]],
                read.all_RD_2017[[241]],read.all_RD_2017[[242]],
                read.all_RD_2017[[243]],read.all_RD_2017[[244]],
                read.all_RD_2017[[245]],read.all_RD_2017[[246]],
                read.all_RD_2017[[247]],read.all_RD_2017[[248]],
                read.all_RD_2017[[249]],read.all_RD_2017[[250]],
                read.all_RD_2017[[251]],read.all_RD_2017[[252]],
                read.all_RD_2017[[253]],read.all_RD_2017[[254]],
                read.all_RD_2017[[255]],read.all_RD_2017[[256]],
                read.all_RD_2017[[257]],read.all_RD_2017[[258]]), 
          "df_RD_2017_3.csv")

# 2017 File 4

write.csv(rbind(read.all_RD_2017[[259]],read.all_RD_2017[[260]],
                read.all_RD_2017[[261]],read.all_RD_2017[[262]],
                read.all_RD_2017[[263]],read.all_RD_2017[[264]],
                read.all_RD_2017[[265]],read.all_RD_2017[[266]],
                read.all_RD_2017[[267]],read.all_RD_2017[[268]],
                read.all_RD_2017[[269]],read.all_RD_2017[[270]],
                read.all_RD_2017[[271]],read.all_RD_2017[[272]],
                read.all_RD_2017[[273]],read.all_RD_2017[[274]],
                read.all_RD_2017[[275]],read.all_RD_2017[[276]],
                read.all_RD_2017[[277]],read.all_RD_2017[[278]],
                read.all_RD_2017[[279]],read.all_RD_2017[[280]],
                read.all_RD_2017[[281]],read.all_RD_2017[[282]],
                read.all_RD_2017[[283]],read.all_RD_2017[[284]],
                read.all_RD_2017[[285]],read.all_RD_2017[[286]],
                read.all_RD_2017[[287]],read.all_RD_2017[[288]],
                read.all_RD_2017[[289]],read.all_RD_2017[[290]],
                read.all_RD_2017[[291]],read.all_RD_2017[[292]],
                read.all_RD_2017[[293]],read.all_RD_2017[[294]],
                read.all_RD_2017[[295]],read.all_RD_2017[[296]],
                read.all_RD_2017[[297]],read.all_RD_2017[[298]],
                read.all_RD_2017[[299]],read.all_RD_2017[[300]],
                read.all_RD_2017[[301]],read.all_RD_2017[[302]],
                read.all_RD_2017[[303]],read.all_RD_2017[[304]],
                read.all_RD_2017[[305]],read.all_RD_2017[[306]],
                read.all_RD_2017[[307]],read.all_RD_2017[[308]],
                read.all_RD_2017[[309]],read.all_RD_2017[[310]],
                read.all_RD_2017[[311]],read.all_RD_2017[[312]],
                read.all_RD_2017[[313]],read.all_RD_2017[[314]],
                read.all_RD_2017[[315]],read.all_RD_2017[[316]],
                read.all_RD_2017[[317]]), 
          "df_RD_2017_4.csv")


# Convert and Append RD 2018 Files.

setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data/Reduced_2018")

read.all_RD_2018 <- lapply(RD_2018_FILES, read.dbc)
df_RD_2018 <- do.call("rbind", read.all_RD_2018)

# Write Converted and Bound 2018 Files to CSV

setwd("~/Symbolic Link Seagate Drive/Springboard/Capstone 2_Deep_Learning/Data")

write.csv(df_RD_2018,'df_RD_2018.csv')
