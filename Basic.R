# Matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8,474.5, 552.5, 310.7, 338.7, 380.3, 468.5)
star_wars_matrix <- matrix(box_office, nrow = 6, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi", "The Phantom Menace", "Attack of the Clones", "Revenge of the Sith"), 
                                           c("US", "non-US")))
# Matrix - rowSums, rbind
all_region <- rowSums(star_wars_matrix)
all_wars_matrix <- cbind(star_wars_matrix, all_region)
total <- colSums(all_wars_matrix)
all_wars_matrix <- rbind(all_wars_matrix, total)
all_wars_matrix
non_us_all <- all_wars_matrix[,2]


# Factors - factor, level
temperature_vector <- c("H", "L", "H","L", "M")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("L", "M", "H"))
levels(factor_temperature_vector) <- c("Low", "Medium", "High")
factor_temperature_vector


# Dataframe
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

planets_df <- data.frame(name, type, diameter, rotation, rings)
# Dataframe - particular column
planets_df[1:5, "diameter"]

# Dataframe - filtering
rings_vector <- planets_df$rings
diameter_vector <- planets_df[,3]>=1
planets_df[rings_vector, ]
planets_df[diameter_vector, ]

# Dataframe - filtering with subset
subset(planets_df, subset=rings)
subset(planets_df, subset=diameter < 1)

# Dataframe - ranking
positions <- order(planets_df$diameter)
planets_df[positions, ]


# List
my_list <- list(matrix = all_wars_matrix, df = planets_df, vec = factor_temperature_vector)
# List - select particular element from one item
my_list$vec[2]
my_list[[3]][2]
