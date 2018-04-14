server = function(input, output, session) {
  
  observeEvent(input$build, {
    
  # incomplete Latin square design
  # this algorithm is only for 
  # even numbers of conditions
  output$table = renderTable({
    
    numcon = as.numeric(input$text) #renderPrint({ input$text })
    latsq = matrix(nrow = numcon, ncol = numcon)
    latsq[1,1] = 1   
    z = 2 # for even cell indices, goes up
    n = 0 # for uneven cell indices, goes down (-n)

    # the first row
    for (i in 2:numcon) {
      if (i %% 2 == 0) {
        latsq[1,i] = z
        z = z + 1
      } 
      else {
        latsq[1,i] = numcon - n
        n = n + 1
      }
    }

    # all following rows
    for (row in 2:numcon) {
      aux = c()
      for (pos in 1:numcon) {
        prev = latsq[row-1,pos]
        if (prev %% numcon == 0) {
          aux[pos] = 1
        } 
        else {
          aux[pos] = prev + 1
        }
      }
      latsq[row,] = aux
    }
    
    latsq = as.data.frame(latsq)
    as.data.frame(lapply(latsq,as.integer))
    
  })
  
  })
}
