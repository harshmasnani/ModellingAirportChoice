#define utility function and run mlogit on Sheet2
library(mlogit)

a<-read.table("/Users/Sunny/Desktop/dummyDataSets/Sheet2.csv",sep=",", header=TRUE)

#Make sure you delete first column X from Sheet2
col_names <- names(a)

#a[,col_names] <- lapply(a[,col_names] , factor)


Ta<-mlogit.data(a,shape="long",alt.var="Mode",choice="Choice", chid.var="Individual")

f <- mFormula(Choice ~ CostPersonal+CostTrainBus+CostCarpool+CostTaxi+CostSharedTaxi+CostCS+
	CostSCS+DistSYR+DistNYC+DistALB+DistEWR+SafteyPersonal+SafteyTrainBus+SafteyCarpool+SafteyTaxi+
	SafteySharedTaxi+SafteyCS+SafteySCS+PrivacyPersonal+PrivacyTrainBus+PrivacyCarpool+PrivacyTaxi+
	PrivacySharedTaxi+PrivacyCS+PrivacySCS+ConviniencePersonal+ConvinienceTrainBus+ConvinienceCarpool+
	ConvinienceTaxi+ConvinienceSharedTaxi+ConvinienceCS+ConvinienceSCS+payUticaSYR+payUticaALB| 
	flightsYear+daysBreturn+incomeB+familySize+ageB-1|
	Airport+TimePersonal+TimeTrainBus+TimeCarpool+TimeTaxi+TimeSharedTaxi+TimeCS+TimeSCS+luggage+ownVehicle+shuttleMaxPersonsB)

f1<- mFormula(Choice ~ 1| +0+CostPersonal+CostTrainBus+CostCarpool+CostTaxi+CostSharedTaxi+
	CostCS+CostSCS+Airport+DistSYR+DistNYC+DistALB+SafteyPersonal+SafteyTrainBus+SafteyCarpool+
	SafteyTaxi+SafteySharedTaxi+PrivacyPersonal+PrivacyTrainBus+PrivacyCarpool+PrivacyTaxi+
	PrivacySharedTaxi+ConviniencePersonal+ConvinienceTrainBus+ConvinienceCarpool+ConvinienceTaxi+
	ConvinienceSharedTaxi+TimePersonal+TimeTrainBus+TimeCarpool+TimeTaxi+TimeSharedTaxi+flightsYear+
	daysBreturn+luggage+ownVehicle+incomeB+familySize+ageB+shuttleMaxPersonsB+payUticaSYR+
	payUticaALB)
f3<-mFormula(Choice ~ Time+Cost+random+Privacy)
ml.a<-mlogit(f3,Ta)

#the output of mlogit on data
summary(ml.a)