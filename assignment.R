######## read the data####
dataset <- read.csv("C:/Users/78209/OneDrive/桌面/price_index_Feb20201 (1).csv",header=TRUE)
#####Just look at the first five pieces of data###
head(dataset, n=5)

#####Observe the overall properties of the dataset###
summary(dataset)

#######View detailed data types and other information##
str(dataset)

#######Check the price variable for missing values####
sum(is.na(dataset$DATA_VAL))

#######Check all columns for missing values####
colSums(is.na(dataset))

########Calculate the size of a data set####
object.size(dataset)
print(object.size(dataset),units="Mb")

##########Create a data table with only SER_REF and DATA_VAL columns######
classes <- sapply(dataset, class)
classes[c(-1,-3)] <- rep("NULL", length(classes)-2)
data <- read.csv("C:/Users/78209/OneDrive/桌面/price_index_Feb20201 (1).csv", colClasses = classes)

######The number of title1 data in the Rest of North Island was counted###
table(dataset$Series_title_1 %in% c('Rest of North Island'))


#####They are sorted by product value from smallest to largest####
library(plyr)
arrange(dataset,DATA_VAL)


library(reshape2)
head(dataset)
######Use the Freq function in the DescTools package to generate a frequency distribution table about value###
install.packages('DescTools')
library(DescTools)
price <- Freq(dataset$DATA_VAL)
price
#######Just look at Series titles 1,2,3,To observe the specific information and state of the product##
x <- as.matrix(dataset[, 8:10])
x

#####

area<-factor(c('Auckland','Wellington','Rest of North Island','Canterbury','Rest of South Island','National'))
class(area)
levels(area)
nlevels(area)


install.packages("Hmisc")
install.packages("dplyr")
library(Hmisc) #读取包，如果加载不出来，先安装包
library(dplyr)

 

#Get the average for each product using the price values in column "Data_value" by sapply function. 
data<- read.csv("C:/Users/78209/OneDrive/桌面/price_index_Feb20201 (1).csv",header = T) 
colnames(data)


table(data$SER_REF)  #There are seven categories of items


str(data) #View the properties of the variable
data$DATA_VAL<-as.numeric(data$DATA_VAL)
class(data$DATA_VAL)
#Calculate the average of the prices of seven categories of items
x<-list(a=data$DATA_VAL[which(data$SER_REF=="CPIM.SE1041F")],
        b=data$DATA_VAL[which(data$SER_REF=="CPIM.SE2041F")],
        c=data$DATA_VAL[which(data$SER_REF=="CPIM.SE3041F")],
        d=data$DATA_VAL[which(data$SER_REF=="CPIM.SE5041F")],
        e=data$DATA_VAL[which(data$SER_REF=="CPIM.SE6041F")],
        f=data$DATA_VAL[which(data$SER_REF=="CPIM.SE9041F")],
        g=data$DATA_VAL[which(data$SER_REF=="CPIM.SE9041S")])
#Construct a matrix of X with the categories and values corresponding to X
sapply(x,mean)#Take the mean of the elements in x



