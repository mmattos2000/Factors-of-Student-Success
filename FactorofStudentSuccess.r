library(readxl)
student_mat_2 <- read_excel("Downloads/student/student-mat 2.xlsx", 
                            col_types = c("numeric", "text", "numeric", 
                                          "text", "numeric", "numeric", "numeric", 
                                          "numeric", "numeric", "numeric", 
                                          "numeric", "numeric", "numeric"))
View(student_mat_2)

#Data from Students who Failed and Passed
xtabs(~age+Binary,data=student_mat_2)
xtabs(~absences+Binary,data=student_mat_2)
xtabs(~health+Binary,data=student_mat_2)
xtabs(~internet+Binary,data=student_mat_2)
xtabs(~activities+Binary,data=student_mat_2)

#Log regression between the binary response and age
logistics.age<-glm(Binary~age,data=student_mat_2,family="binomial")
summary(logistics.age)

#log regression between the binary response and absences
logistics.absences<-glm(Binary~absences,data=student_mat_2,family="binomial")
summary(logistics.absences)

#log regression between the binary response and health
logistics.health<-glm(Binary~health,data=student_mat_2,family="binomial")
summary(logistics.health)

#log regression between the binary response and internet
logistics.internet<-glm(Ibinary~FinalGrade,data=student_mat_2,family="binomial")
summary(logistics.internet)

#log regression between the binary response and activities
logistics.activities<-glm(Abinary~FinalGrade,data=student_mat_2,family="binomial")
summary(logistics.activities)

predicted.data<-data.frame(probability.of.Binary=logistics$fitted.values,Binary=student_mat_2$Binary)
predicted.data<-predicted.data[order(predicted.data$probability.of.Binary, decreasing=FALSE),]
predicted.data$rank<-1:nrow(predicted.data)
install.packages("ggplot2")
install.packages("cowplot")
library(ggplot2)
ggplot(student_mat_2, aes(x=age, y=Binary)) +
  geom_point(alpha=.05) +
  stat_smooth(method="glm",formula=y~x,
              se=FALSE, method.args=list(family=binomial),col='orange3')

ggplot(student_mat_2, aes(x=absences, y=Binary)) +
  geom_point(alpha=.05) +
  stat_smooth(method="glm",formula=y~x,
              se=FALSE, method.args=list(family=binomial),col='magenta1')

ggplot(student_mat_2, aes(x=health, y=Binary)) +
  geom_point(alpha=.05) +
  stat_smooth(method="glm",formula=y~x,
              se=FALSE, method.args=list(family=binomial),col='grey1')

ggplot(student_mat_2, aes(x=FinalGrade, y=Ibinary)) +
  geom_point(alpha=.05) +
  stat_smooth(method="glm",formula=y~x,
              se=FALSE, method.args=list(family=binomial),col='Blue4')

ggplot(student_mat_2, aes(x=FinalGrade, y=Abinary)) +
  geom_point(alpha=.05) +
  stat_smooth(method="glm",formula=y~x,
              se=FALSE, method.args=list(family=binomial),col='green4')




