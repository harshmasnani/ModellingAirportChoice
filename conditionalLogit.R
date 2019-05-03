#define utility function and run mlogit on Sheet2
library(mlogit)

a<-read.table("/Users/Sunny/Desktop/RegressionAnalysis/Sheet3.csv",sep=",", header=TRUE)

#Make sure you delete column X from Sheet2 if it exists

#The two lines below factor all columns 
#col_names <- names(a)
#a[,col_names] <- lapply(a[,col_names] , factor)
#don't forget to un-factor


Ta<-mlogit.data(a,shape="long",alt.var="Mode",choice="Choice", chid.var="Individual")


f3<-mFormula(Choice ~ Saftey+Privacy+Convinience|
					  incomeB+familySize+flightsYear+daysBreturn+ageB)
ml.a<-mlogit(f3,Ta)

#the output of conditional logit on data
summary(ml.a)

####mlogit() breaks on the following predictors: Airport, Cost, payUticaSYR, 
#												 payUticaALB, shuttleMaxPersonsB, Time, luggage, ownVehicle,



###############################################################RESULTS

Call:
mlogit(formula = Choice ~ Saftey + Privacy + Convinience | incomeB + 
    familySize + flightsYear + daysBreturn + ageB, data = Ta, 
    method = "nr")

Frequencies of alternatives:
 Carpool Personal     Taxi TrainBus 
0.308824 0.441176 0.220588 0.029412 

nr method
17 iterations, 0h:0m:0s 
g'(-H)^-1g = 5.69E-07 
gradient close to zero 

Coefficients :
                        Estimate  Std. Error z-value Pr(>|z|)   
Personal:(intercept)  -2.0847404   1.8084351 -1.1528 0.248998   
Taxi:(intercept)      -2.6830181   1.8954946 -1.4155 0.156930   
TrainBus:(intercept)   2.0207356 728.8175532  0.0028 0.997788   
Saftey                 0.0795936   0.1415196  0.5624 0.573829   
Privacy               -0.0066315   0.1069029 -0.0620 0.950537   
Convinience            0.2904906   0.1098081  2.6454 0.008159 **
Personal:incomeB       0.0044221   0.0195472  0.2262 0.821026   
Taxi:incomeB          -0.0061167   0.0272754 -0.2243 0.822558   
TrainBus:incomeB      -0.5276319  72.8807937 -0.0072 0.994224   
Personal:familySize   -0.0901107   0.2653239 -0.3396 0.734139   
Taxi:familySize       -0.2046664   0.2848760 -0.7184 0.472486   
TrainBus:familySize   -0.0998869   0.7100902 -0.1407 0.888132   
Personal:flightsYear  -0.0887354   0.0938158 -0.9458 0.344226   
Taxi:flightsYear       0.1383669   0.0929397  1.4888 0.136545   
TrainBus:flightsYear   0.1606695   0.1535872  1.0461 0.295509   
Personal:daysBreturn  -0.0090383   0.0443775 -0.2037 0.838613   
Taxi:daysBreturn       0.0686850   0.0391870  1.7527 0.079645 . 
TrainBus:daysBreturn  -0.2099641   0.2527555 -0.8307 0.406143   
Personal:ageB          0.1120290   0.0654363  1.7120 0.086891 . 
Taxi:ageB              0.0992070   0.0715221  1.3871 0.165417   
TrainBus:ageB          0.1141730   0.0941546  1.2126 0.225278   
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Log-Likelihood: -62.777
McFadden R^2:  0.20484 
Likelihood ratio test : chisq = 32.343 (p.value = 0.020015)