## Package documentation ----
# See http://r-pkgs.had.co.nz/man.html#man-packages
#
#' Serenity: Data science in the classroom.
#'
#' @name serenity
#' @docType package
#' @import shiny shinydashboard phosphorr
NULL

## Launch function ----
# See https://github.com/serenity-r/serenity/wiki/Code-Notes#how-does-a-shiny-app-get-bundled-in-an-r-package
#
#' Launch Serenity in the default browser.
#'
#' @examples
#' \dontrun{
#' serenity::serenity()
#' }
#' @import shiny
#' @export
serenity <- function() {
  message("Starting Serenity ...")
  if (!"package:serenity" %in% search()) {
    if (!suppressMessages(require(serenity)))
      stop("Calling serenity start function but serenity is not installed.")
  }

  shiny::shinyApp(ui = ui(),
                  server = server)
}
