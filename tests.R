# TESTING WHETHER ANSWERS ARE CORRECT

check_postcode_mult <- function(postcode_mult) {
    if (postcode_mult == 7821) {
        cat("The answer is correct! \n")
    } else {
        stop("The answer is wrong!")
    }
}

check_postcode_max <- function(postcode_max) {
    if (postcode_max == 54636) {
        cat("The answer is correct! \n")
    } else {
        stop("The answer is wrong!")
    }
}

check_postcode_max_municipalities <- function(postcode_max_municipalities) {
    check_set <- c(
        7232018, 7232267, 7232285, 7232293, 7232002, 7232003, 7232011,
        7232038, 7232053, 7232065, 7232102, 7232103, 7232132, 7232225,
        7232222, 7232279, 7232006, 7232104, 7232107, 7232123, 7232009,
        7232013, 7232014, 7232015, 7232017, 7232020, 7232024, 7232026,
        7232029, 7232030, 7232034, 7232035, 7232036, 7232039, 7232044,
        7232046, 7232048, 7232057, 7232058, 7232060, 7232061, 7232062,
        7232074, 7232076, 7232077, 7232079, 7232081, 7232083, 7232086,
        7232087, 7232091, 7232092, 7232097, 7232098, 7232099, 7232100,
        7232109, 7232111, 7232115, 7232118, 7232119, 7232120, 7232125,
        7232126, 7232133, 7232134, 7232135, 7232137, 7232203, 7232210,
        7232501, 7232502, 7235501
    )
    check_set_length <- length(check_set)

    if (length(postcode_max_municipalities) == check_set_length) {
        cat("The number of municipalities is correct! \n")
    } else {
        stop("The number of municipalities is not correct!")
    }

    check_set_intersect <- intersect(postcode_max_municipalities, check_set)
    if (length(check_set_intersect) == check_set_length) {
        cat("The answer is correct! \n")
    } else {
        stop("The answer is wrong!")
    }
}

check_postcode_area_max <- function(postcode_area_max) {
    if (postcode_area_max == 17268) {
        cat("The answer is correct! \n")
    } else {
        stop("The answer is wrong!")
    }
}

check_area_max <- function(area_max) {
    if (area_max == 891) {
        cat("The answer is correct! \n")
    } else {
        stop("The answer is wrong!")
    }
}

check_ags_var_max <- function(ags_var_max) {
    if (ags_var_max == 8111000) {
        cat("The answer is correct! \n")
    } else {
        stop("The answer is wrong!")
    }
}

check_ags_var_min <- function(ags_var_min) {
    if (ags_var_min == 9272452) {
        cat("The answer is correct! \n")
    } else {
        stop("The answer is wrong!")
    }
}
