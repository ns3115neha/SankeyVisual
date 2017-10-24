library(shiny)
library(rCharts)

shinyServer(function(input, output){
  data <- reactive({
    data <- data.frame(
      source = c("sun.co.ukc",
                 "others1",	 
                 "sun.co.ukc",
                 "others1",	 
                 "sun.co.ukc",	
                 "facebook1",   
                 "sun.co.ukc",	
                 "facebook1",   
                 "sun.co.ukc" , 
                 "google.co.uk1",
                 "sun.co.ukc",  
                 "sun.co.ukc", 
                 "sun.co.ukc" , 
                 "news.co.uk-1",		   
                 "instagram-1",	   
                 "facebook-1",		   
                 "google.co.uk-1",		   
                 "dailymail.co.uk-1",		   
                 "mirror.co.uk-1"	    
        ),
      target = c("others1",
                "others2",
                "others1",
                "sun.co.uk2",	
                "facebook1",
                "other2",
                "facebook1",
                "sun.co.uk3",
                "google.co.uk1",
                "sun.co.uk4",
                "news.co.uk1",
                "instagram1",
                "dailmail.co.uk1",
                "sun.co.ukc",		   
                "sun.co.ukc",		   
                "sun.co.ukc",	   
                "sun.co.ukc",		   
                "sun.co.ukc",		   
                "sun.co.ukc"
      ),
      
      value=c("30","52","30","24","24","66","24","31","14","20","8","3","3","50","20","18","13","12","11"))
    #return(data)
    
  })
  
  

  
  #output$table <- renderTable({
   # return(data())
  #})

  
  output$sankey <-  renderChart2({  
    sankeyPlot <- rCharts$new()
    sankeyPlot$setLib("C:/Users/neha.sharma/Desktop/rCharts_d3_sankey-gh-pages/libraries/widgets/d3_sankey")
    #C:/Users/neha.sharma/Desktop/rCharts_d3_sankey-gh-pages/libraries/widgets/d3_sankey
    sankeyPlot$set(
      data = data(),
      
      nodeWidth = 15,
      nodePadding = 10,
      layout = 40,#32
      labelFormat = ".1%",
      width = 800,
      height = 600
    )
    
    #sankeyPlot$setTemplate(script = "C:/Users/neha.sharma/Desktop/rCharts_d3_sankey-gh-pages/libraries/widgets/d3_sankey/layouts/particle.html")
    
    
   return(sankeyPlot)
  })
})