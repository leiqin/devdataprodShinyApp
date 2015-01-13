library(shiny)

shinyServer(
	function(input, output) {
		BMI <- reactive({as.numeric(input$mass) / as.numeric(input$height)^2})

		output$BMI <- renderText({round(BMI(), 1)})
		output$msg <- renderText({
			BMI <- BMI()
			msg <- 'optimal weight'
			if (is.na(BMI))
				msg <- 'unknow weight'
			else if (BMI > 30)
				msg <- 'obese'
			else if (BMI > 25)
				msg <- 'overweight'
			else if (BMI < 18.5)
				msg <- 'underweight'
			msg
		})
	}
)
