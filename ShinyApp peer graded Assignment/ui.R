library(markdown)

shinyUI(fluidPage(
    
    titlePanel("Please Choose a car in accordance with your needs:"),
    
    sidebarLayout(
        sidebarPanel(
            helpText("Select the characteristics of the car of your choice: "),
            numericInput('dis', 'Dist(miles):', 50, min = 1, max = 1000),
            numericInput('cost', 'Gas Price (/gallon):', 2.41, min = 2, max = 4, step=0.01),
            numericInput('gas', 'Max Spending on gas:', 50, min=1, max=1000),
            checkboxGroupInput('cyl', 'No. of cyl:', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8)),
            sliderInput('disp', 'Disp', min=70, max=480, value=c(70,480), step=10),
            sliderInput('hp', 'Horsepower', min=50, max=340, value=c(50,340), step=10),
            checkboxGroupInput('am', 'Tx:', c("Automatic"=0, "Manual"=1), selected = c(0,1))
        ),
        mainPanel(
            dataTableOutput('table')
        )
    )
    
)
)   