server <- function(input, output) {
  get_tips <- function(front, back, total_sum, coef) {
    back_tip <- total_sum / (coef * front + back)
    front_tip <- coef * back_tip
    return(
      list(
        back_tip = back_tip,
        front_tip = front_tip
      )
    )
  }

  observe({
    tips <- get_tips(input$front_workers,
                            input$back_workers,
                            input$tip_sum,
                            input$coef)

    output$front_tip <- renderText({
      sprintf("Front tips are %s",
              as.character(round(tips$front_tip, 2)))
    })

    output$back_tip <- renderText({
      sprintf("Back tips are %s",
              as.character(round(tips$back_tip, 2)))
    })
  })


}
