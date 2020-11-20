# Developing Data Products: Week 4 Project
# Data Used: mtcars dataset

library(shiny)
library(markdown)
shinyUI(navbarPage("Dev Data Products peer graded assignment",
                   tabPanel("MTCARS Dataset",
                            sidebarLayout(
                                sidebarPanel(
                                    helpText("choose your preffered filters:"),
                                    checkboxGroupInput('am', 'Tx:', c("Manual"=0, "Auto"=1), selected = c(0,1)),
                                    sliderInput('mperg', 'MPG', min=5, max=80, value=c(5,80), step=8),
                                    sliderInput('horsep', 'HP', min=90, max=400, value=c(90,400), step=15),
                                    checkboxGroupInput('cyl', 'cyl. number',  c("four"=4, "six"=6, "eight"=8), ), #min=4, max=8, value=c(4,8), step=2),
                                    submitButton("Go")
                                ),
                                mainPanel(dataTableOutput('table'))
                            )
                   )))