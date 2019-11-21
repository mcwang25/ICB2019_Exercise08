# Makes plot of UW v MSU game score vs time from 1-22-13
# Note assignment says not to worry about how please the graph is visually, merely to focus on necessary control structures
bball <- read.table(file="UWvMSU_1-22-13.txt", header=TRUE)
UWscores <- bball[bball$team=="UW",]
MSUscores <- bball[bball$team=="MSU",]
MSUscores$team <- NULL
UWscores$team <- NULL
MSUscores$cumscore <- ave(MSUscores$score, FUN=cumsum)
UWscores$cumscore <- ave(UWscores$score, FUN=cumsum)
MSUscores$score <- NULL
UWscores$score <- NULL
plot(x=MSUscores$time, y=MSUscores$cumscore, type='l')+lines(x=UWscores$time,y=UWscores$cumscore)
