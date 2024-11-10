library(shiny)
library(bslib)

# Load data ------------------------------------------------------------------------------------------------------------

# UI -------------------------------------------------------------------------------------------------------------------
ui <- page_sidebar(
    # title = "Language features viewer",
    theme = bs_theme(preset = "quartz"),
    sidebar = sidebar("Language features"),
    card(
        card_header("Geographical locations"),
    )
)

# Server ---------------------------------------------------------------------------------------------------------------
server <- function(input, output) {
  # bs_themer()
}

# Run app
shinyApp(ui = ui, server = server)