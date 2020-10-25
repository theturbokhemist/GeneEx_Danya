# source('uploadModule.R')
# source('utility.R')


# Data and functions shared across all sessions in the same R process
# Utility functions not depending on output and input
# The database object
library(shinyjs)
source('allSessions.R')
source('geneExServer.R', local = TRUE)
source('geneExUI.R', local = TRUE)
#options(httr_oob_default = TRUE, httr_oauth_cache=TRUE)
#gmailr::gm_deauth()
#gmailr::gm_auth(id = "517184753467-66jbtn033775257lirarcaemt1vk198j.apps.googleusercontent.com", scope = "full")
#gmailr::gm_auth(email = "geneex.maintainer@gmail.com", scope = "full", use_oob = TRUE)
# gmailr::gm_auth_configure(
#   "517184753467-66jbtn033775257lirarcaemt1vk198j.apps.googleusercontent.com",
#   "bt-bMeJjSB9uQAsNyDGwJpSv")
#gmailr::gm_auth_configure(
#path = "client_secret_517184753467-66jbtn033775257lirarcaemt1vk198j.apps.googleusercontent.com.json")

options(
  gargle_oauth_cache = "secrets",
  gargle_oauth_email = TRUE
)

# gm_auth(cache = gargle::gargle_oauth_cache(),
#         use_oob = TRUE)

shinyApp(
  ui = geneExUI,
  server = geneExServer
)

# dir <- system.file("GeneEx", package = "sRACIPE")
# setwd(dir)
# shiny::shinyAppDir(".")
# https://gargle.r-lib.org/articles/non-interactive-auth.html
# Project-level OAuth cache OAuth needed for gmail
# Do this once
# options(gargle_quiet = FALSE)
# options(gargle_oauth_cache = "secrets")
# gargle::gargle_oauth_cache()
# drive_auth()
# list.files(".secrets/")

# From quickstart 512318824003-96kpf4etrifku29gsf05nqq5c1s2ab55.apps.googleusercontent.com
# hUQBY0GDnCiC0bV_WVVtEGpA

#drive_auth(email = "geneex.maintainer@gmail.com", path = "credentials/credentials.json")

# # source('uploadModule.R')
# # source('utility.R')
# 
# 
# # Data and functions shared across all sessions in the same R process
# # Utility functions not depending on output and input
# # # The database object
# # library(shinyjs)
# # source('allSessions.R')
# source('geneExServer.R', local = TRUE)
# source('geneExUI.R', local = TRUE)
# 
# # options(httr_oob_default = TRUE, httr_oauth_cache=TRUE)
# # gmailr::use_secret_file("credentials.json")
# # gmailr::gm_auth()
# # #gmailr::gm_deauth()
# # gm_auth(email = "geneex.maintainer@gmail.com", path = "credentials.json", use_oob = TRUE)
# # options(httr_oob_default = TRUE, httr_oauth_cache=TRUE)
# # gmailr::clear_token()
# #gmailr::gm_auth_configure(
# #  "517184753467-66jbtn033775257lirarcaemt1vk198j.apps.googleusercontent.com",
# #  "bt-bMeJjSB9uQAsNyDGwJpSv") #,
#   #path = "credentials.json")
# gm_auth_configure(path = "inst/GeneEx/credentials.json")
# # gm_auth()
# # gmailr::gm_deauth()
# #gm_auth_configure(path = "credentials.json")
# #gm_auth(email = TRUE, cache = ".secret")
# #gmailr::gm_auth(email = "geneex.maintainer@gmail.com", scope = "full", use_oob = TRUE)
# #library(googledrive)
# #drive_auth(email = "geneex.maintainer@gmail.com")
# 
# #options(gargle_oauth_email = "geneex.maintainer@gmail.com")
# shinyApp(
#   ui = geneExUI,
#   server = geneExServer
# )
# options(httr_oob_default = TRUE, httr_oauth_cache=TRUE)
# options(
#   gargle_oauth_cache = "secrets",
#   gargle_oauth_email = TRUE
# )
# googledrive::drive_auth(email = "geneex.maintainer@gmail.com", path = "credentials/credentials.json")
# 
# dir <- system.file("GeneEx", package = "sRACIPE")
# # setwd(dir)
# shiny::shinyAppDir(".")