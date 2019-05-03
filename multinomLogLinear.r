library(nnet)

a<-read.table("/Users/Sunny/Desktop/RegressionAnalysis/Sheet2.csv",sep=",", header=TRUE)
Ta<-mlogit.data(a,shape="long",alt.var="Mode",choice="Choice")

f<-mFormula(Choice ~ Saftey+Privacy+Convinience|
					  incomeB+familySize+flightsYear+daysBreturn+ageB)

ml.a<-multinom(f,Ta)

#result of multinomial log linear model 
summary(ml.a)

#multinom() breaks on the following predictors: Airport, Cost, payUticaSYR, 
#												 payUticaALB, shuttleMaxPersonsB, Time, luggage, ownVehicle,


###############################################################RESULTS
# weights:  10 (9 variable)
initial  value 188.536033 
iter  10 value 140.013475
final  value 138.221283 
converged

Call:
multinom(formula = f, data = Ta)

Coefficients:
                  Values   Std. Err.
(Intercept) -3.190335553 0.926355598
Saftey      -0.100826574 0.097083383
Privacy      0.107721156 0.070431078
Convinience  0.301730040 0.091328945
incomeB     -0.001330519 0.008893014
familySize  -0.068205648 0.115428428
flightsYear  0.004795662 0.037555839
daysBreturn -0.002928194 0.017257082
ageB         0.001588418 0.016196479

Residual Deviance: 276.4426 
AIC: 294.4426 