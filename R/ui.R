#' UI for Serenity
#'
#' @return An HTML tag object that can be rendered as HTML using as.character().
#'
ui <- function() {
  tagList(
    includeCSS(system.file("app","www","style.css", package = "serenity")),
    dashboardPage(
      dashboardHeader(
        title = "Serenity",
        titleWidth = 350
      ),
      dashboardSidebar(width = 350),
      dashboardBody(
        phosphorrOutput("pjsbox", height="90vh")
      )
    )
  )
}
