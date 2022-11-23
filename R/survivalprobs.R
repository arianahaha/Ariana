#'survival.probs
#'
#'Gets a vector of survival probabilities for each time point
#'
#'@param x vector of times and vector of events
#'
#'@return vector of survival probabilities
#'
#'@examples
#'time = c(3,2,5,4,1)
#'event = c(1,0,0,1,1)
#'survival.probs(time, event)
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
    if (i == 1 & event[i]==1) {
      probabilities[1] = 1 * ((N - 1) / N)

    } else if (i ==1 & event[i] ==0) {
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
