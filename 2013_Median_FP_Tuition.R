setwd("~/other-gits/collegescoredata/CollegeScorecard_Raw_Data/")

csdata2013 <- read.csv("MERGED2013_PP.csv")

#Get the median amount of debt for students who completed a degree at
#a for-profit institution along with the school name.
forProfitGradDebt <- format(csdata2013[csdata2013$CONTROL == 3, c("INSTNM", "GRAD_DEBT_MDN_SUPP")])

#Since some schools have a median tuition value of
#"PrivacySuppressed", we will coerce into NAs.
tuitions <- suppressWarnings(as.numeric(forProfitGradDebt[["GRAD_DEBT_MDN_SUPP"]]))

#Median value of all institutions
mean(tuitions, na.rm = TRUE)
