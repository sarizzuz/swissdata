library(shiny)
data(swiss)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Exploration of the Swiss Fertility and Socioeconomic Indicators (1888) Data"),
    
    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            #Set parameters for varirables
            strong('Histogram parameters'), p(''),
            sliderInput("bins", "Bins for histogram:", min = 1, max = 50, value = 25),
            selectInput('histX', 'Select variable for histogram', names(swiss), selected = 'Fertility'),
            p(''), 
            p(''), 
            p(''),
            
            #Set parameters for scatterplot
            strong('Scatter plot parameters'), p(''),
            selectInput('scatterX', 'Select x axis for scatter plot', 
                        names(swiss), selected = 'Fertility'),
            selectInput('scatterY', 'Select y axis for scatter plot', 
                        names(swiss), selected = 'Agriculture'),
            
            
            #Describe variables
            strong("Variable Description"),
            tags$ul(
                tags$li('Fertility: common standardized fertility measure'),
                tags$li('Agriculture: % of males involved in agriculture as occupation'),
                tags$li('Examination: % draftees receiving highest mark on army examination'),
                tags$li('Education: % education beyond primary school for draftees'),
                tags$li('Catholic: % catholic (as opposed to protestant)'),
                tags$li('Infant.Mortality: % live births who live less than 1 year')
            )
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            p('This app explores the swiss data, a standardized fertility measure 
        and socio-economic indicators for each of 47 French-speaking provinces 
        of Switzerland at about 1888.'),
            p(''),
            p('This app allows the exploration of the following:'),
            p('(1) select one variable and the bin size to display the distribution in a histogram'),
            p('(2) select two variables to display the correlation in a scatter plot and the regression line'),
            
            plotOutput('HistOneVar'),
            p(''),
            plotOutput('ScatThreeVar')
        )
    )
))
