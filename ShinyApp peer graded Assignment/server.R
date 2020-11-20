# server.R file for the shiny app
# You can run the application by clicking 'Run App' 
#
# Developing Data Products: Week 4 Project
# Data Used: mtcars dataset

library(shiny)
library(datasets)
library(dplyr)

shinyServer(function(input, output) {
    output$table <- renderDataTable({
        horsep <- seq(from = input$horsep[1],   to = input$horsep[2],   by = 1)
        mperg <- seq(from = input$mperg[1],  to = input$mperg[2],  by = 0.1)
        cyls <- seq(from = input$cyls[1], to = input$cyls[2], by=2)
        data <- transmute(mtcars, Car = rownames(mtcars), Transmission = am,
                          Cylinders = cyls, Mileage = mperg, 
                          Horsepower = horsep)
        
        data <- filter(data, Cylinders %in% cyls, 
                       Mileage %in% mperg, Horsepower %in% horsep, 
                       Transmission %in% input$am)
        data <- arrange(data, Mileage)
        data
    }, options = list(lengthMenu = c(10, 15, 20, 25), pageLength = 25))
})