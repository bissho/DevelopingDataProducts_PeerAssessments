library(UsingR)
data(galton)
shinyServer(
  function(input, output) {
    output$newHist <- renderPlot({
      hist(galton$parent, xlab='parent height', col='lightblue',main='Histogram')
      height <- input$height
      lines(c(mean(galton$parent), mean(galton$parent)), c(0, 200),col="green",lwd=5)
      lines(c(height, height), c(0, 200),col="red",lwd=5)
      dif <- mean(galton$parent) - height
      text(65, 150, paste("dif = ", round(dif,2)))
    })
  }
)
