
ui<-  dashboardPage(
    skin = "green",
    dashboardHeader(title = "Soil moisture/temperature regimes for Oklahoma State
                 ", titleWidth = 800),
    dashboardSidebar(width = 75,
                     sidebarMenu(
                     menuItem(h4("Soil"), 
                              tabName = "soil_maps", icon = icon("Map")))),
    dashboardBody(
      fluidRow(
        tabItems(
          tabItem(tabName = "soil_maps",
                  box(title = "Select regimes on soil map",
                      width = 3,
                      status ="danger",
                      solidHeader = TRUE,
                      collapsible = TRUE,
                      radioButtons("soil",
                                   label = "",
                                   choices = list("SMR" = "SMR",
                                                  "STR" = "STR"),
                                   selected = "STR")),
                  leafletOutput(outputId = "soil_map", width = "100%", height = 500))))))


