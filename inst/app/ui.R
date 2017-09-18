tagList(
  includeCSS(system.file("app","www","style.css", package = "serenity")),
  dashboardPage(
    dashboardHeader(
      title = "Serenity",
      titleWidth = 350
    ),
    dashboardSidebar(width = 350),
    dashboardBody()
  )
)
