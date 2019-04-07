library(stringr)

Sheet1<-read.table("/Users/Sunny/Desktop/dummyDataSets/Sheet1.csv",sep=",", header=TRUE)
Sheet2<-read.table("/Users/Sunny/Desktop/dummyDataSets/Sheet2.csv",sep=",", header=TRUE)
j<-as.integer(1)
k<-as.integer(1)
c<-as.integer(rownames(Sheet2))

#clean cost part1
j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$CostPersonal[i]<-str_replace_all(Sheet1$CostPersonal[k], "[a-zA-Z-/+$(?;)]", "")
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$CostCarpool[i]<-str_replace_all(Sheet1$CostCarpool[k], "[a-zA-Z-/+$(?;)]", "")
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$CostTrainBus[i]<-str_replace_all(Sheet1$CostTrainBus[k], "[a-zA-Z-/+$(?;)]", "")
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$CostTaxi[i]<-str_replace_all(Sheet1$CostTaxi[k], "[a-zA-Z-/+$(?;)]", "")
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$CostSharedTaxi[i]<-str_replace_all(Sheet1$CostSharedTaxi[k], "[a-zA-Z-/+$(?;)]", "")
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$CostCS[i]<-str_replace_all(Sheet1$CostCS[k], "[a-zA-Z-/+$(?;)]", "")
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$CostSCS[i]<-str_replace_all(Sheet1$CostSCS[k], "[a-zA-Z-/+$(?;)]", "")
 	}
 	 	 	 	 	 	
#clean cost part 2
for(j in 1:length(Sheet2$CostPersonal))
	if(Sheet2$CostPersonal[j]==""){Sheet2$CostPersonal[j]="NA"}

for(j in 1:length(Sheet2$CostPersonal))
	if(Sheet2$CostTrainBus[j]==""){Sheet2$CostTrainBus[j]="NA"}

for(j in 1:length(Sheet2$CostPersonal))
	if(Sheet2$CostCarpool[j]==""){Sheet2$CostCarpool[j]="NA"}

for(j in 1:length(Sheet2$CostPersonal))
	if(Sheet2$CostTaxi[j]==""){Sheet2$CostTaxi[j]="NA"}

for(j in 1:length(Sheet2$CostPersonal))
	if(Sheet2$CostSharedTaxi[j]==""){Sheet2$CostSharedTaxi[j]="NA"}

for(j in 1:length(Sheet2$CostPersonal))
	if(Sheet2$CostCS[j]==""){Sheet2$CostCS[j]="NA"}

for(j in 1:length(Sheet2$CostPersonal))
	if(Sheet2$CostSCS[j]==""){Sheet2$CostSCS[j]="NA"}


#convert mode choice to boolean(0,1)
j<-as.integer(1)
k<-as.integer(1)
for(i in c)
	{
		if(j==5){k<-k+1; j<-1}	#can be done with %
		j<-j+1;
		if(Sheet2$Mode[i]==Sheet1$WhatMode[k])
			{Sheet2$Choice[i]<-1;}
		else{Sheet2$Choice[i]<-0;}
	}

#convert airport choices to boolean(0,1)
j<-as.integer(1)
k<-as.integer(1)
for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		if(Sheet1$Airport[k]=="SYR")
 			{Sheet2$fromSYR[i]<-1;}
 		else{Sheet2$fromSYR[i]<-0;}
 	}

j<-as.integer(1)
k<-as.integer(1)
for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		if(Sheet1$Airport[k]=="NYC")
 			{Sheet2$fromNYC[i]<-1;}
 		else{Sheet2$fromNYC[i]<-0;}
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		if(Sheet1$Airport[k]=="ALB")
 			{Sheet2$fromALB[i]<-1;}
 		else{Sheet2$fromALB[i]<-0;}
 	}

#copy distances
j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$DistSYR[i]<-Sheet1$DistSYR[k]
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$DistNYC[i]<-Sheet1$DistNYC[k]
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$DistALB[i]<-Sheet1$DistALB[k]
 	}		

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$DistEWR[i]<-Sheet1$DistEWR[k]
 	}
#copy saftey
j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$SafteyPersonal[i]<-Sheet1$SafteyPersonal[k]
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$SafteyTrainBus[i]<-Sheet1$SafteyTrainBus[k]
 	}	

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$SafteyCarpool[i]<-Sheet1$SafteyCarpool[k]
 	}	

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$SafteyTaxi[i]<-Sheet1$SafteyTaxi[k]
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$SafteySharedTaxi[i]<-Sheet1$SafteySharedTaxi[k]
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$SafteyCS[i]<-Sheet1$SafteyCS[k]
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$SafteySCS[i]<-Sheet1$SafteySCS[k]
 	}	 	

#copy privacy
j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$PrivacyPersonal[i]<-Sheet1$PrivacyPersonal[k]
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$PrivacyTrainBus[i]<-Sheet1$PrivacyTrainBus[k]
 	}	

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$PrivacyCarpool[i]<-Sheet1$PrivacyCarpool[k]
 	}	

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$PrivacyTaxi[i]<-Sheet1$PrivacyTaxi[k]
 	}
 	
j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$PrivacySharedTaxi[i]<-Sheet1$PrivacySharedTaxi[k]
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$PrivacyCS[i]<-Sheet1$PrivacyCS[k]
 	}
 	
