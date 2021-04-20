server<-function(input, output) {
  #Import raster files for displaying
  STR <- raster("OK_STR.grd")
  SMR <- raster("OK_SMR.grd")
  observeEvent(input$soil, {
    Myraster <- switch(input$soil,
                       "SMR" = SMR,
                       "STR" = STR)
    # Superimpose maps on global map
    output$soil_map <- renderLeaflet({
      leaflet() %>% addProviderTiles('Esri.WorldImagery') %>%
        addRasterImage(Myraster)
    }) 
  })
  }
