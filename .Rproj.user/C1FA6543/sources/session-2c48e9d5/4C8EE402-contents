library(shiny)

ui <- fluidPage(
  shinyjs::useShinyjs(),
  titlePanel("Tip Jar"),
  tabsetPanel(
    tabPanel("Main Jar",
             numericInput(
               "front_workers",
               "Front Workers",
               value = 5,
               min = 1,
               max = 10,
               step = 1
             ),
             numericInput(
               "back_workers",
               "Back Workers",
               value = 5,
               min = 1,
               max = 10,
               step = 1
             ),
             numericInput(
               "tip_sum",
               "Overall Tips",
               value = 100,
               min = 1,
               max = 1000,
               step = 1
             ),
             numericInput(
               "coef",
               "Coefficient",
               value = 1.5,
               min = 0.5,
               max = 2,
               step = 0.1
             ),
             fluidRow(column(2, verbatimTextOutput("front_tip"))),
             fluidRow(column(2, verbatimTextOutput("back_tip"))))
  )
)
