server<-function(input, output) {
  STR <- raster("OK_STR.grd")
  
  observeEvent(input$soil, {
    Myraster <- switch(input$soil,
                       "SMR" = SMR,
                       "STR" = STR)
    output$soil_map <- renderLeaflet({
      leaflet() %>% addProviderTiles('Esri.WorldImagery') %>%
        addRasterImage(Myraster)
    }) 
  })
  
}