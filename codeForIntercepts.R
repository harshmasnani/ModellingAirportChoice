#define utility function and run mlogit on Sheet2
library(mlogit)

a<-read.table("/Users/Sunny/Desktop/dummyDataSets/Sheet2.csv",sep=",", header=TRUE)
Ta<-mlogit.data(a,shape="long",alt.var="Mode",choice="Choice")

f <- mFormula(Choice ~ 1| +0+fromSYR+fromNYC+fromALB+DistSYR+DistNYC+DistALB+SafteyPersonal+SafteyTrainBus+SafteyCarpool+SafteyTaxi+SafteySharedTaxi+PrivacyPersonal+PrivacyTrainBus+PrivacyCarpool+PrivacyTaxi+PrivacySharedTaxi+ConviniencePersonal+ConvinienceTrainBus+ConvinienceCarpool+ConvinienceTaxi+ConvinienceSharedTaxi+TimePersonal+TimeTrainBus+TimeCarpool+TimeTaxi+TimeSharedTaxi+flightsYear+daysBreturn+luggage+ownVehicle+incomeB+familySize+ageB+shuttleMaxPersonsB+payUticaSYR+payUticaALB)

ml.a<-mlogit(f,Ta)

#a look at intercepts of the utility function
head(model.matrix(f, Ta))