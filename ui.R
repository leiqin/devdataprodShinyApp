library(shiny)

shinyUI(pageWithSidebar(
	headerPanel('Calculate Body mass index'),
	sidebarPanel(
		textInput('mass', 'Body Mass (kilogram):'),
		textInput('height', 'Height (metre):'),
		p(paste('This App calculate your BMI (Body mass index) from your body mass and height,',
				'a BMI from 18.5 up to 25 may indicate optimal weight,',
				'You can find more information at wikipedia.')),
		a('Body mass index', href='http://en.wikipedia.org/wiki/Body_mass_index')
	),
	mainPanel(
		h3('Your BMI is'),
		verbatimTextOutput('BMI'),
		h3('you are'),
		verbatimTextOutput('msg')
	)
))
