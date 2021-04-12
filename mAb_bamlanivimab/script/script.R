rprojroot::find_rstudio_root_file()
setwd(file.path(rprojroot::find_rstudio_root_file(),"script"))

library(mrgsolve)
library(tidyverse)
library(magrittr)
library(mrggsave)

thisScript <- "script"

## compile model
mod <- mread("../model/mAb_bamlanivimab.txt")

# set up simulation conditions
dose <- 700/150 #umol
dur <- 2
rate <- dose/dur
cmt <- 4
end <- 28*24
e <- ev(amt=dose, rate=rate, cmt=cmt)

## Figure 2 ##
scores <- seq(0, 8, 1)
idata <- expand.idata(PS_Score = scores)

# run
sim_fig2 <- mod %>%
  carry_out(amt, rate, cmt, evid, PS_Score) %>%
  mrgsim_ei(e, idata, end=end, rtol=1e-4, outvars=c("EXG_ugml_Readout", "Cexg_Plasma", "Cexg_Lung_IS")) %>%
  as_tibble()

sim2_fig2 <- sim_fig2 %>%
  select(time, conc=Cexg_Plasma, `AC-SINS`=PS_Score) %>%
  # get mcg/mL from uM
  mutate(conc = conc * 150,
         time = time / 24,
         `AC-SINS` = factor(`AC-SINS`))

fig2 <- ggplot(data=sim2_fig2, aes(x=time, y=conc, col=`AC-SINS`)) +
  geom_line(lwd = 1) +
  scale_x_continuous(breaks=seq(0, 28, 7)) +
  scale_y_continuous(trans = "log10") +
  labs(title="Figure 2", x="Time (Days)", y=expression("mAb plasma concentration ("*mu*"g/mL)")) +
  theme_bw() +
  theme(legend.text = element_text(size = 15),
        legend.title = element_text(size = 15),
        axis.text = element_text(size=15),
        axis.title = element_text(size=20),
        title=element_text(size=20))
fig2

###################

## Figure 3 ##
sim_fig3 <- mod %>%
  carry_out(amt, rate, cmt, evid, PS_Score) %>%
  param(PS_Score=1) %>%
  ev(e) %>%
  mrgsim(end=end, rtol=1e-4, outvars=c("EXG_ugml_Readout", "Cexg_Plasma", "Cexg_Lung_IS")) %>%
  as_tibble() 

sim2_fig3 <- sim_fig3 %>%
  select(time, Cexg_Plasma, Cexg_Lung_IS) %>%
  gather(tissue, conc, -time) %>%
  # get mcg/mL from uM
  mutate(conc = conc * 150,
         tissue = ifelse(tissue=="Cexg_Plasma", "Plasma", "Lung interstitial"),
         time = time / 24)

fig3 <- ggplot(data=sim2_fig3, aes(x=time, y=conc, col=tissue)) +
  geom_line(lwd = 1) +
  scale_x_continuous(breaks=seq(0, 28, 7)) +
  scale_y_continuous(trans = "log10") +
  labs(title="Figure 3", x="Time (Days)", y=expression("Bamlanivimab concentration ("*mu*"g/mL)")) +
  theme_bw() +
  theme(legend.title = element_blank(),
        legend.text = element_text(size = 15),
        axis.text = element_text(size=15),
        axis.title = element_text(size=20),
        title=element_text(size=20))
fig3

#####################

# save
gp_file <- mrggsave(list(fig2, fig3),
                          thisScript,
                          dir = "figures",
                          stem = paste("bamlanivimab_figures"),
                          onefile = TRUE,
                          width=10, height=7)
