# whether maps have bias or not
rm(list = ls())
map <- read.table(file = "map.txt", header = TRUE, sep = " ")
level.mapname <- levels(map$mapname)
level.winrole <- levels(map$winrole)
mat.map <- matrix(rep(0,length(level.winrole)*length(level.mapname)),nrow = length(level.mapname),ncol = length(level.winrole))
rownames(mat.map) <- level.mapname
colnames(mat.map) <- level.winrole
for (i in level.mapname) {
  for (j in level.winrole) {
    mat.map[i,j]=sum(map$count[as.logical((map$mapname==i)*(map$winrole==j))])
  }
}
mat.map
chisq.test(mat.map) # have bias
proportion <- mat.map[,1]/(mat.map[,1]+mat.map[,2])
mat.map <- cbind(mat.map,proportion)
mat.map <- mat.map[order(proportion),]
mat.map

# whether operators have bias or not
rm(list = ls())
operator <- read.table(file = "operator.txt", header = TRUE, sep = " ")
operator$haswon <- factor(operator$haswon,labels = c("lose","win"))
level.haswon <- levels(operator$haswon)
level.operator <- levels(operator$operator)
mat.operator <- matrix(rep(0,length(level.haswon)*length(level.operator)),nrow = length(level.operator),ncol = length(level.haswon))
rownames(mat.operator) <- level.operator
colnames(mat.operator) <- level.haswon
for (i in level.operator) {
  for (j in level.haswon) {
    mat.operator[i,j]=sum(operator$count[as.logical((operator$operator==i)*(operator$haswon==j))])
  }
}
mat.operator
chisq.test(mat.operator) # have bias
proportion <- mat.operator[,1]/(mat.operator[,1]+mat.operator[,2])
mat.operator <- cbind(mat.operator,proportion)
mat.operator <- mat.operator[order(proportion),]
mat.operator

# whether primaryweapons have bias or not
rm(list = ls())
primaryweapon <- read.table(file = "primaryweapon.txt", header = TRUE, sep = " ")
primaryweapon$haswon <- factor(primaryweapon$haswon,labels = c("lose","win"))
level.haswon <- levels(primaryweapon$haswon)
level.primaryweapon <- levels(primaryweapon$primaryweapon)
mat.primaryweapon <- matrix(rep(0,length(level.haswon)*length(level.primaryweapon)),nrow = length(level.primaryweapon),ncol = length(level.haswon))
rownames(mat.primaryweapon) <- level.primaryweapon
colnames(mat.primaryweapon) <- level.haswon
for (i in level.primaryweapon) {
  for (j in level.haswon) {
    mat.primaryweapon[i,j]=sum(primaryweapon$count[as.logical((primaryweapon$primaryweapon==i)*(primaryweapon$haswon==j))])
  }
}
mat.primaryweapon
chisq.test(mat.primaryweapon) # has bias
proportion <- mat.primaryweapon[,1]/(mat.primaryweapon[,1]+mat.primaryweapon[,2])
mat.primaryweapon <- cbind(mat.primaryweapon,proportion)
mat.primaryweapon <- mat.primaryweapon[order(proportion),]
mat.primaryweapon
