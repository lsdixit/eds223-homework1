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
