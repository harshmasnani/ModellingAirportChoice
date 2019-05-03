#define utility function and run mlogit on Sheet2
library(mlogit)

a<-read.table("/Users/Sunny/Desktop/RegressionAnalysis/Sheet3.csv",sep=",", header=TRUE)

#Make sure you delete column X from Sheet2 if it exists

#The two lines below factor all columns 
#col_names <- names(a)
#a[,col_names] <- lapply(a[,col_names] , factor)
#don't forget to un-factor


Ta<-mlogit.data(a,shape="long",alt.var="Mode",choice="Choice", chid.var="Individual")


f3<-mFormula(Choice ~ 1|
					  incomeB+familySize+flightsYear+daysBreturn+ageB)
ml.a<-mlogit(f3,Ta)

#the output of multinomial logit on data
summary(ml.a)

####mlogit() breaks on the following predictors: Airport, Cost, payUticaSYR, 
#												 payUticaALB, shuttleMaxPersonsB, Time, luggage, ownVehicle,



###############################################################RESULTS
Call:
mlogit(formula = Choice ~ 1 | incomeB + familySize + flightsYear + 
    daysBreturn + ageB, data = Ta, method = "nr")

Frequencies of alternatives:
 Carpool Personal     Taxi TrainBus 
0.308824 0.441176 0.220588 0.029412 

nr method
17 iterations, 0h:0m:0s 
g'(-H)^-1g = 4.96E-07 
gradient close to zero 

Coefficients :
                        Estimate  Std. Error z-value Pr(>|z|)  
Personal:(intercept)  -1.5062081   1.7637553 -0.8540  0.39312  
Taxi:(intercept)      -3.1641777   1.8692875 -1.6927  0.09051 .
TrainBus:(intercept)   1.3745951 780.3826320  0.0018  0.99859  
Personal:incomeB      -0.0044079   0.0186132 -0.2368  0.81280  
Taxi:incomeB          -0.0165981   0.0259664 -0.6392  0.52268  
TrainBus:incomeB      -0.5223962  78.0372786 -0.0067  0.99466  
Personal:familySize   -0.0825385   0.2505359 -0.3294  0.74182  
Taxi:familySize       -0.1503079   0.2784900 -0.5397  0.58939  
TrainBus:familySize    0.0014664   0.6758213  0.0022  0.99827  
Personal:flightsYear  -0.0983128   0.0884189 -1.1119  0.26618  
Taxi:flightsYear       0.0963687   0.0863254  1.1163  0.26428  
TrainBus:flightsYear   0.1339866   0.1618535  0.8278  0.40777  
Personal:daysBreturn  -0.0134678   0.0416524 -0.3233  0.74644  
Taxi:daysBreturn       0.0627482   0.0380804  1.6478  0.09940 .
TrainBus:daysBreturn  -0.2245957   0.2570254 -0.8738  0.38221  
Personal:ageB          0.1206341   0.0635389  1.8986  0.05762 .
Taxi:ageB              0.1112252   0.0682107  1.6306  0.10297  
TrainBus:ageB          0.1202100   0.1042170  1.1535  0.24872  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Log-Likelihood: -68.097
McFadden R^2:  0.13745 
Likelihood ratio test : chisq = 21.703 (p.value = 0.11582)