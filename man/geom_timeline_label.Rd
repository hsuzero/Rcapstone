% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_timeline_label.R
\name{geom_timeline_label}
\alias{geom_timeline_label}
\title{Plot Timeline (Label)}
\usage{
geom_timeline_label(
  mapping = NULL,
  data = NULL,
  stat = "identity",
  position = "identity",
  na.rm = FALSE,
  n_max = 5,
  xmin = lubridate::dmy("01/01/2010"),
  xmax = lubridate::dmy("01/01/2016"),
  ctry = "JAPAN",
  show.legend = NA,
  inherit.aes = TRUE,
  ...
)
}
\arguments{
\item{mapping}{A set of aesthetic mappings created by aes()}

\item{data}{A dataframe object containing the earthquake data points
from the \code{eq_location_clean} function that is to be displayed
in this layer of the plot}

\item{stat}{A string representing the statistical transformation for
this layer of the plot}

\item{position}{A string representing the positional adjustment}

\item{na.rm}{A logical value to indicate whether to raise warning when
missing values are removed for the plot}

\item{n_max}{An integer representing the maximum number of data
labels to draw based on the magnitude of the earthquakes}

\item{xmin}{An integer representing the minimum date value using the
\code{lubridate::dmy("dd/mm/yyyy")} function, inclusive}

\item{xmax}{An integer representing the maximum date value using the
\code{lubridate::dmy("dd/mm/yyyy")} function, exclusive}

\item{ctry}{A string representing the country filter for the plot}

\item{show.legend}{A logical value to indicate whether this layer of
the plot should be included in the legends}

\item{inherit.aes}{A logical value to indicate whether to override the
default aesthetics or to combine with them}

\item{...}{A list representing other aesthetics to be passed on to this
layer of the plot}
}
\value{
Creates a layer to plot the GeomTimelineLabel output function. Updates the
        graphic inserting new content/visuals.
}
\description{
This method acts behind de scenes creating a layer to plot the output of GeomTimelinelabel function.
}
\examples{
\dontrun{ggplot(data = y, aes(x = DATE, country = COUNTRY, label = LOCATION, 
                     magnitude = MAGNITUDE)) + 
  geom_timeline(ctry = "USA", xmin = dmy("01/01/2010"), xmax = dmy("01/01/2016")) + 
  geom_timeline_label(n_max = 5, ctry = "USA", 
                      xmin = dmy("01/01/2010"), 
                      xmax = dmy("01/01/2016")) + 
  theme_classic()}
}
