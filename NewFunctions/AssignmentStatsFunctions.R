
GentooCorFig <- function(GentooOnly) { 
  ggscatter(GentooOnly, x = 'body_mass_g',
            y = 'flipper_length_mm',
            add = "reg.line", conf.int = TRUE,
            cor.coef = TRUE, cor.method = 'pearson',
            xlab = 'Body mass (g)',
            ylab = 'Flipper length (mm)')+
    labs(title = 'Correlation coefficient test for Gentoo penguins')
   
}


GentooCorTest <- function(GentooOnly)
  {
  cor.test(GentooOnly$body_mass_g, GentooOnly$flipper_length_mm)
}

AdelieCorFig <- function(AdelieOnly) { 
  ggscatter(AdelieOnly, x = 'body_mass_g',
            y = 'flipper_length_mm',
            add = "reg.line", conf.int = TRUE,
            cor.coef = TRUE, cor.method = 'pearson',
            xlab = 'Body mass (g)',
            ylab = 'Flipper length (mm)')+
    labs(title = 'Correlation coefficent for adelie Penguins')
}

AdelieCorTest <- function(AdelieOnly) {
  cor.test(AdelieOnly$body_mass_g, AdelieOnly$flipper_length_mm)
}

ChinstrapCorFig <- function(ChinstrapOnly) {
  ggscatter(ChinstrapOnly, x = 'body_mass_g',
            y = 'flipper_length_mm',
            add = "reg.line", conf.int = TRUE,
            cor.coef = TRUE, cor.method = 'pearson',
            xlab = 'Body mass (g)',
            ylab = 'Flipper length (mm)')+
    labs(title = 'Correlation coeffiecint for Chinstrap Penguins')
}

ChinstrapCorTest <- function(ChinstrapOnly)
{cor.test(ChinstrapOnly$body_mass_g, ChinstrapOnly$flipper_length_mm)}

PenguinsCorFig <- function(penguins_clean) {
  ggscatter(penguins_clean, x = 'body_mass_g',
            y = 'flipper_length_mm',
            add = "reg.line", conf.int = TRUE,
            cor.coef = TRUE, cor.method = 'pearson',
            xlab = 'Body mass (g)',
            ylab = 'Flipper length (mm)')+
    labs(title = 'Correlation coeffiecint for Chinstrap Penguins')
}

PenguinsCorTest <- function(penguins_clean)
{cor.test(penguins_clean$body_mass_g, penguins_clean$flipper_length_mm)}




