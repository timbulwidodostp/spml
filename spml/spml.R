# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Spatial Panel Data Models Use spml With (In) R Software
# Econometric Models for Spatial Panel Data Use spml With (In) R Software
install.packages("splm")
install.packages("plm")
library("splm")
library("plm")
spml_one = read.csv("https://raw.githubusercontent.com/timbulwidodostp/spml/main/spml/spml_one.csv",sep = ";")
spml_two = read.csv("https://raw.githubusercontent.com/timbulwidodostp/spml/main/spml/spml_two.csv",sep = ";")
spml_two <- as.matrix(spml_two)
# Estimate Econometric Models for Spatial Panel Data Use spml With (In) R Software
fm <- log(gsp) ~ log(pcap) + log(pc) + log(emp) + unemp
## the two standard specifications (SEM and SAR) one with FE
## and the other with RE:
## fixed effects panel with spatial errors
Spatial_Panel_Data_Models_Fixed_Effect <- spml(fm, data = spml_one, listw = spdep::mat2listw(spml_two), model="within", spatial.error="b", Hess = FALSE)
summary(Spatial_Panel_Data_Models_Fixed_Effect)
## random effects panel with spatial lag
Spatial_Panel_Data_Models_Random_Effect <- spml(fm, data = spml_one, listw = spdep::mat2listw(spml_two), model="random", spatial.error="none", lag=TRUE)
summary(Spatial_Panel_Data_Models_Random_Effect)
# Production Function Estimation Use Package prodest With (In) R Software
# Production Function Estimation Based On The Control Function Approach Use Package prodest With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished