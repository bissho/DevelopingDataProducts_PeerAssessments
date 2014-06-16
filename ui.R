shinyUI(pageWithSidebar(
  headerPanel("Compare your height with galton parents data"),
  sidebarPanel(
    numericInput('height', 'Your Height (inches)', 68, min = 60, max = 75, step = 1),
    submitButton('Submit')
    
  ),
  mainPanel(
    plotOutput('newHist')
  )
))
