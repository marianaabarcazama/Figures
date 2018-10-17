# Supplementary figure

p <- ggplot(sup2, aes(y = MeanDt, x = DTpred))
p + geom_point(aes(shape = Host, col = Generation)) + 
  geom_smooth(data = sup2[sup2$Type =="ByDiet",],method="lm", se = F)+
  scale_color_manual(values = c("#F8766D","#00BA38"))+
  coord_cartesian(ylim = c(10,35), xlim = c(10,35))+
  ylab("Observed development time (days)")+
  xlab("Predicted development time (days)")+
  theme_base()+
  facet_grid(~Typ)
