###Exercise 7

getwd()

#Set Working directory
setwd(("/Users/mayra/OneDrive/Documents/BioComputing/Biocomp-Exercise07"))

#Loading data

dataHead <- data <- read.csv("~/data.csv", sep = ",", header=TRUE)
#Extracting rows 1-10 of the data and printing out
datahead<- data[1:10,]
datahead

#Loading data
setwd(("/Users/mayra/OneDrive/Documents/BioComputing/Biocomp-Exercise07"))
irisWork<-read.csv("/Users/mayra/OneDrive/Documents/BioComputing/Biocomp-Exercise07/iris.csv",sep = ",",header = TRUE)
list.files()
irisWork
#print the last 2 rows in the last 2 columns to the R terminal
iristail2<-tail(irisWork,2)
iristail2
iris2tail2row<-iristail2[,4:5]
iris2tail2row

#Number of observations for each species included in the data set
table(irisWork$Species)

#rows with Sepal.Width > 3.5
SepalWidth3<-irisWork[irisWork$Sepal.Width >3.5,]
SepalWidth3

#write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
setosa<-irisWork[irisWork$Species=="setosa",]
setosa
#Create CSV FILE and see that its there
write.csv(setosa, file = "setosa.csv")
list.files()

#Mean, minimum, and maximum of Petal.Length for observations from virginica
virginipedal<- irisWork[irisWork$Species=="virginica","Petal.Length"]
virginipedal
#Mean
mean(virginipedal)
#min
min(virginipedal)
#max
max(virginipedal)
