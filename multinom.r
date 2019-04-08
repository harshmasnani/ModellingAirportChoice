library(nnet)
a<-read.table("/Users/Sunny/Desktop/dummyDataSets/Sheet2.csv",sep=",", header=TRUE)
Ta<-mlogit.data(a,shape="long",alt.var="Mode",choice="Choice")

f <- mFormula(Choice ~ CostPersonal+CostTrainBus+CostCarpool+CostTaxi+CostSharedTaxi+CostCS+
	CostSCS+DistSYR+DistNYC+DistALB+DistEWR+SafteyPersonal+SafteyTrainBus+SafteyCarpool+SafteyTaxi+
	SafteySharedTaxi+SafteyCS+SafteySCS+PrivacyPersonal+PrivacyTrainBus+PrivacyCarpool+PrivacyTaxi+
	PrivacySharedTaxi+PrivacyCS+PrivacySCS+ConviniencePersonal+ConvinienceTrainBus+ConvinienceCarpool+
	ConvinienceTaxi+ConvinienceSharedTaxi+ConvinienceCS+ConvinienceSCS+payUticaSYR+payUticaALB| 
	flightsYear+daysBreturn+incomeB+familySize+ageB|
	Airport+TimePersonal+TimeTrainBus+TimeCarpool+TimeTaxi+TimeSharedTaxi+TimeCS+TimeSCS+luggage+ownVehicle+shuttleMaxPersonsB)

ml.a<-multinom(f,Ta)

summary(ml.a)