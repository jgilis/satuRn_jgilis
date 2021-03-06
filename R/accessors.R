#' Accessor functions for StatModel class
#'
#' @description Accessor functions for StatModel class
#'              \describe{
#'              \item{getModel(object)}{to get model}
#'              \item{getDF(object)}{to get the residual degrees of freedom of the model}
#'              \item{getDfPosterior(object)}{to get the degrees of freedom of
#'                the empirical Bayes variance estimator}
#'              \item{getDispersion(object)}{to get the dispersion estimate of the model}
#'              \item{getCoef(object)}{to get the parameter estimates of the mean model}
#'              }
#' @aliases statModelAccessors getModel getDF getDfPosterior getDispersion getCoef
#' @rdname statModelAccessors
#'
#' @param object StatModel object
#' @return The requested parameter of the StatModel object

setMethod("getModel",
    signature = "StatModel",
    definition = function(object) object@params
)

#' @rdname statModelAccessors
#' @param object StatModel object
setMethod("getDF",
    signature = "StatModel",
    definition = function(object) object@params$df.residual
)

#' @rdname statModelAccessors
#' @param object StatModel object
setMethod("getDfPosterior",
    signature = "StatModel",
    definition = function(object) object@dfPosterior
)

#' @rdname statModelAccessors
#' @param object StatModel object
setMethod("getDispersion",
    signature = "StatModel",
    definition = function(object) object@params$dispersion
)

#' @rdname statModelAccessors
#' @param object StatModel object
setMethod("getCoef",
    signature = "StatModel",
    definition = function(object) object@params$coefficients
)
