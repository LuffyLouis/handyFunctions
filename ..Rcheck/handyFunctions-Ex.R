pkgname <- "handyFunctions"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
base::assign(".ExTimings", "handyFunctions-Ex.timings", pos = 'CheckExEnv')
base::cat("name\tuser\tsystem\telapsed\n", file=base::get(".ExTimings", pos = 'CheckExEnv'))
base::assign(".format_ptime",
function(x) {
  if(!is.na(x[4L])) x[1L] <- x[1L] + x[4L]
  if(!is.na(x[5L])) x[2L] <- x[2L] + x[5L]
  options(OutDec = '.')
  format(x[1L:3L], digits = 7L)
},
pos = 'CheckExEnv')

### * </HEADER>
library('handyFunctions')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("ShowSNPDensityPlot")
### * ShowSNPDensityPlot

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: ShowSNPDensityPlot
### Title: Function of showing SNP density at chromosome level
### Aliases: ShowSNPDensityPlot

### ** Examples

library(handyFunctions)
data(SNV_1MB_density_data)
ShowSNPDensityPlot(SNV_1MB_density_data, binSize = 1e6, chromSet = c(38:1))




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("ShowSNPDensityPlot", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("checkCols")
### * checkCols

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: checkCols
### Title: check the validation and return index of cols given from input
###   in rawDataFrame
### Aliases: checkCols

### ** Examples

library(handyFunctions)
data(people)
checkCols(people, c("..name", "..sex"))
# OR
checkCols(people, c(1, 2))



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("checkCols", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("checkDtype")
### * checkDtype

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: checkDtype
### Title: Return suggested dtype of vector input
### Aliases: checkDtype

### ** Examples

library(handyFunctions)
vector <- c(1, 2, 3, "", NA, "  ", "four", "NA", 5)
checkDtype(vector)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("checkDtype", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("matchIndex")
### * matchIndex

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: matchIndex
### Title: Return the index of source vector matched with query vector
### Aliases: matchIndex

### ** Examples

library(handyFunctions)
data(grade)
matchIndex(grade[, "name"], c("Ming Li", "Bang Wei"))




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("matchIndex", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("mergeCustom")
### * mergeCustom

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: mergeCustom
### Title: merge two data.frame based on xcol and ycol
### Aliases: mergeCustom

### ** Examples

library(handyFunctions)
data(people)
data(grade)
mergeCustom(people, grade, "..name", "name")




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("mergeCustom", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("modifyColNames")
### * modifyColNames

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: modifyColNames
### Title: Return reformatted data.frame with standard col names
### Aliases: modifyColNames

### ** Examples

library(handyFunctions)
data(people)
modified_people <- modifyColNames(people,rawSep = "[.][.]")




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("modifyColNames", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("modifyColTypes")
### * modifyColTypes

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: modifyColTypes
### Title: Return suggested appropriate dtypes for each column in
###   rawDataFrame
### Aliases: modifyColTypes

### ** Examples

library(handyFunctions)
data(people)
modifyColTypes(people)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("modifyColTypes", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("modifyRowNames")
### * modifyRowNames

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: modifyRowNames
### Title: Return reformatted data.frame with standard row names
### Aliases: modifyRowNames

### ** Examples

library(handyFunctions)
data(people)
modifyRowNames(people)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("modifyRowNames", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("queryingInfo")
### * queryingInfo

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: queryingInfo
### Title: return index of x data.frame with the given vector/list or ycol
###   in data.frame (if set the accurate match or not)
### Aliases: queryingInfo

### ** Examples

library(handyFunctions)
data(grade)
queryingInfo(grade, "name", "chinese", c("Ming Li", "Bang Wei"))




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("queryingInfo", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("splitCol")
### * splitCol

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: splitCol
### Title: Return specific-indexed vector according to given
###   delimitator/separator by splitting one col in data.frame
### Aliases: splitCol

### ** Examples

library(handyFunctions)
data(people)
splitCol(people, col = 1, sep = " ", index = 2)




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("splitCol", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("unifyDataframe")
### * unifyDataframe

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: unifyDataframe
### Title: Reformat dataframe with the all modifiers simultaneously
###   (colNames, rowNames and dtypes)
### Aliases: unifyDataframe

### ** Examples

library(handyFunctions)
data(people)
unifyDataframe(people,rawColSep = "[.][.]")




base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("unifyDataframe", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
