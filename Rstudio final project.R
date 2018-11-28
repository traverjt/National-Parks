library(TSP)
install.packages("gmapsdistance")
library(gmapsdistance)
?gmapsdistance
set.api.key("AIzaSyBMO8Hyj6lsza9JLkN0TzCP9cimVxd67n4")

results = gmapsdistance(origin = c("Yosemite+National+Park", "Grand+Canyon", "Redwood+National+Park", "Gardiner+MT", "Bryce+Canyon", "Glacier+National+Park", "Badlands+National+Park", "Arches+National+Park", "Zion+National+Park", "Monument+valley+national+park", "Acadia+national+park", "Congaree+National+Park", "Voyageurs+national+park", "Cuyahoga+Valley+national+park", "Great+Smoky+Mountains+National+Park", "Shenandoah+national+park", "Mammoth+Cave+national+park", "Cape+Cod+national+park", "Isle+Royale+national+park", "Dry+Tortugas+national+park"),
                                   destination = c("Yosemite+National+Park", "Grand+Canyon", "Redwood+National+Park", "Gardiner+MT", "Bryce+Canyon", "Glacier+National+Park", "Badlands+National+Park", "Arches+National+Park", "Zion+National+Park", "Monument+valley+national+park", "Acadia+national+park", "Congaree+National+Park", "Voyageurs+national+park", "Cuyahoga+Valley+national+park", "Great+Smoky+Mountains+National+Park", "Shenandoah+national+park", "Mammoth+Cave+national+park", "Cape+Cod+national+park", "Isle+Royale+national+park", "Dry+Tortugas+national+park"), 
                                   mode = "driving")
round(results$Distance[,2:21] * 0.000621371192, 2)
df <- round(results$Distance[,2:21] * 0.000621371192, 2)
row.names(df) <- colnames(df)
View(df)
write.csv(df, file="distance.csv")

library(TSP)
df <- as.matrix(df)
df <- as.ATSP(df)
tour <- solve_TSP(df, 'nn')
tour_length(tour)
tour <- as.data.frame(tour)
path <- cut_tour(tour, "Distance.Badlands+National+Park", exclude_cut=TRUE)
path <- as.matrix(path)
path <- as.ATSP(path)
tour <- solve_TSP(path, 'nn')
tour_length(path)



etsp <- df
etsp
n_of_cities(etsp)
labels(etsp)
tour <- solve_TSP(etsp)
tour
plot(etsp, df, tour_col = "red")


df <- as.matrix(df)
df <- as.ATSP(df)
tour_reptitive <- solve_TSP(df, 'repetitive_nn')
tour_length(tour_reptitive)
tour_reptitive <- as.data.frame(tour_reptitive)
labels(tour_reptitive)

df <- as.matrix(df)
df <- as.ATSP(df)
tour_nearest <- solve_TSP(df, 'nearest_insertion')
tour_length(tour_nearest)
tour_nearest <- as.data.frame(tour_nearest)

df <- as.matrix(df)
df <- as.ATSP(df)
tour_farthest <- solve_TSP(df, 'farthest_insertion')
tour_length(tour_farthest)
tour_farthest <- as.data.frame(tour_farthest)

df <- as.matrix(df)
df <- as.ATSP(df)
tour_cheapest <- solve_TSP(df, 'cheapest_insertion')
tour_length(tour_cheapest)
tour_cheapest <- as.data.frame(tour_cheapest)

df <- as.matrix(df)
df <- as.ATSP(df)
tour_arbitrary <- solve_TSP(df, 'arbitrary_insertion')
tour_length(tour_arbitrary)
tour_arbitrary <- as.data.frame(tour_arbitrary)

df <- as.matrix(df)
df <- as.ATSP(df)
tour_opt <- solve_TSP(df, 'two_opt')
tour_length(tour_opt)
tour_opt <- as.data.frame(tour_opt)




library("maps")
library("sp")
library("maptools")
gpclibPermit()
df <- as.matrix(df)
df <- as.ATSP(df)
tour <- solve_TSP(df, 'nn')
library("maps")
library("sp")
library("maptools")
plot(as(, "spatial"), axes = TRUE)
plot(, add=TRUE, col="gray")



