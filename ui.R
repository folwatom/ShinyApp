shinyUI(pageWithSidebar(
    headerPanel("Wage growth prediction"),
    sidebarPanel(
        p('Select job class and education level'),
        selectInput('jobclass', label='Job class',
                    choices=list('Industrial' = '1',
                                 'Information' = '2'),
                    selected=1),

        selectInput('education', label='Education level',
                    choices=list('< HS Grad' = '1',
                                 'HS Grad' = '2',
                                 'Some College' = '3',
                                 'College Grad' = '4',
                                 'Advanced Degree' = '5'
                                 ),
                    selected=3)
        
        
    ),
    mainPanel(
        p('This application predicts wage growth by worker age.
          It uses wage and other data for a group of 3000 workers
          in the Mid-Atlantic region.'),
        p('The chart shows worker raw wage for selected job class
          and education level by age (points).'),
        p('The blue line shows wage growth prediction
          (linear regression model).'),
        
        plotOutput('plot')
    )
))