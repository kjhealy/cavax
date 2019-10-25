#' Vaccination Exemptions in California Kindergartens, 2014-15
#'
#' A tibble containing data on Personal Belief Exemption (PBE) rates
#' for kindergarden classes in California schools for the 2014-15 school year.
#'
#' @format A tibble with 7,032 rows and 13 columns
#'
#' \describe{
#' \item{\code{code}}{School ID code.}
#' \item{\code{county}}{County name.}
#' \item{\code{name}}{School name.}
#' \item{\code{type}}{Schooly type.}
#' \item{\code{district}}{School district name.}
#' \item{\code{city}}{City location.}
#' \item{\code{enrollment}}{Total kindergarten enrollment.}
#' \item{\code{pbe_pct}}{Rounded PBE.}
#' \item{\code{exempt}}{Percent exempt from providing vaccination records.}
#' \item{\code{med_exempt}}{Percent exempt due to medical reasons.}
#' \item{\code{rel_exempt}}{Percent exempt due to reasons of religious or personal belief.}
#' \item{\code{mwc}}{Inferred category of school.}
#' \item{\code{kind}}{Raw category of school.}
#'}
#'
#' @docType data
#' @keywords datasets
#' @name cavax
#' @source .
'cavax'
