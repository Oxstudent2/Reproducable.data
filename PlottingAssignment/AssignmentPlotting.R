# plotitng function
library(svglite)

plot_comp_data <-function(penguins_clean) {
  ggplot(data = penguins_clean,
                                           aes(x = body_mass_g,
                                               y = flipper_length_mm, 
                                               colour = sex))+geom_point()+
  labs(title = 'Body mass relative to flipper length across penguin species',
       x = 'Body mass (g)',
       y = 'Flipper length (mm)',
       legend = 'Sex')+
  facet_wrap(~species)+
  theme_bw()+
  theme(legend.position = "top")+
  geom_smooth(method = "lm",color = "black", width = 1)
  
}

plot_comp_data_all <-function(penguins_clean) {
  ggplot(data = penguins_clean,
         aes(x = body_mass_g,
             y = flipper_length_mm, 
             colour = species))+geom_point()+
    labs(title = 'Body mass relative to flipper length across penguin species',
         x = 'Body mass (g)',
         y = 'Flipper length (mm)',
         legend = 'Sex')+
    theme_bw()+
    theme(legend.position = "top")+
    geom_smooth(method = "lm",color = "black", width = 1)
  
}




# checking for normality in data

normal_plot_check <- function(penguins_clean) {
  ggplot(penguins_clean, aes(x = body_mass_g)
)+ 
  geom_histogram()+
  facet_wrap(~species)+
  theme_bw()+
  labs(x = 'Body mass (g)',
       y = 'Count',
       title = 'Checking for normal distrobution')
}


save_penguin_plot_svg <- function(penguins_clean, 
                                  AssignmentFigures, size, res, scaling)
  {
  svglite("AssignmentFigures/CompVector.svg", 
          width   =  5.9, 
          height  =  5.9)
  # CompFig <- plot_comp_data(penguins_clean)
  print(CompFig)
  dev.off()
}


save_penguin_plot_png <- function(penguins_clean, AssignmentFigures, size, res, scaling)
  {
  agg_png("AssignmentFigures/CompFigureExport.png", 
         width = 20, 
         height = 15, 
         units = "cm", 
         res = 600, 
         scaling = 1)
   #CompFig <- plot_comp_data(penguins_clean)
  print(CompFig)
  dev.off()
}
  
# code was saved bad, open R from folder asn shut things down again - check file paths - 
# thin rest of it was okay

 #save_penguin_plot_svg <- function(penguins_clean)
#{
 # svglite("AssignmentFigures/fig01_vector.svg", 
  #       width = 5.9, 
   #      height = 5.9)
#  CompDataPlot <- plot_comp_data(penguins_clean)
 # CompDataPlot_DF <- as.data.frame(CompDataPlot)
  #print(CompDataPlot_DF)
  #dev.off()
  
 # }
  
  


