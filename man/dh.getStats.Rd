% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get-stats.R
\name{dh.getStats}
\alias{dh.getStats}
\title{Produces descriptive statistics in useful format}
\usage{
dh.getStats(df = NULL, vars = NULL, conns = NULL)
}
\arguments{
\item{df}{opal dataframe}

\item{vars}{vector of variable names in dataframe}

\item{conns}{connection object for DataSHIELD backends}
}
\value{
The function returns a list with two elements containing dataframes
with summary statistics for (i) categorical and (ii) continuous variables.
These data frames are in longform and contain the following variables.

Categorical:
variable = variable
 category = level of variable, including missing as a category
 value = number of observations
 cohort = name of cohort, including combined values for all cohorts
 cohort_n = total number of observations for cohort in dataset
 valid_n = number of valid observations for variable (sum of ns for each
           categories)
 valid_perc = observations within a category as percentage of valid_n

Continuous:

 cohort = cohort, including combined values for all cohorts
 variable = variable
 mean = mean (for combined value for all cohorts this is calculated by meta-
       analysis using fixed-effects)
 std.dev = standard deviation (again calculated by MA for cohorts combined)
 valid_n = as above
 cohort_n = as above
 missing_n = as above
 missing_perc = as above
}
\description{
This function extracts descriptive statistics from variables held in opal
tables via DS. It mainly uses "ds.summary", but it also extracts extra
info not given by default. It also avoids a problem encountered with
ds.summary where it gets upset if the variable you request isn't present
within a cohort. Instead this function just returns NA for that variable and
for that cohort. This is more useful, e.g. if you want to make descriptive
tables for papers and show that a certain cohort is lacking some information.
Although, this may be less important if using ds.dataFrameFill throughout
your scripts.
}
