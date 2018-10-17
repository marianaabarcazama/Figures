# Abarca, M., Larsen, E.A., Lill, J.T., Weiss, M., Lind, E. and Ries, L., 2018. 
# Inclusion of host quality data improves predictions of herbivore phenology. 
# Entomologia Experimentalis et Applicata.

# Figure 2. Color
p <- ggplot(Noaa, aes(y = Tmax, x = Yday))
p+ geom_line(col = "#F21A00")+ 
  geom_line(data = Noaa, mapping = aes(y = Tmin, x = Yday), col = "#3B9AB2")+
  geom_line(data = Noaa, mapping = aes(y = Tmean, x = Yday), col = "grey25")+
  ylim(c(-10,40))+
  xlim(c(100,365))+
  ylab("Temperature (°C)")+
  xlab("Day of the year")+
  theme_classic()+
  theme(strip.text.y = element_text(angle = 0, hjust = 0),
        strip.background = element_rect(colour = "white", fill = "white"))+
  geom_hline(yintercept = 32, linetype = 2)+
  geom_segment(x = Noaa$G1s, y= 5, yend = 5, xend = Noaa$G1e, linetype = 1)+
  geom_segment(x = Noaa$G2s, y= 5, yend = 5, xend = Noaa$G2e, linetype = 1)+
  geom_segment(x = Noaa$G3s, y= 5, yend = 5, xend = Noaa$G3e, linetype = 1)+
  facet_wrap(~Year,ncol=1)


# Figure 2. Greyscale
p <- ggplot(Noaa, aes(y = Tmax, x = Yday))
p+ geom_line(col = "grey84")+ 
  geom_line(data = Noaa, mapping = aes(y = Tmin, x = Yday), col = "grey0")+
  geom_line(data = Noaa, mapping = aes(y = Tmean, x = Yday), col = "grey55")+
  ylim(c(-10,40))+
  xlim(c(100,365))+
  ylab("Temperature (°C)")+
  xlab("Day of the year")+
  theme_classic()+
  theme(strip.text.y = element_text(angle = 0, hjust = 0),
        strip.background = element_rect(colour = "white", fill = "white"))+
  geom_hline(yintercept = 32, linetype = 2)+
  geom_segment(x = Noaa$G1s, y= 5, yend = 5, xend = Noaa$G1e, linetype = 1)+
  geom_segment(x = Noaa$G2s, y= 5, yend = 5, xend = Noaa$G2e, linetype = 1)+
  geom_segment(x = Noaa$G3s, y= 5, yend = 5, xend = Noaa$G3e, linetype = 1)+
  facet_wrap(~Year,ncol=1)

