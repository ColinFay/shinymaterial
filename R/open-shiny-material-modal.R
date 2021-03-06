#' Open a material modal programmatically.
#'
#' Open a material modal programmatically (server side).
#' @param session The session object passed to function given to shinyServer.
#' @param modal_id String. The ID of the modal to open.
#' @examples
#' \dontrun{
#' open_material_modal(session, "example_modal")
#' }
open_material_modal <- function(session, modal_id){
  
  js_code <- paste0("$('#", modal_id, "').modal('open');")
  
  session$sendCustomMessage(
    type = "shinymaterialJS",
    js_code
  )
  
}