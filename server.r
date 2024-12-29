library(plumber)

run_api <- function() {
  port <- as.numeric(Sys.getenv("PORT", "8000"))  # Get port from Railway environment
  pr <- plumb("api_2.R")  # Use relative path instead of absolute
  pr$run(host="0.0.0.0", port=port)  # Add host parameter for Railway
}

run_api()