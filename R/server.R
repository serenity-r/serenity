#' Server for Serenity.
#'
#' @param input input
#' @param output output
#' @param session session
#'
#' @import shiny phosphorr
server <- function(input, output, session) {
  output$pjsbox <- renderPhosphorr({
    phosphorr()
  })
}
