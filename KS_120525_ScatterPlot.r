library(ggplot2)
library(ggExtra)
library(ggpointdensity)
library(viridis)

input_folder <- dirname(file.choose())
setwd(input_folder)
csv_files <- list.files(path = input_folder, pattern = "\\.csv$", full.names = TRUE)

for (csv_file in csv_files) {
  
  df <- read.csv(csv_file, stringsAsFactors = FALSE)

  x_col <- colnames(df)[2]
  y_col <- colnames(df)[3]
  
  # xompute correlation using raw read values
  cor_val <- cor(df[[x_col]], df[[y_col]], method = "spearman")  # or "pearson"
  cor_text <- paste0("r = ", round(cor_val, 2))
  
  #Log2 transform for plotting 
  df[[x_col]] <- log2(df[[x_col]] + 1)
  df[[y_col]] <- log2(df[[y_col]] + 1)
  
  #density-colored scatterplot
  p <- ggplot(data = df, mapping = aes(x = .data[[x_col]], y = .data[[y_col]])) +
    geom_pointdensity(method="neighbors") +
    scale_color_viridis(option = "viridis") +
    geom_smooth(method = "lm", color = "red", se = T) +
    annotate(
      "text",
      x = min(df[[x_col]], na.rm = TRUE),   # left edge
      y = max(df[[y_col]], na.rm = TRUE),   # top edge
      label = cor_text,
      hjust = 0, vjust = 1,
      size = 4
    ) +
    labs(
      x = paste0("log2(", x_col, " reads)"),
      y = paste0("log2(", y_col, " reads)"),
      title = tools::file_path_sans_ext(basename(csv_file)),
      color = "Density"
    ) +
    theme_classic() +
    theme(
      #panel.border = element_rect(color = "black", fill = NA, size = 1),
      panel.grid = element_blank(),
      legend.position = c(0.85, 0.15),
      legend.key.size = unit(0.4, "cm"),
      legend.text = element_text(size = 8),
      legend.title = element_text(size = 9)
    )
  
  # Add marginal density plots
  p_marginal <- ggMarginal(
    p,
    type = "density",
    fill = "gray",
    alpha = 0.5,
    margins = "both",
    size = 5,
    groupColour = FALSE
  )
  
  print(p_marginal)
  
  output_file <- paste0(tools::file_path_sans_ext(basename(csv_file)), "_scatterplot.svg")
  ggsave(output_file, plot = p_marginal, width = 6, height = 6, units = "in")
  
  cat("Saved scatterplot for:", csv_file, "\n")
}