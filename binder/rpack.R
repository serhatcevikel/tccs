    cranlist <- c(
                  "Quandl",
                  "ecb",
                  "eurostat"
    )


    ## cran packages
    for (package in cranlist)
    { 
        if (!require(package, character.only = T, quietly = T))
        {
            install.packages(package)
        }
    }


    devtools::install_github("theislab/nbconvertR")
