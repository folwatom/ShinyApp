library(ISLR); library(ggplot2)
data(Wage)

shinyServer(
    function(input, output) {
        ds <- reactive({subset(Wage,
                               substring(jobclass,1,1) == input$jobclass &
                               substring(education,1,1) == input$education    
                               )})
        output$plot <- renderPlot({
            q <- qplot(age, wage, data=ds(), main="Wage growth by age")
            q <- q + geom_smooth(method="lm", formula=y~x)
            q 
        })
        
    }
)