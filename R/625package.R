#'survival.probs
#'
#'Gets a vector of survival probabilities for each time point
#'
#'@param x vector of times and vector of events
#'
#'@return vector of survival probabilities
#'
#'@examples
#'survival.probs()
#'
#'@export
#'

survival.probs = function(time, event) {

  probabilities = c()
  N = length(event)

  #ensure that the vectors are in order of event:
  o = order(time, decreasing = FALSE)
  time.sorted = time[o]
  event.sorted = event[o]

#need to add first timepoint AND censoring or first time point AND death

  for (i in 1:length(event)) {
    if (i == 1 && event[i]==1) {
      probabilities[1] = 1 * ((N - 1) / N)

    } else if (i ==1 && event ==0) {
      probabilities[1] = 1

    } else {
      #compute probabilities for the rest of the events:

        if (event[i] == 1) {
          probabilities[i] = probabilities[i - 1] * ((N - 1) / N) #subtract 1 from number at risk
          #compute probability ^

        } else {
          probabilities[i] = probabilities[i-1]
        }
    }
    N = N - 1
    }
  return(probabilities[which(event==1)])
}

time = c(3,2,5,4.1)
event = c(1,0,0,1,1)

survival.probs(time,event)

install.packages('survival')
library(survival)

summary(survfit(Surv(time, event)~1))



 # output of surv object = vector of probabilities

  #keep track of the number of times the function has called itself:
  #count=0

  ##compute survival time using kaplan meier estimator
 # St+1 = St*((Nt+1-Dt+1)/Nt+1)
#  count+=1
  #if else statement to call the function recursively


  #interval
 # t = interval
  #number of participants who are event free and considered at risk during
  #interval t
 # N = ()
  #number of participants who die (or suffer the event of interest)
  #during interval t
  #D = ()
  #number of participants who are censored during interval
  #t Nt* = the average number of participants at risk during interval t
 # C = ()
  #the average number of participants at risk during interval t
 # N* = ()
  # proportion dying (or suffering event) during interval t, qt = Dt/Nt*
  #q = ()
  #proportion surviving interval t
 # p=()
  #proportion surviving past interval
