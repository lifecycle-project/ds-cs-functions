% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/local-proxy.R
\name{dh.localProxy}
\alias{dh.localProxy}
\title{Generate a local proxy dataframe to enable local autocompletion in RStudio}
\usage{
dh.localProxy(df = NULL, conns = NULL)
}
\arguments{
\item{df}{datashield dataframe}

\item{conns}{connections object to DataSHIELD backends}
}
\value{
Creates a local proxy dataframe. Stops function if df doesn't exist or is inconsistent in one of more cohorts.
}
\description{
If you have a remote dataframe on the servers, it can be challenging to remember variable narmes when writing code.
Because the dataframes are on remote servers, the autocomplete won't work in RStudio. The purpose of this function
is to create a local object that has the same structure as the remote data frame and enables the use of autocomplete
when writing DataSHIELD code.
}
\details{
For example, if you have a dataframe "D" with columns LAB_TSC, DIS_CVA and DIS_DIAB, normally you would need to write:

`ds.summary("D$LAB_TSC")` with the variable name spelled correctly (no autocomplete!) and remember quotation marks

after running this function you can type

`ds.summary(D$` and hit tab, and the list of variables will be displayed. Choose one and hit enter to finish up with:

`ds.summary(D$LAB_TSC)` - no quotation marks needed either!
}
