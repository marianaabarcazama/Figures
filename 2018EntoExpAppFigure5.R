# Figure 5 
# Abarca, M., Larsen, E.A., Lill, J.T., Weiss, M., Lind, E. and Ries, L., 2018. 
# Inclusion of host quality data improves predictions of herbivore phenology. 
# Entomologia Experimentalis et Applicata.

# Figure 5

mypchs <- c(1,8,16)
p<-ggplot(Observed, aes( x = Dt4,..density.., fill = Host))
p + geom_histogram(alpha= 1, position = "identity", binwidth = 1) + 
  geom_vline(data = mu, aes(xintercept = grp.mean, col = Host),linetype = 2, size = 1)+
  geom_density(alpha=0.6)+
  geom_point(data = PrePlot[PrePlot$Generation != "Generation 3" | PrePlot$t%in%levels(PrePlot$t)[c(1,4,5)],],
             aes(x = DTpred, y = Y, shape = Host))+
  annotate("text", x = 5, y = 0.21, label = "a", size = 2.5)+
  annotate("text", x = 5, y = 0.18, label = "b", size = 2.5)+
  annotate("text", x = 5, y = 0.15, label = "c", size = 2.5)+
  annotate("text", x = 5, y = 0.12, label = "d", size = 2.5)+
  annotate("text", x = 5, y = 0.09, label = "e", size = 2.5)+
  annotate("text", x = 5, y = 0.06, label = "f", size = 2.5)+
  annotate("text", x = 5, y = 0.03, label = "g", size = 2.5)+
  
  ylab("Frequency")+
  #scale_shape_manual(values = c(16,1,8))+
  #scale_shape_manual(values = c(1,8,16))+
  scale_shape_manual(values = c(8,1,16))+
  scale_fill_grey(start = 0.1, end = 0.85)+
  scale_color_manual(values = c("yellow", "grey", "grey27"))+
  theme_classic()+
  ylim(0,0.29)+
  theme(legend.position = "none")+
  theme(strip.text.y = element_text(angle = 0, hjust = 0),
       strip.background = element_rect(colour = "white", fill = "white"))+
  facet_grid(Year~Generation)+
  xlab("Development time (days)")
  
  #----------------------------------------------
  # Color, simplified version for graphical abstract 
  
  # Select only Generation 2, year 2014
Observed2 <- filter(Observed, Year == 2014, Generation == "Generation 2", Host != "Combined")
mu2 <- filter(mu, Year == 2014, Generation == "Generation 2",Host != "Combined")
PrePlot2 <- filter(PrePlot, Year == 2014, Generation == "Generation 2")
p<-ggplot(Observed2, aes( x = Dt4,..density.., fill = Host))
p + #geom_histogram(alpha= 1, position = "identity", binwidth = 1) + 
  geom_vline(data = mu2, aes(xintercept = grp.mean, col = Host),linetype = 5, size = 1)+
  geom_density(alpha = 0.6)+
  geom_point(data = PrePlot2[PrePlot2$Generation !=3 | PrePlot2$t%in%levels(PrePlot2$t)[c(1,4,5)],],
             aes(x = DTpred, y = Y, shape = Host))+
  
  
   annotate("text", x = 10, y = 0.06, label = "Kudzu (high quality)", size = 5, col = "forestgreen")+
   annotate("text", x = 42, y = 0.06, label = "Wisteria (low quality)", size = 5, col = "goldenrod1")+
   annotate("text", x = 42, y = 0.088, label = "Model predictions", size = 4)+
   annotate("text", x = 40, y = 0.082, label = "high quality ", size = 2.5, hjust = 0)+
   annotate("point", x = 39, y = 0.082, size = 1.5)+
   annotate("text", x = 40, y = 0.078, label = "combined", size = 2.5, hjust = 0)+
  annotate("point", x = 39, y = 0.078, size = 1.5, shape = 8)+
   annotate("text", x = 40, y = 0.074, label = "low quality", size = 2.5, hjust = 0)+
  annotate("point", x = 39, y = 0.074, size = 1.5, shape = 1)+
   annotate("text", x = 4, y = 0.1, label = "Summer 2014", size = 5)+
  # annotate("text", x = 5, y = 0.084, label = "g", size = 2.5)+
  # 
  ylab("Frequency")+
  #scale_shape_manual(values = c(16,1,8))+
  #scale_shape_manual(values = c(1,8,16))+
  scale_shape_manual(values = c(8,1,16))+
  scale_fill_manual(values = c("goldenrod1","forestgreen", "goldenrod1"))+
  scale_color_manual(values = c("goldenrod1", "forestgreen", "goldenrod1"))+
  theme_classic()+
  ylim(0,0.1)+
  xlim(0,50)+
  theme(legend.position = "none")+
  theme(strip.text.y = element_text(angle = 0))+

  xlab("Development time (days)")
