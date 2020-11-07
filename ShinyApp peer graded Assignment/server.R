library(shiny)
library(datasets)
library(dplyr)

shinyServer(function(input, output) {
    
    output$table <- renderDataTable({
        disp_seq <- seq(from = input$disp[1], to = input$disp[2], by = 0.1)
        hp_seq <- seq(from = input$hp[1], to = input$hp[2], by = 1)
        data <- transmute(mtcars, Car = rownames(mtcars), MilesPerGal = mpg, 
                          GasSpending = input$dis/mpg*input$cost,
                          Cyl = cyl, Disp = disp, HPs = hp, 
                          Tx = am)
        data <- filter(data, GasSpending <= input$gas, Cyl %in% input$cyl, 
                       Disp %in% disp_seq, HPs %in% hp_seq, Tx %in% input$am)
        data <- mutate(data, Tx = ifelse(Tx==0, "Automatic", "Manual"))
        data <- arrange(data, GasSpending)
        data
    }, options = list(lengthMenu = c(5, 15, 30), pageLength = 30))
    
})