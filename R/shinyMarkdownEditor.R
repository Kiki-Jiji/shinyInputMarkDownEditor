#' <Add Title>
#'
#' <Add Description>
#'
#' @importFrom reactR createReactShinyInput
#' @importFrom htmltools htmlDependency tags
#'
#' @export
shinyMarkdownEditorInput <- function(inputId, default = "") {
  reactR::createReactShinyInput(
    inputId,
    "shinyMarkdownEditor",
    htmltools::htmlDependency(
      name = "shinyMarkdownEditor-input",
      version = "1.0.0",
      src = "www/shinyMarkdownEditor/shinyMarkdownEditor",
      package = "shinyMarkdownEditor",
      script = "shinyMarkdownEditor.js"
    ),
    default,
    list(),
    htmltools::tags$span
  )
}

#' <Add Title>
#'
#' <Add Description>
#'
#' @export
updateShinyMarkdownEditorInput <- function(session, inputId, value, configuration = NULL) {
  message <- list(value = value)
  if (!is.null(configuration)) message$configuration <- configuration
  session$sendInputMessage(inputId, message);
}