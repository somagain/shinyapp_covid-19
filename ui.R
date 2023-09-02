#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shinydashboard)

dashboardPage(
    dashboardHeader(title ="Exploring the 2020 covid-19 pandemic data with R & shiny", 
                    titleWidth = 650,
                    tags$li(class= "dropdown", tags$a(href="https://www.linkedin.com/in/ndukwe-ijioma-james-6313371aa", icon("linkedin"), "My Profile", target="_blank"),
                            tags$li(class= "dropdown", tags$a(href="https://github.com/freelearner007", icon("github"), "Server code", target="_blank")),
                            tags$li(class= "dropdown",tags$a(href="nill", icon("youtube"), "My channel", target="_blank"))
                    )                            ),
    dashboardSidebar(
      # sidebar menu
      sidebarMenu(
        id = "Sidebar",
        
        # first menu item
        menuItem("Dataset", tabName = "data" , icon = icon("database")),
        menuItem(text = "Visualization", tabName = "Viz" , icon = icon("chart-line")),
        menuItem(text = "choropleth Map", tabName = "Map" , icon = icon("Map"))
      )
      
    ),
    dashboardBody(
      tabItems(
        # first tab Item
        tabItem(tabName = "data", 
                # tab box
                tabBox(id = "t1", width = 12,
                       tabPanel("About", icon = icon("address-card"), h4("tabpanel 1 placeholder")),
                       tabPanel(title = "Data", icon = icon("address-card"), h2("tabpanel 2 placeholder")),
                       tabPanel(title = "Structure", icon = icon("address-card"), h2("tabpanel 2 placeholder")),
                       tabPanel(title = "Summary Stats", icon = icon("address-card"), h2("tabpanel 2 placeholder")),
                       )
                       
                )
      )
    )
)

