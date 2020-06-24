#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI ----
ui <- fluidPage(
    titlePanel("My Shiny App"),
    sidebarLayout(
        sidebarPanel(
            h2("Installation"),
            p("Shiny is available on CRAN, so you can install it in the usual way from your R console:"),
            code("install.packages(\"shiny\")"),
            br(),
            br(),
            br(),
            img(src = "rstudio.png", hight = 70, width = 200), # Don't know how the tutorial decided the size.
            p("Shiny is a product of",
              a(href = "https://rstudio.com/", "RStudio"))
        ),
        mainPanel(
            h1("Introducing Shiny"), # header
            p("Shiny is a new package from RStudio that makes it", 
              em("incredibly easy"),
              "to build interactive web applications with R."), # first paragraph, with italics section
            br(), # linebreak (additional to that which happens from using p() next) 
            p("For an introduction and live examples, visit the",
              a(href = "https://shiny.rstudio.com", "Shiny homepage")), # use 'href = ' to specify link
            br(),
            br(),
            h2("Features"),
            p("- Build useful web applications with only a few lines of code-no JavaScript required."),
            p("- Shiny applications are automatically 'live' in the same way that",
              strong("spreadsheets"),
              "are live. Outputs change instantly as users modify inputs, without requiring a reload of the browser."))
    )
    
)

# Define server logic ----
server <- function(input, output) {
    
}

# Run the application 
shinyApp(ui = ui, server = server)
