# tm_shape(ca_counties) +
#   tm_polygons("RSEI_AIR")


# tm_shape(bay_counties) +
#   tm_polygons("PEOPCOLORPCT") +
#   tm_text("Group.1") +
# tm_shape(bay_counties) +
#   tm_symbols("D5_PWDIS")

# tm_shape(ca_counties) +
#   tm_polygons("P_D2_PM25")


# tm_shape(ca_counties) +
#   tm_polygons("D2_PWDIS")

# tm_symbols(size = "PEOPCOLORPCT") +
# tm_text(text = "County",
#         size = 0.5,
#         remove.overlap = TRUE) +


# filter for all counties considered in the bay area of California
# bay <- ejscreen %>% 
#   dplyr::filter(CNTY_NAME %in% c("San Francisco County", "Alameda County", "Santa Clara County", "Marin County", "San Mateo County", "Sonoma County", "Napa County", "Solano County", "Contra Costa County"))

# find the average value in for each environmental justice variable by each bay area county
# bay_counties <- aggregate(bay, by = list(bay$CNTY_NAME), FUN = mean)

# trying out bivariate scale
# Cancer risk by percentile people of color
tm_shape(top3_county) +
  tm_polygons(tm_vars(c("P_D2_CANCER", "P_PEOPCOLORPCT"),
                      multivariate = TRUE)) +
  tm_facets("CNTY_NAME")

# cancer risk by diesel
tm_shape(top3_county) +
  tm_fill(tm_vars(c("P_PEOPCOLORPCT", "P_D2_CANCER"),
                  multivariate = TRUE)) +
  tm_facets("CNTY_NAME")

tm_shape(top3_county) +
  tm_fill(tm_vars(c("P_PEOPCOLORPCT", "P_D2_PM25"),
                  multivariate = TRUE)) +
  tm_facets("CNTY_NAME")

tm_shape(top3_county) +
  tm_fill(tm_vars(c("P_PEOPCOLORPCT", "P_D2_DSLPM"),
                  multivariate = TRUE)) +
  tm_facets("CNTY_NAME")

# county maps of diesel particulate matter
tm_shape(top3_county) +
  tm_polygons(fill = "P_D2_DSLPM") +
  tm_facets("CNTY_NAME")

# County maps of cancer risk
tm_shape(top3_county) +
  tm_polygons(fill = "P_D2_CANCER") +
  tm_facets("CNTY_NAME") +
  tm_borders(lwd = 0)



top3_fresno <- california %>% 
  filter(CNTY_NAME == "Fresno County")
tm_shape(ca_counties) +
  tm_polygons(tm_vars(c("P_D2_CANCER","P_PEOPCOLORPCT"), multivariate = TRUE)) +
  tm_title("Lifetime cancer risk via inhalation of toxins, by county", 
           frame = FALSE,
           size = 1) +
  tm_scalebar(position = "right") +
  tm_compass(position = c("left", "bottom"))

tm_shape(top3_fresno) +
  tm_fill(fill = c("P_D2_DSLPM", "P_D2_PM25", "P_PEOPCOLORPCT"),
          fill.scale = list(
            tm_scale_intervals(values = "brewer.purples"),
            tm_scale_intervals(values = "brewer.blues"),
            tm_scale_intervals(values = "brewer.YlGn"))) +
  tm_title("Toxic Air Metrics alongside People of Color (percentile) for Sacramento County")


top3_tul <- california %>% 
  filter(CNTY_NAME == "Tulare County")
top3_yub <- california %>% 
  filter(CNTY_NAME == "Yuba County")