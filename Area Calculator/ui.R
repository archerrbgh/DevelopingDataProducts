library(shiny)

shinyUI(fluidPage(
    titlePanel("Area Calculator"),
    sidebarLayout(
        sidebarPanel(
            helpText("Find the area of the specified figure."),
            selectInput("var",
                        label="Choose the shape",
                        choices=list("square",
                                     "rectangle",
                                     "triangle",
                                     "circle",
                                     "parallelogram"),
                        selected="square"),
            conditionalPanel(
                condition = "input.var != 'circle'",
                textInput("length", label=h3("Length"),
                          value = 0)
            ),
            conditionalPanel(
                condition = "input.var == 'circle'",
                textInput("radius", label=h3("Radius"),
                          value = 0)
            ),
            conditionalPanel(
                condition = "input.var == 'rectangle' |
                            input.var == 'triangle' |
                            input.var == 'parallelogram'",
                textInput("width", label=h3("Width"),
                          value = 0)
            )
        ),
        mainPanel(
            h2(textOutput("text1")),
            h1(textOutput("text2"))
        )
    )
))