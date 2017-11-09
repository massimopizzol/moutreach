library("ggplot2")
library("likert")

# Get the data from .csv file
mydata <- read.csv(“ARS_dataset.csv", header = TRUE, sep = ";")

# Explore the dataset
head(mydata)
names(mydata)
dim(mydata)

# Check and remove missing answers (NA values)
sum(is.na(mydata)) # amount of NA
apply(mydata, 2, function(y) sum(is.na(y))) # NA per column
data.frame(apply(mydata, 1, function(u) sum(is.na(u)))) # NA per row

dim(mydata)
db <- na.omit(mydata)
dim(db)
head(db)

# Reduce the dataset (leave out comments and status)
db<-db[,-c(5, 15:19)]; names(db)
head(db)

# Convert categorical variables
# Affiliation
db$s_5[db$s_5 == 1] <- "Academia"  
db$s_5[db$s_5 == 2] <- "Outside"  
db$s_5 <- as.factor(db$s_5)

# Science
db$s_6[db$s_6 == 1] <- "Social"  
db$s_6[db$s_6 == 2] <- "Natural"  
db$s_6[db$s_6 == 3] <- "Formal"  
db$s_6<- as.factor(db$s_6)

head(db)

# Rename the variables
names(db) <- c("Invited", "Qualified", "Done", "Willing", 
               "Timecons", 
               "Timewast", "Partofjob", "Ben4Research", "Ben4Career", "EncManagement", 
               "IntelStim", "Affiliation", "Science")

head(db)

# Do some sanity checks
db[(db$Done > db$Invited),] # What? Somebody has done mor reviews than was invited to do? 
db <- db[-which(db$Done > db$Invited),] # Let's remove these
dim(db)
db[(db$Qualified > db$Invited),] # None. Sounds reasonable
db[(db$Done > db$Qualified),] # None. Sounds reasonable.
db[(db$Willing > db$Done),] # Well...this was unexpected. People wlling to do more reviews than they actually do.
db[(db$Invited == 0),] # Shuold I include these? No because they are not active reviewers.
db <- db[-which(db$Invited == 0),] # Let's remove these
dim(db)

head(db[order(-db$Invited),]) # OK no surprises
head(db[order(-db$Qualified),]) # OK no surprises
head(db[order(-db$Done),]) # OK no surprises
head(db[order(-db$Willing),]) # OK no surprises


# Decsriptive stats
summary(db)
a_mean <- aggregate(db[,1:4], by = list(db$Affiliation), FUN = mean) # Mean by affiliation
a_mean
s_mean <- aggregate(db[,1:4], by = list(db$Science), FUN = mean) # Mean by science field
s_mean
s_sd_poisson <- aggregate(db[,1:4], by = list(db$Science), FUN = (function(y) (mean(y))^0.5)) # Count data follow a poisson distribution. The sd is the sqare root of the mean in this case.
s_sd_poisson

# Linear Regression
plot(db[,1:4]) # interesting

plot(db$Qualified ~ db$Invited) 
qual_inv <- lm(db$Qualified ~ db$Invited)
summary(qual_inv) 

plot(db$Done ~ db$Qualified) # one weird data, I will remove it
done_qual <- lm(db$Done ~ db$Qualified)
dbdq <- data.frame(db$Done,db$Qualified)
dbdq <- dbdq[-which.max(dbdq$db.Qualified),]
done_qual <- lm(dbdq$db.Done ~ dbdq$db.Qualified)
summary(done_qual) 

plot(db$Done ~ db$Willing) # interesting
done_will <- lm(db$Done ~ db$Willing)
summary(done_will) # People do almost the same reviews as they are willing to. Makes sense.


# Correlation
library(psych)
cormatx <- cor(db[,5:11]) # not much correlation. Variables non-overlapping.
corr.p(cormatx, dim(db)[1],alpha=.05)

# Plots
par(mfrow=c(1,1))
plot(as.factor(db$Affiliation))
plot(as.factor(db$Science))

barplot(as.matrix(s_mean[,-1]), beside = TRUE,
        legend = levels(as.factor(s_mean$Group.1)))
title("Average number of reviews per scientific field")

barplot(as.matrix(a_mean[,-1]), beside = TRUE,
        legend = levels(as.factor(a_mean$Group.1)))
title("Average number of reviews per affiliation")

par(mfrow=c(3,1))
stripchart(db[db$Science == "Formal",c(1:4)], method = "jitter", 
           vertical = TRUE, pch = 16, col = "Red",
           ylab = "Number of reviews")
title("Formal sciences")

stripchart(db[db$Science == "Natural",c(1:4)], method = "jitter", 
           vertical = TRUE, pch = 16, col = "Red",
           ylab = "Number of reviews")
title("Natural sciences")

stripchart(db[db$Science == "Social",c(1:4)], method = "jitter", 
           vertical = TRUE, pch = 16, col = "Red",
           ylab = "Number of reviews")
title("Social sciences")

# Best chart
par(mfrow=c(1,1))
stripchart(db[,1:4], method = "jitter", 
           vertical = TRUE, pch = 16, col = "Red",
           ylab = "Number of reviews")


# Some advanced plot with ggplot2, but I didn't really like it
dim(db)
ggplot(db, aes(db[,1:4])) +  geom_point()
library(reshape2)
db2 <- melt(db[,c(1:4,13)], id.vars="Science")
head(db2)
ggplot(db2, aes(variable, value, col=Science)) + geom_point()



# Now plotting the likert variables
# Using likert package, check it out here # http://jason.bryer.org/likert/
variables_tested <- c("Time consuming", 
                      "Waste of time", 
                      "Part of the job", 
                      "Beneficial for research", 
                      "Beneficial for career", 
                      "Encouraged by management", 
                      "Intellectually stimulating")
questions_full <- c(
  "In the last 12 months, how many review invitations did you receive?",
  "Among these invitations, how many were you qualified to accept?",
  "In the last 12 months, how many papers did you review?",
  "In your opinion, how many papers should you review in a year?",
  "To what extent do you think reviewing papers is time consuming?\n(1 = Not at all; 9 = Extremely)",
  "To what extent do you think reviewing papers is a waste of time?\n(1 = Not at all; 9 = Extremely)",
  "To what extent do you think reviewing papers is part of your job?\n(1 = Not at all; 9 = Extremely)",
  "To what extent do you think reviewing papers is beneficial for your research?\n(9 = Not at all; 1 = Extremely",
  "To what extent do you think reviewing papers is beneficial for your career?\n(9 = Not at all; 1 = Extremely)",
  "To what extent do you think reviewing papers is encouraged by your management?\n(9 = Not at all; 1 = Extremely)",
  "To what extent do you think reviewing papers is intellectually stimulating?\n(9 = Not at all; 1 = Extremely)",
  "Your work is...?\n(Academia or outside academia)",
  "Your branch of science is...?\n(Social, Natural, or Formal Sciences)")

l.data <- db[,5:11]
names(l.data) <- variables_tested
head(l.data)
summary(l.data)

# Convert in likert objects, summarize and plot
l_review <- likert(l.data, nlevels = 9)
summary(l_review)
plot(l_review, centered = FALSE) + 
  ggtitle("Reviewing papers is... (left = 'Not at all', right = 'Extremely')") + 
  theme(legend.position="none")+
  theme(plot.title = element_text(hjust = 0.5))
