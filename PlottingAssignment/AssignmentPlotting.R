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

save_penguin2_plot_svg <- function(penguins_clean, 
                                  AssignmentFigures, size, res, scaling)
{
  svglite("AssignmentFigures/CompPenguin2.svg", 
          width   =  5.9, 
          height  =  5.9)
# CompFigAll <- plot_comp_data_all(penguins_clean)
  print(CompFigAll)
  dev.off()
}

save_penguin2_plot_png <- function(penguins_clean, AssignmentFigures, size, res, scaling)
{
  agg_png("AssignmentFigures/CompPenguin2.png", 
          width = 20, 
          height = 15, 
          units = "cm", 
          res = 600, 
          scaling = 1)
 # CompFigAll <- plot_comp_data_all(penguins_clean)
  print(CompFigAll)
  dev.off()
}

save_penguin_plot_svg <- function(penguins_clean, 
                                  AssignmentFigures, size, res, scaling)
  {
  svglite("AssignmentFigures/CompVector.svg", 
          width   =  5.9, 
          height  =  5.9)
 #CompFig <- plot_comp_data(penguins_clean)
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
 #  CompFig <- plot_comp_data(penguins_clean)
  print(CompFig)
  dev.off()
}


save_gentoo_plot_png <- function(penguins_clean, AssignmentFigures, size, res, scaling)
{
  agg_png("AssignmentFigures/GentooFigureExport.png", 
          width = 20, 
          height = 15, 
          units = "cm", 
          res = 600, 
          scaling = 1)
  GentooFigure <- GentooCorFig(GentooOnly)
  print(GentooFigure)
  dev.off()
}

save_chinstrap_plot_png <- function(penguins_clean, AssignmentFigures, size, res, scaling)
{
  agg_png("AssignmentFigures/ChinstrapFigureExport.png", 
          width = 20, 
          height = 15, 
          units = "cm", 
          res = 600, 
          scaling = 1)
  ChinstrapFigure <- ChinstrapCorFig(ChinstrapOnly)
  print(ChinstrapFigure)
  dev.off()
}

save_adelie_plot_png <- function(penguins_clean, AssignmentFigures, size, res, scaling)
{
  agg_png("AssignmentFigures/AdelieFigureExport.png", 
          width = 20, 
          height = 15, 
          units = "cm", 
          res = 600, 
          scaling = 1)
  AdelieFigure <- AdelieCorFig(AdelieOnly)
  print(AdelieFigure)
  dev.off()
}

save_all_species_plot_png <- function(penguins_clean)
{
  agg_png("AssignmentFigures/AllSpeciesPlot.png", 
          width = 20, 
          height = 15, 
          units = "cm", 
          res = 600, 
          scaling = 1)
#  AllSpeciesFigure <- PenguinsCorFig(penguins_clean)
  print(AllSpeciesFigure)
  dev.off()
}

save_chinstrap_plot_svg <- function(ChinstrapOnly, 
                                  AssignmentFigures, size, res, scaling)
{
  svglite("AssignmentFigures/ChinstrapVector.svg", 
          width   =  5.9, 
          height  =  5.9)
 # ChinstrapFigure<- ChinstrapCorFig(ChinstrapOnly)
  print(ChinstrapFigure)
  dev.off()
}

save_adelie_plot_svg <- function(penguins_clean, 
                                    AssignmentFigures, size, res, scaling)
{
  svglite("AssignmentFigures/AdelieVector.svg", 
          width   =  5.9, 
          height  =  5.9)
  AdelieFigure <- AdelieCorFig(AdelieOnly)
  print(AdelieFigure)
  dev.off()
}

save_gentoo_plot_svg <- function(penguins_clean, 
                                 AssignmentFigures, size, res, scaling)
{
  svglite("AssignmentFigures/GentooVector.svg", 
          width   =  5.9, 
          height  =  5.9)
  GentooFigure <- GentooCorFig(GentooOnly)
  print(GentooFigure)
  dev.off()
}

save_all_species_plot_svg <- function(penguins_clean)
{
  svglite("AssignmentFigures/AllSpeciesVector.svg", 
          width   =  5.9, 
          height  =  5.9)
 # AllSpeciesFigure <- PenguinsCorFig(penguins_clean)
  print(AllSpeciesFigure)
  dev.off()
}


