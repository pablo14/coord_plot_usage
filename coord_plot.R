install.packages("devtools") ## To be able to download packages from github
library(devtools)
install_github("pablo14/clusplus")
library(clusplus)

######################
## mtcars example
######################
## Create k-means model with 3 clusters
fit_mtcars=kmeans(mtcars,3)

## Call the function
plot_clus_coord(fit_mtcars, mtcars)

######################
## iris example
######################
## Create k-means model with 3 clusters
fit_iris=kmeans(iris[,-5],2)

## Call the function
plot_clus_coord(fit_iris, iris[,-5])

######################
## AllCountries example
######################
install.packages("Lock5Data")
library(Lock5Data)
data(AllCountries)

## Filter some variables
AllCountries=AllCountries[, names(AllCountries) %in% c("LandArea", "Population", "Energy", "Rural", "BirthRate", "LifeExpectancy")]

## Keep only rows without NA values
AllCountries=na.omit(AllCountries)

## Create k-means model with 3 clusters
fit_AllCountries=kmeans(AllCountries, 3)
fit_AllCountries$centers

## Call the function
plot_clus_coord(fit_AllCountries, AllCountries)