j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$PrivacySCS[i]<-Sheet1$PrivacySCS[k]
 	} 		

#copy convinience
j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$ConviniencePersonal[i]<-Sheet1$ConviniencePersonal[k]
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$ConvinienceTrainBus[i]<-Sheet1$ConvinienceTrainBus[k]
 	}	

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$ConvinienceCarpool[i]<-Sheet1$ConvinienceCarpool[k]
 	}	

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$ConvinienceTaxi[i]<-Sheet1$ConvinienceTaxi[k]
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$ConvinienceSharedTaxi[i]<-Sheet1$ConvinienceSharedTaxi[k]
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$ConvinienceCS[i]<-Sheet1$ConvinienceCS[k]
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$ConvinienceSCS[i]<-Sheet1$ConvinienceSCS[k]
 	} 	 	 

#remove ':' fromTime and copy
j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$TimePersonal[i]<-str_replace_all(Sheet1$TimePersonal[k], ":", "")
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$TimeTrainBus[i]<-str_replace_all(Sheet1$TimeTrainBus[k], ":", "")
 	}	

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$TimeCarpool[i]<-str_replace_all(Sheet1$TimeCarpool[k], ":", "")
 	}	

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$TimeTaxi[i]<-str_replace_all(Sheet1$TimeTaxi[k], ":", "")
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$TimeSharedTaxi[i]<-str_replace_all(Sheet1$TimeSharedTaxi[k], ":", "")
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$TimeCS[i]<-str_replace_all(Sheet1$TimeCS[k], ":", "")
 	}

j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$TimeSCS[i]<-str_replace_all(Sheet1$TimeSCS[k], ":", "")
 	} 	

#copy flights per year
j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$flightsYear[i]<-Sheet1$flightsYear[k]
 	}

#copy days before return flight
j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$daysBreturn[i]<-Sheet1$daysBreturn[k]
 	}

#copy luggage
j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$luggage[i]<-Sheet1$luggage[k]
 	}

#convert own a vehicle? to boolean(0,1)
j<-as.integer(1)
k<-as.integer(1)
for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		if(str_detect(Sheet1$ownVehicle[k],"Yes"))
 			{Sheet2$ownVehicle[i]<-1;}
 		else{Sheet2$ownVehicle[i]<-0;}
 	}

#convert income bracket to slabs
j<-as.integer(1)
k<-as.integer(1)
for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		if(str_detect(Sheet1$incomeB[k],"^\\<10"))
			{Sheet2$incomeB[i]<-1}
		else if(str_detect(Sheet1$incomeB[k],"\\$10"))
			{Sheet2$incomeB[i]<-10}
		else if(str_detect(Sheet1$incomeB[k],"38"))
			{Sheet2$incomeB[i]<-40}
		else if(str_detect(Sheet1$incomeB[k],"\\$92"))
			{Sheet2$incomeB[i]<-100}
 	}

#copy family size
j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$familySize[i]<-Sheet1$familySize[k]
 	}	

#convert age bracket into slabs
j<-as.integer(1)
k<-as.integer(1)
for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		if(str_detect(Sheet1$ageB[k],"^<18"))
			{Sheet2$ageB[i]<-10}
		else if(str_detect(Sheet1$ageB[k],"^18"))
			{Sheet2$ageB[i]<-20}
		else if(str_detect(Sheet1$ageB[k],"25"))
			{Sheet2$ageB[i]<-25}
		else if(str_detect(Sheet1$ageB[k],"39"))
			{Sheet2$ageB[i]<-40}
		else if(str_detect(Sheet1$ageB[k],"51"))
			{Sheet2$ageB[i]<-65}	
 	}

#convert comfortable no. of passangers in shuttle bracket to slabs
j<-as.integer(1)
k<-as.integer(1)
for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		if(str_detect(Sheet1$shuttleMaxPersonsB[k],"^+2"))
			{Sheet2$shuttleMaxPersonsB[i]<-50}
		else if(str_detect(Sheet1$shuttleMaxPersonsB[k],"^5"))
			{Sheet2$shuttleMaxPersonsB[i]<-5}
		else if(str_detect(Sheet1$shuttleMaxPersonsB[k],"^10"))
			{Sheet2$shuttleMaxPersonsB[i]<-10}
		else if(str_detect(Sheet1$shuttleMaxPersonsB[k],"^15"))
			{Sheet2$shuttleMaxPersonsB[i]<-15}
		else if(str_detect(Sheet1$shuttleMaxPersonsB[k],"^20"))
			{Sheet2$shuttleMaxPersonsB[i]<-20}	
	}		

#copy pay Utica to Syracuse
j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$payUticaSYR[i]<-Sheet1$payUticaSYR[k]
 	}

#copy pay Utica to Albany
j<-as.integer(1)
k<-as.integer(1)
 	for(i in c)
 	{
 		if(j==5){k<-k+1; j<-1}	#can be done with %
 		j<-j+1;
 		Sheet2$payUticaALB[i]<-Sheet1$payUticaALB[k]
 	}

write.csv(Sheet2, file='/Users/Sunny/Desktop/dummyDataSets/Sheet2.csv', row.names=FALSE)	