
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Dynamics of International Giving: How Heuristics Shape Individual Donor Preferences

[Suparna Chaudhry](http://www.suparnachaudhry.com/) • Department of
International Affairs • Lewis & Clark College  
[Andrew Heiss](https://www.andrewheiss.com/) • Andrew Young School of
Policy Studies • Georgia State University

-----

[![NVSQ
DOI](https://img.shields.io/badge/NVSQ%20DOI-Forthcoming-brightgreen)](#)
[![OSF
DOI](https://img.shields.io/badge/OSF-10.17605%2FOSF.IO%2FFG53W-blue)](https://dx.doi.org/10.17605/OSF.IO/FG53W)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4058987.svg)](https://doi.org/10.5281/zenodo.4058987)

> Suparna Chaudhry and Andrew Heiss. 2020. “Dynamics of International
> Giving: How Heuristics Shape Individual Donor Preferences,” *Nonprofit
> and Voluntary Sector Quarterly* (forthcoming).

**All this project’s materials are free and open:**

  - [Download the data](#data)
  - [See the analysis notebook
    website](https://stats.andrewheiss.com/ngo-crackdowns-philanthropy/)

![Preregistered](img/preregistered_large_color.png)   ![Open
data](img/data_large_color.png)   ![Open](img/materials_large_color.png)

-----

## Abstract

State restrictions on non-governmental organizations (NGOs) have become
increasingly pervasive across the globe. While this crackdown has been
shown to have a negative impact on public funding flows, we know little
about how it impacts private philanthropy. How does information about
crackdown abroad, as well as organizational attributes of nonprofits
affect individual donors’ willingness to donate internationally? Using a
survey experiment, we find that learning about repressive NGO
environments increases generosity in that already-likely donors are
willing to donate substantially more to legally besieged nonprofits.
This generosity persists when mediated by two organizational-level
heuristics: NGO issue areas and main funding sources. We discuss the
implications of our results on how nonprofits can use different framing
appeals to increase fundraising at a time when traditional public donor
funding to such organizations is decreasing.

-----

This repository contains the data and code for our paper. Our pre-print
is online here:

> Suparna Chaudhry and Andrew Heiss. 2020. “Dynamics of International
> Giving: How Heuristics Shape Individual Donor Preferences”". Accessed
> October 1, 2020. Online at <https://dx.doi.org/10.17605/OSF.IO/FG53W>

The paper is published at *Nonprofit and Voluntary Sector Quarterly*:

> Suparna Chaudhry and Andrew Heiss. 2020. “Dynamics of International
> Giving: How Heuristics Shape Individual Donor Preferences,” *Nonprofit
> and Voluntary Sector Quarterly* (forthcoming).

## How to cite

Please cite this compendium as:

> Suparna Chaudhry and Andrew Heiss. 2020. *Compendium of R code and
> data for “Dynamics of International Giving: How Heuristics Shape
> Individual Donor Preferences”*. Accessed October 1, 2020. Online at
> <https://dx.doi.org/10.17605/OSF.IO/FG53W>

## How to download and install

You can either [download the compendium as a ZIP
file](/archive/master.zip) or use GitHub to clone or fork the compendium
repository (see the green “Clone or download” button at the top of the
GitHub page).

In order to reproduce this project, you’ll need to install the
compendium as an R package. After downloading the compendium, do the
following:

1.  Open the compendium as a project in RStudio (double click on
    `crackdownsphilanthropy.proj`).

2.  Install the **pkgbuild**, **devtools**, **rstan**, and
    **rstantools** packages, either with RStudio’s “Packages” panel or
    by running `install.packages(c("pkgbuild", "devtools", "rstan",
    "rstantools"))`

3.  You need to compile the Stan C++ binary DLLs before building and
    installing the actual **crackdownsphilanthropy** compendium package
    ([see here for details about
    why](https://mc-stan.org/rstantools/articles/minimal-rstan-package.html#documentation)).
    Run these two lines in R:
    
    ``` r
    pkgbuild::compile_dll()  # This will probably take a few minutes
    roxygen2::roxygenize()
    ```

4.  Finally, build the compendium package by running this in R:
    
    ``` r
    devtools::install(".")
    ```

You should now be able to run `library(crackdownsphilanthropy)` and
reproduce all the findings in the paper (as well as the paper itself).

To reproduce the analysis, run `make build` from RStudio’s “Terminal”
panel. Open `analysis/_site/` to see the results. Run `make serve` to
serve the site at <http://localhost:7000>.

To repdocuce the paper, run `make html` or `make tex` or `make docx` or
`make paper` (for all three output formats) from the terminal. Open
`manuscript/` (or `manuscript/tex_out/` for PDFs) to see the results.

## Data

This project includes the following data files:

  - [`data/raw_data/crackdowns_philanthropy_raw.csv`](data/raw_data/crackdowns_philanthropy_raw.csv):
    Original results from the Qualtrics survey
  - [`data/derived_data/results_clean.csv`](data/derived_data/results_clean.csv):
    Final version of the data, cleaned with
    [`analysis/01_clean-data.Rmd`](analysis/01_clean-data.Rmd)
  - [`data/derived_data/results_clean.yaml`](data/derived_data/results_clean.yaml):
    [YAML metadata](https://csvy.org/) describing the syntax of the
    cleaned data
  - [`data/derived_data/results_clean.rds`](data/derived_data/results_clean.rds):
    `.rds` version of cleaned data
  - [`data/derived_data/codes_to_exclude.csv`](data/derived_data/codes_to_exclude.csv):
    Unique IDs of participants who failed the attention checks or took
    the survey outside of Mechanical Turk. These are excluded from the
    final data in
    [`analysis/01_clean-data.Rmd`](analysis/01_clean-data.Rmd)
  - [`raw_data/ipums-cps/`](raw_data/ipums-cps/): Data extracts from the
    US Census’s Current Population Survey (CPS) via the [Minnesota
    Population Center’s Integrated Public Use Microdata Series
    (IPUMS)](https://cps.ipums.org/cps/):
      - `cps_2017.dat.gz`: 2017 ASEC, with the following variables
        selected (in addition to whatever IPUMS preselects by default)
        (and weighted by `ASECWT`):
          - `AGE`
          - `SEX`
          - `EDUC`
          - `INCTOT`
      - `cps_09_2015.dat.gz`: September 2015 basic monthly CPS (which
        includes the Volunteer Supplement), with the following variables
        selected (and weighted by `VLSUPPWT`):
          - `VLSTATUS`
          - `VLDONATE`

## Licenses

**Text and figures:** All prose and images are licensed under Creative
Commons ([CC-BY-4.0](http://creativecommons.org/licenses/by/4.0/))

**Code:** With only two exceptions, all the code is dual-licensed under
the [MIT License](LICENSE.md) and
[GPL 3](https://www.gnu.org/licenses/gpl-3.0.en.html). Two dependencies
related to Stan compilation—[`R/stanmodels.R`](R/stanmodels.R) and
[`tools/make_cc.R`](tools/make_cc.R)—are licensed as GPL 3 only, and we
can’t backwards-license them as only MIT. Additionally, any binary files
generated by those files (i.e. the compiled Stan code) is inherently
GPL-licensed, which also makes this entire project GPL-licensed in the
end. But since we’ve dual-licensed pretty much everything else, you
treat everything as MIT unless a file is explicitly GPL-only.

*(Here are a bunch of resources about the vagaries of mixing MIT and GPL
licenses: [link](https://github.com/ropensci/unconf17/issues/32);
[link](https://github.com/stan-dev/rstantools/issues/17);
[link](https://opensource.stackexchange.com/questions/1640/if-im-using-a-gpl-3-library-in-my-project-can-i-license-my-project-under-mit-l))*

## Contributions

We welcome contributions from everyone. Before you get started, please
see our [contributor guidelines](CONTRIBUTING.md). Please note that this
project is released with a [Contributor Code of Conduct](CONDUCT.md). By
participating in this project you agree to abide by its terms.