#route without dry tortugas
results = gmapsdistance(origin = c("Yosemite+National+Park", "Grand+Canyon", "Redwood+National+Park", "Gardiner+MT", "Bryce+Canyon", "Glacier+National+Park", "Badlands+National+Park", "Arches+National+Park", "Zion+National+Park", "Monument+valley+national+park", "Acadia+national+park", "Congaree+National+Park", "Voyageurs+national+park", "Cuyahoga+Valley+national+park", "Great+Smoky+Mountains+National+Park", "Shenandoah+national+park", "Mammoth+Cave+national+park", "Cape+Cod+national+park", "Isle+Royale+national+park"),
                        destination = c("Yosemite+National+Park", "Grand+Canyon", "Redwood+National+Park", "Gardiner+MT", "Bryce+Canyon", "Glacier+National+Park", "Badlands+National+Park", "Arches+National+Park", "Zion+National+Park", "Monument+valley+national+park", "Acadia+national+park", "Congaree+National+Park", "Voyageurs+national+park", "Cuyahoga+Valley+national+park", "Great+Smoky+Mountains+National+Park", "Shenandoah+national+park", "Mammoth+Cave+national+park", "Cape+Cod+national+park", "Isle+Royale+national+park"), 
                        mode = "driving")
round(results$Distance[,2:20] * 0.000621371192, 2)
df2 <- round(results$Distance[,2:20] * 0.000621371192, 2)
row.names(df2) <- colnames(df2)
View(df2)
write.csv(df2, file="distance.csv")
library(TSP)
df2 <- as.matrix(df2)
df2 <- as.ATSP(df2)
tour2 <- solve_TSP(df2, 'nn')
tour_length(tour2)
tour2 <- as.data.frame(tour2)

#route without acadia
results = gmapsdistance(origin = c("Yosemite+National+Park", "Grand+Canyon", "Redwood+National+Park", "Gardiner+MT", "Bryce+Canyon", "Glacier+National+Park", "Badlands+National+Park", "Arches+National+Park", "Zion+National+Park", "Monument+valley+national+park", "Congaree+National+Park", "Voyageurs+national+park", "Cuyahoga+Valley+national+park", "Great+Smoky+Mountains+National+Park", "Shenandoah+national+park", "Mammoth+Cave+national+park", "Cape+Cod+national+park", "Isle+Royale+national+park", "Dry+Tortugas+national+park"),
                        destination = c("Yosemite+National+Park", "Grand+Canyon", "Redwood+National+Park", "Gardiner+MT", "Bryce+Canyon", "Glacier+National+Park", "Badlands+National+Park", "Arches+National+Park", "Zion+National+Park", "Monument+valley+national+park", "Congaree+National+Park", "Voyageurs+national+park", "Cuyahoga+Valley+national+park", "Great+Smoky+Mountains+National+Park", "Shenandoah+national+park", "Mammoth+Cave+national+park", "Cape+Cod+national+park", "Isle+Royale+national+park", "Dry+Tortugas+national+park"), 
                        mode = "driving")
round(results$Distance[,2:20] * 0.000621371192, 2)
df3 <- round(results$Distance[,2:20] * 0.000621371192, 2)
row.names(df3) <- colnames(df3)
View(df3)
write.csv(df3, file="distance.csv")
library(TSP)
df3 <- as.matrix(df3)
df3 <- as.ATSP(df3)
tour3 <- solve_TSP(df3, 'nn')
tour_length(tour3)
tour3 <- as.data.frame(tour3)

# tour without badlands
results = gmapsdistance(origin = c("Yosemite+National+Park", "Grand+Canyon", "Redwood+National+Park", "Gardiner+MT", "Bryce+Canyon", "Glacier+National+Park", "Arches+National+Park", "Zion+National+Park", "Monument+valley+national+park", "Acadia+national+park", "Congaree+National+Park", "Voyageurs+national+park", "Cuyahoga+Valley+national+park", "Great+Smoky+Mountains+National+Park", "Shenandoah+national+park", "Mammoth+Cave+national+park", "Cape+Cod+national+park", "Isle+Royale+national+park", "Dry+Tortugas+national+park"),
                        destination = c("Yosemite+National+Park", "Grand+Canyon", "Redwood+National+Park", "Gardiner+MT", "Bryce+Canyon", "Glacier+National+Park", "Arches+National+Park", "Zion+National+Park", "Monument+valley+national+park", "Acadia+national+park", "Congaree+National+Park", "Voyageurs+national+park", "Cuyahoga+Valley+national+park", "Great+Smoky+Mountains+National+Park", "Shenandoah+national+park", "Mammoth+Cave+national+park", "Cape+Cod+national+park", "Isle+Royale+national+park", "Dry+Tortugas+national+park"), 
                        mode = "driving")
round(results$Distance[,2:20] * 0.000621371192, 2)
df4 <- round(results$Distance[,2:20] * 0.000621371192, 2)
row.names(df4) <- colnames(df4)
View(df4)
write.csv(df4, file="distance.csv")
library(TSP)
df4 <- as.matrix(df4)
df4 <- as.ATSP(df4)
tour4 <- solve_TSP(df4, 'nn')
tour_length(tour4)
tour4 <- as.data.frame(tour4)
