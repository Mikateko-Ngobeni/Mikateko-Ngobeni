{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "420b7173",
   "metadata": {
    "_cell_guid": "a4c0be60-69c1-4b22-a755-f7ef3fab1278",
    "_uuid": "495f3628-a490-4180-a863-580bc7993ecf",
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.011677,
     "end_time": "2022-05-22T15:05:51.922153",
     "exception": false,
     "start_time": "2022-05-22T15:05:51.910476",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Introduction to Cyclistic business case scenario\n",
    "\n",
    "## Case Study\n",
    "\n",
    "You are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations.\n",
    "\n",
    "## About Cyclistic\n",
    "\n",
    "In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.\n",
    "Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.\n",
    "Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.\n",
    "\n",
    "## Stakeholders and teams\n",
    "\n",
    "* **Lily Moreno**: The director of marketing and your manager. Moreno is responsible for the development of campaigns and initiatives to promote the bike-share program. These may include email, social media, and other channels.\n",
    "* **Cyclistic marketing analytics team**: A team of data analysts who are responsible for collecting, analyzing, and reporting data that helps guide Cyclistic marketing strategy. You joined this team six months ago and have been busy learning about Cyclistic’s mission and business goals — as well as how you, as a junior data analyst, can help Cyclistic achieve them.\n",
    "* **Cyclistic executive team**: The notoriously detail-oriented executive team will decide whether to approve the recommended marketing program.\n",
    "\n",
    "## Director's business goal\n",
    "\n",
    "Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.\n",
    "\n",
    "## Business Task\n",
    "\n",
    "The marketing team wants to understand how casual riders and annual members use Cyclistic bikes differently. from these insights the team will design a new marketing strategy to convert casual riders into annual members. Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualisations."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "884b57c7",
   "metadata": {
    "papermill": {
     "duration": 0.010241,
     "end_time": "2022-05-22T15:05:51.944370",
     "exception": false,
     "start_time": "2022-05-22T15:05:51.934129",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Data source information\n",
    "\n",
    "Cyclistic's historical trip data will be used to analyze and identify trends. The data used for this business task was ethically sourced from and made available by Motivate International Inc. under this license https://www.divvybikes.com/data-license-agreement . All customer information is protected and kept private to prevent unethical use of data. The timeframe of the data collected is between May 2021 and April 2022. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b4d38daf",
   "metadata": {
    "papermill": {
     "duration": 0.010136,
     "end_time": "2022-05-22T15:05:51.965014",
     "exception": false,
     "start_time": "2022-05-22T15:05:51.954878",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Data cleaning and manipulation\n",
    "\n",
    "Data must be cleaned, manipulated and formated correctly to ensure a smooth analysis process. The below packages assist with data wrangling."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "fd1573b2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:05:51.990220Z",
     "iopub.status.busy": "2022-05-22T15:05:51.988048Z",
     "iopub.status.idle": "2022-05-22T15:08:15.506637Z",
     "shell.execute_reply": "2022-05-22T15:08:15.504384Z"
    },
    "papermill": {
     "duration": 143.534236,
     "end_time": "2022-05-22T15:08:15.509657",
     "exception": false,
     "start_time": "2022-05-22T15:05:51.975421",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "Warning message in install.packages(\"dplyr\"):\n",
      "“installation of package ‘dplyr’ had non-zero exit status”\n",
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    }
   ],
   "source": [
    "install.packages(\"dplyr\")\n",
    "install.packages(\"readr\")\n",
    "install.packages(\"tidyverse\")\n",
    "install.packages(\"ggplot2\")\n",
    "install.packages(\"lubridate\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "63632f24",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:08:15.570640Z",
     "iopub.status.busy": "2022-05-22T15:08:15.539463Z",
     "iopub.status.idle": "2022-05-22T15:08:16.289161Z",
     "shell.execute_reply": "2022-05-22T15:08:16.287186Z"
    },
    "papermill": {
     "duration": 0.765956,
     "end_time": "2022-05-22T15:08:16.292440",
     "exception": false,
     "start_time": "2022-05-22T15:08:15.526484",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘dplyr’\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:stats’:\n",
      "\n",
      "    filter, lag\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:base’:\n",
      "\n",
      "    intersect, setdiff, setequal, union\n",
      "\n",
      "\n",
      "── \u001b[1mAttaching packages\u001b[22m ─────────────────────────────────────── tidyverse 1.3.1 ──\n",
      "\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2\u001b[39m 3.3.6     \u001b[32m✔\u001b[39m \u001b[34mpurrr  \u001b[39m 0.3.4\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtibble \u001b[39m 3.1.6     \u001b[32m✔\u001b[39m \u001b[34mstringr\u001b[39m 1.4.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtidyr  \u001b[39m 1.2.0     \u001b[32m✔\u001b[39m \u001b[34mforcats\u001b[39m 0.5.1\n",
      "\n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\n",
      "\n",
      "Attaching package: ‘lubridate’\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:base’:\n",
      "\n",
      "    date, intersect, setdiff, union\n",
      "\n",
      "\n"
     ]
    }
   ],
   "source": [
    "library(dplyr)\n",
    "library(readr)\n",
    "library(tidyverse)\n",
    "library(ggplot2)\n",
    "library(lubridate)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "31b7d3dc",
   "metadata": {
    "papermill": {
     "duration": 0.011834,
     "end_time": "2022-05-22T15:08:16.315789",
     "exception": false,
     "start_time": "2022-05-22T15:08:16.303955",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Below is how is a demonstration of how the data was imported."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "9eb8dafd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:08:16.342328Z",
     "iopub.status.busy": "2022-05-22T15:08:16.340321Z",
     "iopub.status.idle": "2022-05-22T15:10:36.147603Z",
     "shell.execute_reply": "2022-05-22T15:10:36.145800Z"
    },
    "papermill": {
     "duration": 139.834583,
     "end_time": "2022-05-22T15:10:36.161756",
     "exception": false,
     "start_time": "2022-05-22T15:08:16.327173",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 13</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>start_lat</th><th scope=col>start_lng</th><th scope=col>end_lat</th><th scope=col>end_lng</th><th scope=col>member_casual</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>C809ED75D6160B2A</td><td>electric_bike</td><td>2021-05-30 11:58:15</td><td>2021-05-30 12:10:39</td><td></td><td></td><td></td><td></td><td>41.90</td><td>-87.63</td><td>41.89</td><td>-87.61</td><td>casual</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>DD59FDCE0ACACAF3</td><td>electric_bike</td><td>2021-05-30 11:29:14</td><td>2021-05-30 12:14:09</td><td></td><td></td><td></td><td></td><td>41.88</td><td>-87.62</td><td>41.79</td><td>-87.58</td><td>casual</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>0AB83CB88C43EFC2</td><td>electric_bike</td><td>2021-05-30 14:24:01</td><td>2021-05-30 14:25:13</td><td></td><td></td><td></td><td></td><td>41.92</td><td>-87.70</td><td>41.92</td><td>-87.70</td><td>casual</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>7881AC6D39110C60</td><td>electric_bike</td><td>2021-05-30 14:25:51</td><td>2021-05-30 14:41:04</td><td></td><td></td><td></td><td></td><td>41.92</td><td>-87.70</td><td>41.94</td><td>-87.69</td><td>casual</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>853FA701B4582BAF</td><td>electric_bike</td><td>2021-05-30 18:15:39</td><td>2021-05-30 18:22:32</td><td></td><td></td><td></td><td></td><td>41.94</td><td>-87.69</td><td>41.94</td><td>-87.70</td><td>casual</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>F5E63DFD96B2A737</td><td>electric_bike</td><td>2021-05-30 11:33:41</td><td>2021-05-30 11:57:17</td><td></td><td></td><td></td><td></td><td>41.88</td><td>-87.63</td><td>41.89</td><td>-87.62</td><td>casual</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 13\n",
       "\\begin{tabular}{r|lllllllllllll}\n",
       "  & ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & start\\_station\\_id & end\\_station\\_name & end\\_station\\_id & start\\_lat & start\\_lng & end\\_lat & end\\_lng & member\\_casual\\\\\n",
       "  & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t1 & C809ED75D6160B2A & electric\\_bike & 2021-05-30 11:58:15 & 2021-05-30 12:10:39 &  &  &  &  & 41.90 & -87.63 & 41.89 & -87.61 & casual\\\\\n",
       "\t2 & DD59FDCE0ACACAF3 & electric\\_bike & 2021-05-30 11:29:14 & 2021-05-30 12:14:09 &  &  &  &  & 41.88 & -87.62 & 41.79 & -87.58 & casual\\\\\n",
       "\t3 & 0AB83CB88C43EFC2 & electric\\_bike & 2021-05-30 14:24:01 & 2021-05-30 14:25:13 &  &  &  &  & 41.92 & -87.70 & 41.92 & -87.70 & casual\\\\\n",
       "\t4 & 7881AC6D39110C60 & electric\\_bike & 2021-05-30 14:25:51 & 2021-05-30 14:41:04 &  &  &  &  & 41.92 & -87.70 & 41.94 & -87.69 & casual\\\\\n",
       "\t5 & 853FA701B4582BAF & electric\\_bike & 2021-05-30 18:15:39 & 2021-05-30 18:22:32 &  &  &  &  & 41.94 & -87.69 & 41.94 & -87.70 & casual\\\\\n",
       "\t6 & F5E63DFD96B2A737 & electric\\_bike & 2021-05-30 11:33:41 & 2021-05-30 11:57:17 &  &  &  &  & 41.88 & -87.63 & 41.89 & -87.62 & casual\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 13\n",
       "\n",
       "| <!--/--> | ride_id &lt;chr&gt; | rideable_type &lt;chr&gt; | started_at &lt;chr&gt; | ended_at &lt;chr&gt; | start_station_name &lt;chr&gt; | start_station_id &lt;chr&gt; | end_station_name &lt;chr&gt; | end_station_id &lt;chr&gt; | start_lat &lt;dbl&gt; | start_lng &lt;dbl&gt; | end_lat &lt;dbl&gt; | end_lng &lt;dbl&gt; | member_casual &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | C809ED75D6160B2A | electric_bike | 2021-05-30 11:58:15 | 2021-05-30 12:10:39 | <!----> | <!----> | <!----> | <!----> | 41.90 | -87.63 | 41.89 | -87.61 | casual |\n",
       "| 2 | DD59FDCE0ACACAF3 | electric_bike | 2021-05-30 11:29:14 | 2021-05-30 12:14:09 | <!----> | <!----> | <!----> | <!----> | 41.88 | -87.62 | 41.79 | -87.58 | casual |\n",
       "| 3 | 0AB83CB88C43EFC2 | electric_bike | 2021-05-30 14:24:01 | 2021-05-30 14:25:13 | <!----> | <!----> | <!----> | <!----> | 41.92 | -87.70 | 41.92 | -87.70 | casual |\n",
       "| 4 | 7881AC6D39110C60 | electric_bike | 2021-05-30 14:25:51 | 2021-05-30 14:41:04 | <!----> | <!----> | <!----> | <!----> | 41.92 | -87.70 | 41.94 | -87.69 | casual |\n",
       "| 5 | 853FA701B4582BAF | electric_bike | 2021-05-30 18:15:39 | 2021-05-30 18:22:32 | <!----> | <!----> | <!----> | <!----> | 41.94 | -87.69 | 41.94 | -87.70 | casual |\n",
       "| 6 | F5E63DFD96B2A737 | electric_bike | 2021-05-30 11:33:41 | 2021-05-30 11:57:17 | <!----> | <!----> | <!----> | <!----> | 41.88 | -87.63 | 41.89 | -87.62 | casual |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          rideable_type started_at          ended_at           \n",
       "1 C809ED75D6160B2A electric_bike 2021-05-30 11:58:15 2021-05-30 12:10:39\n",
       "2 DD59FDCE0ACACAF3 electric_bike 2021-05-30 11:29:14 2021-05-30 12:14:09\n",
       "3 0AB83CB88C43EFC2 electric_bike 2021-05-30 14:24:01 2021-05-30 14:25:13\n",
       "4 7881AC6D39110C60 electric_bike 2021-05-30 14:25:51 2021-05-30 14:41:04\n",
       "5 853FA701B4582BAF electric_bike 2021-05-30 18:15:39 2021-05-30 18:22:32\n",
       "6 F5E63DFD96B2A737 electric_bike 2021-05-30 11:33:41 2021-05-30 11:57:17\n",
       "  start_station_name start_station_id end_station_name end_station_id start_lat\n",
       "1                                                                     41.90    \n",
       "2                                                                     41.88    \n",
       "3                                                                     41.92    \n",
       "4                                                                     41.92    \n",
       "5                                                                     41.94    \n",
       "6                                                                     41.88    \n",
       "  start_lng end_lat end_lng member_casual\n",
       "1 -87.63    41.89   -87.61  casual       \n",
       "2 -87.62    41.79   -87.58  casual       \n",
       "3 -87.70    41.92   -87.70  casual       \n",
       "4 -87.70    41.94   -87.69  casual       \n",
       "5 -87.69    41.94   -87.70  casual       \n",
       "6 -87.63    41.89   -87.62  casual       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclist_data <- list.files(path = \"../input/cyclistic-trip-data\",\n",
    "                           recursive = TRUE, full.names = TRUE) \n",
    "                           \n",
    "cyclistic_data_merged <- do.call(rbind, lapply(cyclist_data, read.csv))\n",
    "\n",
    "head(cyclistic_data_merged)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e1c83bc6",
   "metadata": {
    "papermill": {
     "duration": 0.011478,
     "end_time": "2022-05-22T15:10:36.185278",
     "exception": false,
     "start_time": "2022-05-22T15:10:36.173800",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Observing the data\n",
    "\n",
    "This is where we take a look at our data to see what can be changed,added or removed before conducting the analysis."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "fca2b194",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:10:36.211706Z",
     "iopub.status.busy": "2022-05-22T15:10:36.210131Z",
     "iopub.status.idle": "2022-05-22T15:10:36.227808Z",
     "shell.execute_reply": "2022-05-22T15:10:36.226090Z"
    },
    "papermill": {
     "duration": 0.033319,
     "end_time": "2022-05-22T15:10:36.230142",
     "exception": false,
     "start_time": "2022-05-22T15:10:36.196823",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "colnames(cyclistic_data_merged)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "7ba24174",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:10:36.256997Z",
     "iopub.status.busy": "2022-05-22T15:10:36.255443Z",
     "iopub.status.idle": "2022-05-22T15:10:36.287979Z",
     "shell.execute_reply": "2022-05-22T15:10:36.285954Z"
    },
    "papermill": {
     "duration": 0.048363,
     "end_time": "2022-05-22T15:10:36.290282",
     "exception": false,
     "start_time": "2022-05-22T15:10:36.241919",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t5757551 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"C809ED75D6160B2A\" \"DD59FDCE0ACACAF3\" \"0AB83CB88C43EFC2\" \"7881AC6D39110C60\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : chr  \"2021-05-30 11:58:15\" \"2021-05-30 11:29:14\" \"2021-05-30 14:24:01\" \"2021-05-30 14:25:51\" ...\n",
      " $ ended_at          : chr  \"2021-05-30 12:10:39\" \"2021-05-30 12:14:09\" \"2021-05-30 14:25:13\" \"2021-05-30 14:41:04\" ...\n",
      " $ start_station_name: chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_station_id  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_name  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_id    : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.6 -87.6 -87.7 -87.7 -87.7 ...\n",
      " $ end_lat           : num  41.9 41.8 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.6 -87.6 -87.7 -87.7 -87.7 ...\n",
      " $ member_casual     : chr  \"casual\" \"casual\" \"casual\" \"casual\" ...\n"
     ]
    }
   ],
   "source": [
    "str(cyclistic_data_merged)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "de0e4988",
   "metadata": {
    "papermill": {
     "duration": 0.011797,
     "end_time": "2022-05-22T15:10:36.314010",
     "exception": false,
     "start_time": "2022-05-22T15:10:36.302213",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Data wrangling \n",
    "\n",
    "Below, the started at and ended at data is being converted into datetime values. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "fa1aba75",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:10:36.341707Z",
     "iopub.status.busy": "2022-05-22T15:10:36.339838Z",
     "iopub.status.idle": "2022-05-22T15:10:49.508648Z",
     "shell.execute_reply": "2022-05-22T15:10:49.506853Z"
    },
    "papermill": {
     "duration": 13.18594,
     "end_time": "2022-05-22T15:10:49.511871",
     "exception": false,
     "start_time": "2022-05-22T15:10:36.325931",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 13</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>start_lat</th><th scope=col>start_lng</th><th scope=col>end_lat</th><th scope=col>end_lng</th><th scope=col>member_casual</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>C809ED75D6160B2A</td><td>electric_bike</td><td>2021-05-30 11:58:15</td><td>2021-05-30 12:10:39</td><td></td><td></td><td></td><td></td><td>41.90</td><td>-87.63</td><td>41.89</td><td>-87.61</td><td>casual</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>DD59FDCE0ACACAF3</td><td>electric_bike</td><td>2021-05-30 11:29:14</td><td>2021-05-30 12:14:09</td><td></td><td></td><td></td><td></td><td>41.88</td><td>-87.62</td><td>41.79</td><td>-87.58</td><td>casual</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>0AB83CB88C43EFC2</td><td>electric_bike</td><td>2021-05-30 14:24:01</td><td>2021-05-30 14:25:13</td><td></td><td></td><td></td><td></td><td>41.92</td><td>-87.70</td><td>41.92</td><td>-87.70</td><td>casual</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>7881AC6D39110C60</td><td>electric_bike</td><td>2021-05-30 14:25:51</td><td>2021-05-30 14:41:04</td><td></td><td></td><td></td><td></td><td>41.92</td><td>-87.70</td><td>41.94</td><td>-87.69</td><td>casual</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>853FA701B4582BAF</td><td>electric_bike</td><td>2021-05-30 18:15:39</td><td>2021-05-30 18:22:32</td><td></td><td></td><td></td><td></td><td>41.94</td><td>-87.69</td><td>41.94</td><td>-87.70</td><td>casual</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>F5E63DFD96B2A737</td><td>electric_bike</td><td>2021-05-30 11:33:41</td><td>2021-05-30 11:57:17</td><td></td><td></td><td></td><td></td><td>41.88</td><td>-87.63</td><td>41.89</td><td>-87.62</td><td>casual</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 13\n",
       "\\begin{tabular}{r|lllllllllllll}\n",
       "  & ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & start\\_station\\_id & end\\_station\\_name & end\\_station\\_id & start\\_lat & start\\_lng & end\\_lat & end\\_lng & member\\_casual\\\\\n",
       "  & <chr> & <chr> & <dttm> & <dttm> & <chr> & <chr> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t1 & C809ED75D6160B2A & electric\\_bike & 2021-05-30 11:58:15 & 2021-05-30 12:10:39 &  &  &  &  & 41.90 & -87.63 & 41.89 & -87.61 & casual\\\\\n",
       "\t2 & DD59FDCE0ACACAF3 & electric\\_bike & 2021-05-30 11:29:14 & 2021-05-30 12:14:09 &  &  &  &  & 41.88 & -87.62 & 41.79 & -87.58 & casual\\\\\n",
       "\t3 & 0AB83CB88C43EFC2 & electric\\_bike & 2021-05-30 14:24:01 & 2021-05-30 14:25:13 &  &  &  &  & 41.92 & -87.70 & 41.92 & -87.70 & casual\\\\\n",
       "\t4 & 7881AC6D39110C60 & electric\\_bike & 2021-05-30 14:25:51 & 2021-05-30 14:41:04 &  &  &  &  & 41.92 & -87.70 & 41.94 & -87.69 & casual\\\\\n",
       "\t5 & 853FA701B4582BAF & electric\\_bike & 2021-05-30 18:15:39 & 2021-05-30 18:22:32 &  &  &  &  & 41.94 & -87.69 & 41.94 & -87.70 & casual\\\\\n",
       "\t6 & F5E63DFD96B2A737 & electric\\_bike & 2021-05-30 11:33:41 & 2021-05-30 11:57:17 &  &  &  &  & 41.88 & -87.63 & 41.89 & -87.62 & casual\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 13\n",
       "\n",
       "| <!--/--> | ride_id &lt;chr&gt; | rideable_type &lt;chr&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | start_station_name &lt;chr&gt; | start_station_id &lt;chr&gt; | end_station_name &lt;chr&gt; | end_station_id &lt;chr&gt; | start_lat &lt;dbl&gt; | start_lng &lt;dbl&gt; | end_lat &lt;dbl&gt; | end_lng &lt;dbl&gt; | member_casual &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | C809ED75D6160B2A | electric_bike | 2021-05-30 11:58:15 | 2021-05-30 12:10:39 | <!----> | <!----> | <!----> | <!----> | 41.90 | -87.63 | 41.89 | -87.61 | casual |\n",
       "| 2 | DD59FDCE0ACACAF3 | electric_bike | 2021-05-30 11:29:14 | 2021-05-30 12:14:09 | <!----> | <!----> | <!----> | <!----> | 41.88 | -87.62 | 41.79 | -87.58 | casual |\n",
       "| 3 | 0AB83CB88C43EFC2 | electric_bike | 2021-05-30 14:24:01 | 2021-05-30 14:25:13 | <!----> | <!----> | <!----> | <!----> | 41.92 | -87.70 | 41.92 | -87.70 | casual |\n",
       "| 4 | 7881AC6D39110C60 | electric_bike | 2021-05-30 14:25:51 | 2021-05-30 14:41:04 | <!----> | <!----> | <!----> | <!----> | 41.92 | -87.70 | 41.94 | -87.69 | casual |\n",
       "| 5 | 853FA701B4582BAF | electric_bike | 2021-05-30 18:15:39 | 2021-05-30 18:22:32 | <!----> | <!----> | <!----> | <!----> | 41.94 | -87.69 | 41.94 | -87.70 | casual |\n",
       "| 6 | F5E63DFD96B2A737 | electric_bike | 2021-05-30 11:33:41 | 2021-05-30 11:57:17 | <!----> | <!----> | <!----> | <!----> | 41.88 | -87.63 | 41.89 | -87.62 | casual |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          rideable_type started_at          ended_at           \n",
       "1 C809ED75D6160B2A electric_bike 2021-05-30 11:58:15 2021-05-30 12:10:39\n",
       "2 DD59FDCE0ACACAF3 electric_bike 2021-05-30 11:29:14 2021-05-30 12:14:09\n",
       "3 0AB83CB88C43EFC2 electric_bike 2021-05-30 14:24:01 2021-05-30 14:25:13\n",
       "4 7881AC6D39110C60 electric_bike 2021-05-30 14:25:51 2021-05-30 14:41:04\n",
       "5 853FA701B4582BAF electric_bike 2021-05-30 18:15:39 2021-05-30 18:22:32\n",
       "6 F5E63DFD96B2A737 electric_bike 2021-05-30 11:33:41 2021-05-30 11:57:17\n",
       "  start_station_name start_station_id end_station_name end_station_id start_lat\n",
       "1                                                                     41.90    \n",
       "2                                                                     41.88    \n",
       "3                                                                     41.92    \n",
       "4                                                                     41.92    \n",
       "5                                                                     41.94    \n",
       "6                                                                     41.88    \n",
       "  start_lng end_lat end_lng member_casual\n",
       "1 -87.63    41.89   -87.61  casual       \n",
       "2 -87.62    41.79   -87.58  casual       \n",
       "3 -87.70    41.92   -87.70  casual       \n",
       "4 -87.70    41.94   -87.69  casual       \n",
       "5 -87.69    41.94   -87.70  casual       \n",
       "6 -87.63    41.89   -87.62  casual       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic_data_merged$started_at <- ymd_hms(cyclistic_data_merged$started_at)\n",
    "cyclistic_data_merged$ended_at <- ymd_hms(cyclistic_data_merged$ended_at)\n",
    "\n",
    "head(cyclistic_data_merged)\n",
    "  "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f13fecef",
   "metadata": {
    "papermill": {
     "duration": 0.01219,
     "end_time": "2022-05-22T15:10:49.536532",
     "exception": false,
     "start_time": "2022-05-22T15:10:49.524342",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "To get ride lenghth, ended_at is subtracted by started_at. The output is in seconds"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "c50df46a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:10:49.566109Z",
     "iopub.status.busy": "2022-05-22T15:10:49.564502Z",
     "iopub.status.idle": "2022-05-22T15:10:49.654539Z",
     "shell.execute_reply": "2022-05-22T15:10:49.652187Z"
    },
    "papermill": {
     "duration": 0.107803,
     "end_time": "2022-05-22T15:10:49.657152",
     "exception": false,
     "start_time": "2022-05-22T15:10:49.549349",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 14</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>start_lat</th><th scope=col>start_lng</th><th scope=col>end_lat</th><th scope=col>end_lng</th><th scope=col>member_casual</th><th scope=col>ride_length</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;drtn&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>C809ED75D6160B2A</td><td>electric_bike</td><td>2021-05-30 11:58:15</td><td>2021-05-30 12:10:39</td><td></td><td></td><td></td><td></td><td>41.90</td><td>-87.63</td><td>41.89</td><td>-87.61</td><td>casual</td><td> 744 secs</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>DD59FDCE0ACACAF3</td><td>electric_bike</td><td>2021-05-30 11:29:14</td><td>2021-05-30 12:14:09</td><td></td><td></td><td></td><td></td><td>41.88</td><td>-87.62</td><td>41.79</td><td>-87.58</td><td>casual</td><td>2695 secs</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>0AB83CB88C43EFC2</td><td>electric_bike</td><td>2021-05-30 14:24:01</td><td>2021-05-30 14:25:13</td><td></td><td></td><td></td><td></td><td>41.92</td><td>-87.70</td><td>41.92</td><td>-87.70</td><td>casual</td><td>  72 secs</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>7881AC6D39110C60</td><td>electric_bike</td><td>2021-05-30 14:25:51</td><td>2021-05-30 14:41:04</td><td></td><td></td><td></td><td></td><td>41.92</td><td>-87.70</td><td>41.94</td><td>-87.69</td><td>casual</td><td> 913 secs</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>853FA701B4582BAF</td><td>electric_bike</td><td>2021-05-30 18:15:39</td><td>2021-05-30 18:22:32</td><td></td><td></td><td></td><td></td><td>41.94</td><td>-87.69</td><td>41.94</td><td>-87.70</td><td>casual</td><td> 413 secs</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>F5E63DFD96B2A737</td><td>electric_bike</td><td>2021-05-30 11:33:41</td><td>2021-05-30 11:57:17</td><td></td><td></td><td></td><td></td><td>41.88</td><td>-87.63</td><td>41.89</td><td>-87.62</td><td>casual</td><td>1416 secs</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 14\n",
       "\\begin{tabular}{r|llllllllllllll}\n",
       "  & ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & start\\_station\\_id & end\\_station\\_name & end\\_station\\_id & start\\_lat & start\\_lng & end\\_lat & end\\_lng & member\\_casual & ride\\_length\\\\\n",
       "  & <chr> & <chr> & <dttm> & <dttm> & <chr> & <chr> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <drtn>\\\\\n",
       "\\hline\n",
       "\t1 & C809ED75D6160B2A & electric\\_bike & 2021-05-30 11:58:15 & 2021-05-30 12:10:39 &  &  &  &  & 41.90 & -87.63 & 41.89 & -87.61 & casual &  744 secs\\\\\n",
       "\t2 & DD59FDCE0ACACAF3 & electric\\_bike & 2021-05-30 11:29:14 & 2021-05-30 12:14:09 &  &  &  &  & 41.88 & -87.62 & 41.79 & -87.58 & casual & 2695 secs\\\\\n",
       "\t3 & 0AB83CB88C43EFC2 & electric\\_bike & 2021-05-30 14:24:01 & 2021-05-30 14:25:13 &  &  &  &  & 41.92 & -87.70 & 41.92 & -87.70 & casual &   72 secs\\\\\n",
       "\t4 & 7881AC6D39110C60 & electric\\_bike & 2021-05-30 14:25:51 & 2021-05-30 14:41:04 &  &  &  &  & 41.92 & -87.70 & 41.94 & -87.69 & casual &  913 secs\\\\\n",
       "\t5 & 853FA701B4582BAF & electric\\_bike & 2021-05-30 18:15:39 & 2021-05-30 18:22:32 &  &  &  &  & 41.94 & -87.69 & 41.94 & -87.70 & casual &  413 secs\\\\\n",
       "\t6 & F5E63DFD96B2A737 & electric\\_bike & 2021-05-30 11:33:41 & 2021-05-30 11:57:17 &  &  &  &  & 41.88 & -87.63 & 41.89 & -87.62 & casual & 1416 secs\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 14\n",
       "\n",
       "| <!--/--> | ride_id &lt;chr&gt; | rideable_type &lt;chr&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | start_station_name &lt;chr&gt; | start_station_id &lt;chr&gt; | end_station_name &lt;chr&gt; | end_station_id &lt;chr&gt; | start_lat &lt;dbl&gt; | start_lng &lt;dbl&gt; | end_lat &lt;dbl&gt; | end_lng &lt;dbl&gt; | member_casual &lt;chr&gt; | ride_length &lt;drtn&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | C809ED75D6160B2A | electric_bike | 2021-05-30 11:58:15 | 2021-05-30 12:10:39 | <!----> | <!----> | <!----> | <!----> | 41.90 | -87.63 | 41.89 | -87.61 | casual |  744 secs |\n",
       "| 2 | DD59FDCE0ACACAF3 | electric_bike | 2021-05-30 11:29:14 | 2021-05-30 12:14:09 | <!----> | <!----> | <!----> | <!----> | 41.88 | -87.62 | 41.79 | -87.58 | casual | 2695 secs |\n",
       "| 3 | 0AB83CB88C43EFC2 | electric_bike | 2021-05-30 14:24:01 | 2021-05-30 14:25:13 | <!----> | <!----> | <!----> | <!----> | 41.92 | -87.70 | 41.92 | -87.70 | casual |   72 secs |\n",
       "| 4 | 7881AC6D39110C60 | electric_bike | 2021-05-30 14:25:51 | 2021-05-30 14:41:04 | <!----> | <!----> | <!----> | <!----> | 41.92 | -87.70 | 41.94 | -87.69 | casual |  913 secs |\n",
       "| 5 | 853FA701B4582BAF | electric_bike | 2021-05-30 18:15:39 | 2021-05-30 18:22:32 | <!----> | <!----> | <!----> | <!----> | 41.94 | -87.69 | 41.94 | -87.70 | casual |  413 secs |\n",
       "| 6 | F5E63DFD96B2A737 | electric_bike | 2021-05-30 11:33:41 | 2021-05-30 11:57:17 | <!----> | <!----> | <!----> | <!----> | 41.88 | -87.63 | 41.89 | -87.62 | casual | 1416 secs |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          rideable_type started_at          ended_at           \n",
       "1 C809ED75D6160B2A electric_bike 2021-05-30 11:58:15 2021-05-30 12:10:39\n",
       "2 DD59FDCE0ACACAF3 electric_bike 2021-05-30 11:29:14 2021-05-30 12:14:09\n",
       "3 0AB83CB88C43EFC2 electric_bike 2021-05-30 14:24:01 2021-05-30 14:25:13\n",
       "4 7881AC6D39110C60 electric_bike 2021-05-30 14:25:51 2021-05-30 14:41:04\n",
       "5 853FA701B4582BAF electric_bike 2021-05-30 18:15:39 2021-05-30 18:22:32\n",
       "6 F5E63DFD96B2A737 electric_bike 2021-05-30 11:33:41 2021-05-30 11:57:17\n",
       "  start_station_name start_station_id end_station_name end_station_id start_lat\n",
       "1                                                                     41.90    \n",
       "2                                                                     41.88    \n",
       "3                                                                     41.92    \n",
       "4                                                                     41.92    \n",
       "5                                                                     41.94    \n",
       "6                                                                     41.88    \n",
       "  start_lng end_lat end_lng member_casual ride_length\n",
       "1 -87.63    41.89   -87.61  casual         744 secs  \n",
       "2 -87.62    41.79   -87.58  casual        2695 secs  \n",
       "3 -87.70    41.92   -87.70  casual          72 secs  \n",
       "4 -87.70    41.94   -87.69  casual         913 secs  \n",
       "5 -87.69    41.94   -87.70  casual         413 secs  \n",
       "6 -87.63    41.89   -87.62  casual        1416 secs  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic_data_merged <- cyclistic_data_merged %>%\n",
    "  mutate(ride_length = ended_at - started_at)\n",
    "head(cyclistic_data_merged)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0de105b9",
   "metadata": {
    "papermill": {
     "duration": 0.013303,
     "end_time": "2022-05-22T15:10:49.684254",
     "exception": false,
     "start_time": "2022-05-22T15:10:49.670951",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The day of the week and month are extracted from the started_ at column. Data will be grouped accordingly during analyisis"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "66359f6e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:10:49.714400Z",
     "iopub.status.busy": "2022-05-22T15:10:49.712667Z",
     "iopub.status.idle": "2022-05-22T15:11:05.049797Z",
     "shell.execute_reply": "2022-05-22T15:11:05.046701Z"
    },
    "papermill": {
     "duration": 15.357506,
     "end_time": "2022-05-22T15:11:05.054996",
     "exception": false,
     "start_time": "2022-05-22T15:10:49.697490",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 17</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>start_lat</th><th scope=col>start_lng</th><th scope=col>end_lat</th><th scope=col>end_lng</th><th scope=col>member_casual</th><th scope=col>ride_length</th><th scope=col>day_of_week</th><th scope=col>month</th><th scope=col>hour</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;drtn&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>C809ED75D6160B2A</td><td>electric_bike</td><td>2021-05-30 11:58:15</td><td>2021-05-30 12:10:39</td><td></td><td></td><td></td><td></td><td>41.90</td><td>-87.63</td><td>41.89</td><td>-87.61</td><td>casual</td><td> 744 secs</td><td>Sun</td><td>May</td><td>11</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>DD59FDCE0ACACAF3</td><td>electric_bike</td><td>2021-05-30 11:29:14</td><td>2021-05-30 12:14:09</td><td></td><td></td><td></td><td></td><td>41.88</td><td>-87.62</td><td>41.79</td><td>-87.58</td><td>casual</td><td>2695 secs</td><td>Sun</td><td>May</td><td>11</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>0AB83CB88C43EFC2</td><td>electric_bike</td><td>2021-05-30 14:24:01</td><td>2021-05-30 14:25:13</td><td></td><td></td><td></td><td></td><td>41.92</td><td>-87.70</td><td>41.92</td><td>-87.70</td><td>casual</td><td>  72 secs</td><td>Sun</td><td>May</td><td>14</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>7881AC6D39110C60</td><td>electric_bike</td><td>2021-05-30 14:25:51</td><td>2021-05-30 14:41:04</td><td></td><td></td><td></td><td></td><td>41.92</td><td>-87.70</td><td>41.94</td><td>-87.69</td><td>casual</td><td> 913 secs</td><td>Sun</td><td>May</td><td>14</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>853FA701B4582BAF</td><td>electric_bike</td><td>2021-05-30 18:15:39</td><td>2021-05-30 18:22:32</td><td></td><td></td><td></td><td></td><td>41.94</td><td>-87.69</td><td>41.94</td><td>-87.70</td><td>casual</td><td> 413 secs</td><td>Sun</td><td>May</td><td>18</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>F5E63DFD96B2A737</td><td>electric_bike</td><td>2021-05-30 11:33:41</td><td>2021-05-30 11:57:17</td><td></td><td></td><td></td><td></td><td>41.88</td><td>-87.63</td><td>41.89</td><td>-87.62</td><td>casual</td><td>1416 secs</td><td>Sun</td><td>May</td><td>11</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 17\n",
       "\\begin{tabular}{r|lllllllllllllllll}\n",
       "  & ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & start\\_station\\_id & end\\_station\\_name & end\\_station\\_id & start\\_lat & start\\_lng & end\\_lat & end\\_lng & member\\_casual & ride\\_length & day\\_of\\_week & month & hour\\\\\n",
       "  & <chr> & <chr> & <dttm> & <dttm> & <chr> & <chr> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <drtn> & <ord> & <ord> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & C809ED75D6160B2A & electric\\_bike & 2021-05-30 11:58:15 & 2021-05-30 12:10:39 &  &  &  &  & 41.90 & -87.63 & 41.89 & -87.61 & casual &  744 secs & Sun & May & 11\\\\\n",
       "\t2 & DD59FDCE0ACACAF3 & electric\\_bike & 2021-05-30 11:29:14 & 2021-05-30 12:14:09 &  &  &  &  & 41.88 & -87.62 & 41.79 & -87.58 & casual & 2695 secs & Sun & May & 11\\\\\n",
       "\t3 & 0AB83CB88C43EFC2 & electric\\_bike & 2021-05-30 14:24:01 & 2021-05-30 14:25:13 &  &  &  &  & 41.92 & -87.70 & 41.92 & -87.70 & casual &   72 secs & Sun & May & 14\\\\\n",
       "\t4 & 7881AC6D39110C60 & electric\\_bike & 2021-05-30 14:25:51 & 2021-05-30 14:41:04 &  &  &  &  & 41.92 & -87.70 & 41.94 & -87.69 & casual &  913 secs & Sun & May & 14\\\\\n",
       "\t5 & 853FA701B4582BAF & electric\\_bike & 2021-05-30 18:15:39 & 2021-05-30 18:22:32 &  &  &  &  & 41.94 & -87.69 & 41.94 & -87.70 & casual &  413 secs & Sun & May & 18\\\\\n",
       "\t6 & F5E63DFD96B2A737 & electric\\_bike & 2021-05-30 11:33:41 & 2021-05-30 11:57:17 &  &  &  &  & 41.88 & -87.63 & 41.89 & -87.62 & casual & 1416 secs & Sun & May & 11\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 17\n",
       "\n",
       "| <!--/--> | ride_id &lt;chr&gt; | rideable_type &lt;chr&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | start_station_name &lt;chr&gt; | start_station_id &lt;chr&gt; | end_station_name &lt;chr&gt; | end_station_id &lt;chr&gt; | start_lat &lt;dbl&gt; | start_lng &lt;dbl&gt; | end_lat &lt;dbl&gt; | end_lng &lt;dbl&gt; | member_casual &lt;chr&gt; | ride_length &lt;drtn&gt; | day_of_week &lt;ord&gt; | month &lt;ord&gt; | hour &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | C809ED75D6160B2A | electric_bike | 2021-05-30 11:58:15 | 2021-05-30 12:10:39 | <!----> | <!----> | <!----> | <!----> | 41.90 | -87.63 | 41.89 | -87.61 | casual |  744 secs | Sun | May | 11 |\n",
       "| 2 | DD59FDCE0ACACAF3 | electric_bike | 2021-05-30 11:29:14 | 2021-05-30 12:14:09 | <!----> | <!----> | <!----> | <!----> | 41.88 | -87.62 | 41.79 | -87.58 | casual | 2695 secs | Sun | May | 11 |\n",
       "| 3 | 0AB83CB88C43EFC2 | electric_bike | 2021-05-30 14:24:01 | 2021-05-30 14:25:13 | <!----> | <!----> | <!----> | <!----> | 41.92 | -87.70 | 41.92 | -87.70 | casual |   72 secs | Sun | May | 14 |\n",
       "| 4 | 7881AC6D39110C60 | electric_bike | 2021-05-30 14:25:51 | 2021-05-30 14:41:04 | <!----> | <!----> | <!----> | <!----> | 41.92 | -87.70 | 41.94 | -87.69 | casual |  913 secs | Sun | May | 14 |\n",
       "| 5 | 853FA701B4582BAF | electric_bike | 2021-05-30 18:15:39 | 2021-05-30 18:22:32 | <!----> | <!----> | <!----> | <!----> | 41.94 | -87.69 | 41.94 | -87.70 | casual |  413 secs | Sun | May | 18 |\n",
       "| 6 | F5E63DFD96B2A737 | electric_bike | 2021-05-30 11:33:41 | 2021-05-30 11:57:17 | <!----> | <!----> | <!----> | <!----> | 41.88 | -87.63 | 41.89 | -87.62 | casual | 1416 secs | Sun | May | 11 |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          rideable_type started_at          ended_at           \n",
       "1 C809ED75D6160B2A electric_bike 2021-05-30 11:58:15 2021-05-30 12:10:39\n",
       "2 DD59FDCE0ACACAF3 electric_bike 2021-05-30 11:29:14 2021-05-30 12:14:09\n",
       "3 0AB83CB88C43EFC2 electric_bike 2021-05-30 14:24:01 2021-05-30 14:25:13\n",
       "4 7881AC6D39110C60 electric_bike 2021-05-30 14:25:51 2021-05-30 14:41:04\n",
       "5 853FA701B4582BAF electric_bike 2021-05-30 18:15:39 2021-05-30 18:22:32\n",
       "6 F5E63DFD96B2A737 electric_bike 2021-05-30 11:33:41 2021-05-30 11:57:17\n",
       "  start_station_name start_station_id end_station_name end_station_id start_lat\n",
       "1                                                                     41.90    \n",
       "2                                                                     41.88    \n",
       "3                                                                     41.92    \n",
       "4                                                                     41.92    \n",
       "5                                                                     41.94    \n",
       "6                                                                     41.88    \n",
       "  start_lng end_lat end_lng member_casual ride_length day_of_week month hour\n",
       "1 -87.63    41.89   -87.61  casual         744 secs   Sun         May   11  \n",
       "2 -87.62    41.79   -87.58  casual        2695 secs   Sun         May   11  \n",
       "3 -87.70    41.92   -87.70  casual          72 secs   Sun         May   14  \n",
       "4 -87.70    41.94   -87.69  casual         913 secs   Sun         May   14  \n",
       "5 -87.69    41.94   -87.70  casual         413 secs   Sun         May   18  \n",
       "6 -87.63    41.89   -87.62  casual        1416 secs   Sun         May   11  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic_data_merged <- cyclistic_data_merged %>%\n",
    "  mutate(day_of_week = wday(started_at, label=TRUE), month = month(started_at, label=TRUE, abbr=TRUE), hour = hour(started_at))\n",
    "head(cyclistic_data_merged)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "caf117de",
   "metadata": {
    "papermill": {
     "duration": 0.013055,
     "end_time": "2022-05-22T15:11:05.083380",
     "exception": false,
     "start_time": "2022-05-22T15:11:05.070325",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Columns are renamed to simplify the data readability"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "97cd29fe",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:11:05.113049Z",
     "iopub.status.busy": "2022-05-22T15:11:05.111490Z",
     "iopub.status.idle": "2022-05-22T15:11:05.169567Z",
     "shell.execute_reply": "2022-05-22T15:11:05.167335Z"
    },
    "papermill": {
     "duration": 0.07591,
     "end_time": "2022-05-22T15:11:05.172220",
     "exception": false,
     "start_time": "2022-05-22T15:11:05.096310",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "cyclistic_data_merged <- cyclistic_data_merged %>%\n",
    "  rename(start_time = started_at, \n",
    "         end_time = ended_at,\n",
    "         customer_type = member_casual,\n",
    "         bike_id = ride_id, bike_type = rideable_type\n",
    "         )\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a0df9e41",
   "metadata": {
    "papermill": {
     "duration": 0.012886,
     "end_time": "2022-05-22T15:11:05.198456",
     "exception": false,
     "start_time": "2022-05-22T15:11:05.185570",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Columns missing data, that are considered as not useful for this analysis is removed."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "52341f25",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:11:05.227511Z",
     "iopub.status.busy": "2022-05-22T15:11:05.225693Z",
     "iopub.status.idle": "2022-05-22T15:11:05.269075Z",
     "shell.execute_reply": "2022-05-22T15:11:05.267113Z"
    },
    "papermill": {
     "duration": 0.06058,
     "end_time": "2022-05-22T15:11:05.271813",
     "exception": false,
     "start_time": "2022-05-22T15:11:05.211233",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 13</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>bike_id</th><th scope=col>bike_type</th><th scope=col>start_time</th><th scope=col>end_time</th><th scope=col>start_lat</th><th scope=col>start_lng</th><th scope=col>end_lat</th><th scope=col>end_lng</th><th scope=col>customer_type</th><th scope=col>ride_length</th><th scope=col>day_of_week</th><th scope=col>month</th><th scope=col>hour</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;drtn&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>C809ED75D6160B2A</td><td>electric_bike</td><td>2021-05-30 11:58:15</td><td>2021-05-30 12:10:39</td><td>41.90</td><td>-87.63</td><td>41.89</td><td>-87.61</td><td>casual</td><td> 744 secs</td><td>Sun</td><td>May</td><td>11</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>DD59FDCE0ACACAF3</td><td>electric_bike</td><td>2021-05-30 11:29:14</td><td>2021-05-30 12:14:09</td><td>41.88</td><td>-87.62</td><td>41.79</td><td>-87.58</td><td>casual</td><td>2695 secs</td><td>Sun</td><td>May</td><td>11</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>0AB83CB88C43EFC2</td><td>electric_bike</td><td>2021-05-30 14:24:01</td><td>2021-05-30 14:25:13</td><td>41.92</td><td>-87.70</td><td>41.92</td><td>-87.70</td><td>casual</td><td>  72 secs</td><td>Sun</td><td>May</td><td>14</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>7881AC6D39110C60</td><td>electric_bike</td><td>2021-05-30 14:25:51</td><td>2021-05-30 14:41:04</td><td>41.92</td><td>-87.70</td><td>41.94</td><td>-87.69</td><td>casual</td><td> 913 secs</td><td>Sun</td><td>May</td><td>14</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>853FA701B4582BAF</td><td>electric_bike</td><td>2021-05-30 18:15:39</td><td>2021-05-30 18:22:32</td><td>41.94</td><td>-87.69</td><td>41.94</td><td>-87.70</td><td>casual</td><td> 413 secs</td><td>Sun</td><td>May</td><td>18</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>F5E63DFD96B2A737</td><td>electric_bike</td><td>2021-05-30 11:33:41</td><td>2021-05-30 11:57:17</td><td>41.88</td><td>-87.63</td><td>41.89</td><td>-87.62</td><td>casual</td><td>1416 secs</td><td>Sun</td><td>May</td><td>11</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 13\n",
       "\\begin{tabular}{r|lllllllllllll}\n",
       "  & bike\\_id & bike\\_type & start\\_time & end\\_time & start\\_lat & start\\_lng & end\\_lat & end\\_lng & customer\\_type & ride\\_length & day\\_of\\_week & month & hour\\\\\n",
       "  & <chr> & <chr> & <dttm> & <dttm> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <drtn> & <ord> & <ord> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & C809ED75D6160B2A & electric\\_bike & 2021-05-30 11:58:15 & 2021-05-30 12:10:39 & 41.90 & -87.63 & 41.89 & -87.61 & casual &  744 secs & Sun & May & 11\\\\\n",
       "\t2 & DD59FDCE0ACACAF3 & electric\\_bike & 2021-05-30 11:29:14 & 2021-05-30 12:14:09 & 41.88 & -87.62 & 41.79 & -87.58 & casual & 2695 secs & Sun & May & 11\\\\\n",
       "\t3 & 0AB83CB88C43EFC2 & electric\\_bike & 2021-05-30 14:24:01 & 2021-05-30 14:25:13 & 41.92 & -87.70 & 41.92 & -87.70 & casual &   72 secs & Sun & May & 14\\\\\n",
       "\t4 & 7881AC6D39110C60 & electric\\_bike & 2021-05-30 14:25:51 & 2021-05-30 14:41:04 & 41.92 & -87.70 & 41.94 & -87.69 & casual &  913 secs & Sun & May & 14\\\\\n",
       "\t5 & 853FA701B4582BAF & electric\\_bike & 2021-05-30 18:15:39 & 2021-05-30 18:22:32 & 41.94 & -87.69 & 41.94 & -87.70 & casual &  413 secs & Sun & May & 18\\\\\n",
       "\t6 & F5E63DFD96B2A737 & electric\\_bike & 2021-05-30 11:33:41 & 2021-05-30 11:57:17 & 41.88 & -87.63 & 41.89 & -87.62 & casual & 1416 secs & Sun & May & 11\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 13\n",
       "\n",
       "| <!--/--> | bike_id &lt;chr&gt; | bike_type &lt;chr&gt; | start_time &lt;dttm&gt; | end_time &lt;dttm&gt; | start_lat &lt;dbl&gt; | start_lng &lt;dbl&gt; | end_lat &lt;dbl&gt; | end_lng &lt;dbl&gt; | customer_type &lt;chr&gt; | ride_length &lt;drtn&gt; | day_of_week &lt;ord&gt; | month &lt;ord&gt; | hour &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | C809ED75D6160B2A | electric_bike | 2021-05-30 11:58:15 | 2021-05-30 12:10:39 | 41.90 | -87.63 | 41.89 | -87.61 | casual |  744 secs | Sun | May | 11 |\n",
       "| 2 | DD59FDCE0ACACAF3 | electric_bike | 2021-05-30 11:29:14 | 2021-05-30 12:14:09 | 41.88 | -87.62 | 41.79 | -87.58 | casual | 2695 secs | Sun | May | 11 |\n",
       "| 3 | 0AB83CB88C43EFC2 | electric_bike | 2021-05-30 14:24:01 | 2021-05-30 14:25:13 | 41.92 | -87.70 | 41.92 | -87.70 | casual |   72 secs | Sun | May | 14 |\n",
       "| 4 | 7881AC6D39110C60 | electric_bike | 2021-05-30 14:25:51 | 2021-05-30 14:41:04 | 41.92 | -87.70 | 41.94 | -87.69 | casual |  913 secs | Sun | May | 14 |\n",
       "| 5 | 853FA701B4582BAF | electric_bike | 2021-05-30 18:15:39 | 2021-05-30 18:22:32 | 41.94 | -87.69 | 41.94 | -87.70 | casual |  413 secs | Sun | May | 18 |\n",
       "| 6 | F5E63DFD96B2A737 | electric_bike | 2021-05-30 11:33:41 | 2021-05-30 11:57:17 | 41.88 | -87.63 | 41.89 | -87.62 | casual | 1416 secs | Sun | May | 11 |\n",
       "\n"
      ],
      "text/plain": [
       "  bike_id          bike_type     start_time          end_time           \n",
       "1 C809ED75D6160B2A electric_bike 2021-05-30 11:58:15 2021-05-30 12:10:39\n",
       "2 DD59FDCE0ACACAF3 electric_bike 2021-05-30 11:29:14 2021-05-30 12:14:09\n",
       "3 0AB83CB88C43EFC2 electric_bike 2021-05-30 14:24:01 2021-05-30 14:25:13\n",
       "4 7881AC6D39110C60 electric_bike 2021-05-30 14:25:51 2021-05-30 14:41:04\n",
       "5 853FA701B4582BAF electric_bike 2021-05-30 18:15:39 2021-05-30 18:22:32\n",
       "6 F5E63DFD96B2A737 electric_bike 2021-05-30 11:33:41 2021-05-30 11:57:17\n",
       "  start_lat start_lng end_lat end_lng customer_type ride_length day_of_week\n",
       "1 41.90     -87.63    41.89   -87.61  casual         744 secs   Sun        \n",
       "2 41.88     -87.62    41.79   -87.58  casual        2695 secs   Sun        \n",
       "3 41.92     -87.70    41.92   -87.70  casual          72 secs   Sun        \n",
       "4 41.92     -87.70    41.94   -87.69  casual         913 secs   Sun        \n",
       "5 41.94     -87.69    41.94   -87.70  casual         413 secs   Sun        \n",
       "6 41.88     -87.63    41.89   -87.62  casual        1416 secs   Sun        \n",
       "  month hour\n",
       "1 May   11  \n",
       "2 May   11  \n",
       "3 May   14  \n",
       "4 May   14  \n",
       "5 May   18  \n",
       "6 May   11  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic_data <- cyclistic_data_merged %>%\n",
    "  select(-start_station_id, -start_station_name, -end_station_name, -end_station_id)\n",
    "\n",
    "head(cyclistic_data)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "382d48fa",
   "metadata": {
    "papermill": {
     "duration": 0.013097,
     "end_time": "2022-05-22T15:11:05.298239",
     "exception": false,
     "start_time": "2022-05-22T15:11:05.285142",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Subsets and Summary Statistics\n",
    "\n",
    "The data is broken down into subsets and summary statistics"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4c2cb5b2",
   "metadata": {
    "papermill": {
     "duration": 0.013083,
     "end_time": "2022-05-22T15:11:05.324358",
     "exception": false,
     "start_time": "2022-05-22T15:11:05.311275",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Bike share per customer type"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "bdf32f87",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:11:05.354864Z",
     "iopub.status.busy": "2022-05-22T15:11:05.352454Z",
     "iopub.status.idle": "2022-05-22T15:11:05.516765Z",
     "shell.execute_reply": "2022-05-22T15:11:05.514853Z"
    },
    "papermill": {
     "duration": 0.181599,
     "end_time": "2022-05-22T15:11:05.519129",
     "exception": false,
     "start_time": "2022-05-22T15:11:05.337530",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 2 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>customer_type</th><th scope=col>ride_count</th><th scope=col>percentage</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>2536358</td><td>44</td></tr>\n",
       "\t<tr><td>member</td><td>3221193</td><td>56</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 2 × 3\n",
       "\\begin{tabular}{lll}\n",
       " customer\\_type & ride\\_count & percentage\\\\\n",
       " <chr> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 2536358 & 44\\\\\n",
       "\t member & 3221193 & 56\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 2 × 3\n",
       "\n",
       "| customer_type &lt;chr&gt; | ride_count &lt;int&gt; | percentage &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual | 2536358 | 44 |\n",
       "| member | 3221193 | 56 |\n",
       "\n"
      ],
      "text/plain": [
       "  customer_type ride_count percentage\n",
       "1 casual        2536358    44        \n",
       "2 member        3221193    56        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "customer_type_bike_share <- cyclistic_data %>%\n",
    "  group_by(customer_type) %>%\n",
    "  summarise(ride_count= n()) %>%\n",
    "  mutate(percentage = round(ride_count / sum(ride_count),2)*100)\n",
    "customer_type_bike_share"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2b40d929",
   "metadata": {
    "papermill": {
     "duration": 0.013341,
     "end_time": "2022-05-22T15:11:05.545807",
     "exception": false,
     "start_time": "2022-05-22T15:11:05.532466",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Monthly bike data"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "cb5c4af8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:11:05.576634Z",
     "iopub.status.busy": "2022-05-22T15:11:05.574716Z",
     "iopub.status.idle": "2022-05-22T15:11:05.915813Z",
     "shell.execute_reply": "2022-05-22T15:11:05.913928Z"
    },
    "papermill": {
     "duration": 0.35893,
     "end_time": "2022-05-22T15:11:05.918282",
     "exception": false,
     "start_time": "2022-05-22T15:11:05.559352",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'customer_type'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A grouped_df: 6 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>customer_type</th><th scope=col>month</th><th scope=col>ride_count</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Jan</td><td> 18520</td></tr>\n",
       "\t<tr><td>casual</td><td>Feb</td><td> 21416</td></tr>\n",
       "\t<tr><td>casual</td><td>Mar</td><td> 89882</td></tr>\n",
       "\t<tr><td>casual</td><td>Apr</td><td>126417</td></tr>\n",
       "\t<tr><td>casual</td><td>May</td><td>256916</td></tr>\n",
       "\t<tr><td>casual</td><td>Jun</td><td>370681</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A grouped\\_df: 6 × 3\n",
       "\\begin{tabular}{lll}\n",
       " customer\\_type & month & ride\\_count\\\\\n",
       " <chr> & <ord> & <int>\\\\\n",
       "\\hline\n",
       "\t casual & Jan &  18520\\\\\n",
       "\t casual & Feb &  21416\\\\\n",
       "\t casual & Mar &  89882\\\\\n",
       "\t casual & Apr & 126417\\\\\n",
       "\t casual & May & 256916\\\\\n",
       "\t casual & Jun & 370681\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A grouped_df: 6 × 3\n",
       "\n",
       "| customer_type &lt;chr&gt; | month &lt;ord&gt; | ride_count &lt;int&gt; |\n",
       "|---|---|---|\n",
       "| casual | Jan |  18520 |\n",
       "| casual | Feb |  21416 |\n",
       "| casual | Mar |  89882 |\n",
       "| casual | Apr | 126417 |\n",
       "| casual | May | 256916 |\n",
       "| casual | Jun | 370681 |\n",
       "\n"
      ],
      "text/plain": [
       "  customer_type month ride_count\n",
       "1 casual        Jan    18520    \n",
       "2 casual        Feb    21416    \n",
       "3 casual        Mar    89882    \n",
       "4 casual        Apr   126417    \n",
       "5 casual        May   256916    \n",
       "6 casual        Jun   370681    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "monthly_bike_data <- cyclistic_data %>%\n",
    " group_by(customer_type, month) %>%\n",
    " summarise(ride_count = n())\n",
    "\n",
    "head(monthly_bike_data)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e1baa78b",
   "metadata": {
    "papermill": {
     "duration": 0.013873,
     "end_time": "2022-05-22T15:11:05.946259",
     "exception": false,
     "start_time": "2022-05-22T15:11:05.932386",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Hourly bike data"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "05a454ef",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:11:05.978920Z",
     "iopub.status.busy": "2022-05-22T15:11:05.977194Z",
     "iopub.status.idle": "2022-05-22T15:11:06.308518Z",
     "shell.execute_reply": "2022-05-22T15:11:06.306607Z"
    },
    "papermill": {
     "duration": 0.349909,
     "end_time": "2022-05-22T15:11:06.311043",
     "exception": false,
     "start_time": "2022-05-22T15:11:05.961134",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'customer_type'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A grouped_df: 6 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>customer_type</th><th scope=col>hour</th><th scope=col>ride_count</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>0</td><td>53704</td></tr>\n",
       "\t<tr><td>casual</td><td>1</td><td>39359</td></tr>\n",
       "\t<tr><td>casual</td><td>2</td><td>26293</td></tr>\n",
       "\t<tr><td>casual</td><td>3</td><td>14595</td></tr>\n",
       "\t<tr><td>casual</td><td>4</td><td>10106</td></tr>\n",
       "\t<tr><td>casual</td><td>5</td><td>13029</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A grouped\\_df: 6 × 3\n",
       "\\begin{tabular}{lll}\n",
       " customer\\_type & hour & ride\\_count\\\\\n",
       " <chr> & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t casual & 0 & 53704\\\\\n",
       "\t casual & 1 & 39359\\\\\n",
       "\t casual & 2 & 26293\\\\\n",
       "\t casual & 3 & 14595\\\\\n",
       "\t casual & 4 & 10106\\\\\n",
       "\t casual & 5 & 13029\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A grouped_df: 6 × 3\n",
       "\n",
       "| customer_type &lt;chr&gt; | hour &lt;int&gt; | ride_count &lt;int&gt; |\n",
       "|---|---|---|\n",
       "| casual | 0 | 53704 |\n",
       "| casual | 1 | 39359 |\n",
       "| casual | 2 | 26293 |\n",
       "| casual | 3 | 14595 |\n",
       "| casual | 4 | 10106 |\n",
       "| casual | 5 | 13029 |\n",
       "\n"
      ],
      "text/plain": [
       "  customer_type hour ride_count\n",
       "1 casual        0    53704     \n",
       "2 casual        1    39359     \n",
       "3 casual        2    26293     \n",
       "4 casual        3    14595     \n",
       "5 casual        4    10106     \n",
       "6 casual        5    13029     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "hourly_bike_data <- cyclistic_data %>%\n",
    " group_by(customer_type, hour) %>%\n",
    " summarise(ride_count = n())\n",
    "head(hourly_bike_data)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a8e1ed55",
   "metadata": {
    "papermill": {
     "duration": 0.014035,
     "end_time": "2022-05-22T15:11:06.339453",
     "exception": false,
     "start_time": "2022-05-22T15:11:06.325418",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Overall ride duration statistics"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "9fabd788",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:11:06.371153Z",
     "iopub.status.busy": "2022-05-22T15:11:06.369530Z",
     "iopub.status.idle": "2022-05-22T15:11:07.148911Z",
     "shell.execute_reply": "2022-05-22T15:11:07.146583Z"
    },
    "papermill": {
     "duration": 0.798373,
     "end_time": "2022-05-22T15:11:07.151862",
     "exception": false,
     "start_time": "2022-05-22T15:11:06.353489",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 1 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>average_ride_length</th><th scope=col>midpoint_ride_length</th><th scope=col>shortest_ride_length</th><th scope=col>longest_ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;drtn&gt;</th><th scope=col>&lt;drtn&gt;</th><th scope=col>&lt;drtn&gt;</th><th scope=col>&lt;drtn&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>1268.298 secs</td><td>691 secs</td><td>-3482 secs</td><td>3356649 secs</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 1 × 4\n",
       "\\begin{tabular}{llll}\n",
       " average\\_ride\\_length & midpoint\\_ride\\_length & shortest\\_ride\\_length & longest\\_ride\\_length\\\\\n",
       " <drtn> & <drtn> & <drtn> & <drtn>\\\\\n",
       "\\hline\n",
       "\t 1268.298 secs & 691 secs & -3482 secs & 3356649 secs\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 1 × 4\n",
       "\n",
       "| average_ride_length &lt;drtn&gt; | midpoint_ride_length &lt;drtn&gt; | shortest_ride_length &lt;drtn&gt; | longest_ride_length &lt;drtn&gt; |\n",
       "|---|---|---|---|\n",
       "| 1268.298 secs | 691 secs | -3482 secs | 3356649 secs |\n",
       "\n"
      ],
      "text/plain": [
       "  average_ride_length midpoint_ride_length shortest_ride_length\n",
       "1 1268.298 secs       691 secs             -3482 secs          \n",
       "  longest_ride_length\n",
       "1 3356649 secs       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "summary_statistics <- cyclistic_data %>%\n",
    "  summarise(average_ride_length = mean(ride_length),\n",
    "            midpoint_ride_length = median(ride_length),\n",
    "            shortest_ride_length = min(ride_length),\n",
    "            longest_ride_length = max(ride_length))\n",
    "summary_statistics"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "891e9494",
   "metadata": {
    "papermill": {
     "duration": 0.014186,
     "end_time": "2022-05-22T15:11:07.180354",
     "exception": false,
     "start_time": "2022-05-22T15:11:07.166168",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Ride duration statistics per customer type"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "b577531a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:11:07.212592Z",
     "iopub.status.busy": "2022-05-22T15:11:07.210772Z",
     "iopub.status.idle": "2022-05-22T15:11:08.138123Z",
     "shell.execute_reply": "2022-05-22T15:11:08.135875Z"
    },
    "papermill": {
     "duration": 0.946312,
     "end_time": "2022-05-22T15:11:08.140987",
     "exception": false,
     "start_time": "2022-05-22T15:11:07.194675",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 2 × 5</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>customer_type</th><th scope=col>average_ride_length</th><th scope=col>midpoint_ride_length</th><th scope=col>shortest_ride_length</th><th scope=col>longest_ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;drtn&gt;</th><th scope=col>&lt;drtn&gt;</th><th scope=col>&lt;drtn&gt;</th><th scope=col>&lt;drtn&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>1877.4464 secs</td><td>934 secs</td><td>-3482 secs</td><td>3356649 secs</td></tr>\n",
       "\t<tr><td>member</td><td> 788.6568 secs</td><td>551 secs</td><td>-3245 secs</td><td>  93594 secs</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 2 × 5\n",
       "\\begin{tabular}{lllll}\n",
       " customer\\_type & average\\_ride\\_length & midpoint\\_ride\\_length & shortest\\_ride\\_length & longest\\_ride\\_length\\\\\n",
       " <chr> & <drtn> & <drtn> & <drtn> & <drtn>\\\\\n",
       "\\hline\n",
       "\t casual & 1877.4464 secs & 934 secs & -3482 secs & 3356649 secs\\\\\n",
       "\t member &  788.6568 secs & 551 secs & -3245 secs &   93594 secs\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 2 × 5\n",
       "\n",
       "| customer_type &lt;chr&gt; | average_ride_length &lt;drtn&gt; | midpoint_ride_length &lt;drtn&gt; | shortest_ride_length &lt;drtn&gt; | longest_ride_length &lt;drtn&gt; |\n",
       "|---|---|---|---|---|\n",
       "| casual | 1877.4464 secs | 934 secs | -3482 secs | 3356649 secs |\n",
       "| member |  788.6568 secs | 551 secs | -3245 secs |   93594 secs |\n",
       "\n"
      ],
      "text/plain": [
       "  customer_type average_ride_length midpoint_ride_length shortest_ride_length\n",
       "1 casual        1877.4464 secs      934 secs             -3482 secs          \n",
       "2 member         788.6568 secs      551 secs             -3245 secs          \n",
       "  longest_ride_length\n",
       "1 3356649 secs       \n",
       "2   93594 secs       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "ride_summary_statistics <- cyclistic_data %>%\n",
    "  group_by(customer_type) %>%\n",
    "  summarise(average_ride_length = mean(ride_length),\n",
    "            midpoint_ride_length = median(ride_length),\n",
    "            shortest_ride_length = min(ride_length),\n",
    "            longest_ride_length = max(ride_length))\n",
    "ride_summary_statistics"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9a4f63e3",
   "metadata": {
    "papermill": {
     "duration": 0.014564,
     "end_time": "2022-05-22T15:11:08.170089",
     "exception": false,
     "start_time": "2022-05-22T15:11:08.155525",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Average ride duration per weekday (ordered by customer type)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "7bb1f08b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:11:08.202655Z",
     "iopub.status.busy": "2022-05-22T15:11:08.201013Z",
     "iopub.status.idle": "2022-05-22T15:11:08.756539Z",
     "shell.execute_reply": "2022-05-22T15:11:08.754479Z"
    },
    "papermill": {
     "duration": 0.574744,
     "end_time": "2022-05-22T15:11:08.759497",
     "exception": false,
     "start_time": "2022-05-22T15:11:08.184753",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'customer_type'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A grouped_df: 6 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>customer_type</th><th scope=col>day_of_week</th><th scope=col>ride_count</th><th scope=col>average_duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;drtn&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Sun</td><td>477032</td><td>2217.803 secs</td></tr>\n",
       "\t<tr><td>casual</td><td>Mon</td><td>289029</td><td>1863.944 secs</td></tr>\n",
       "\t<tr><td>casual</td><td>Tue</td><td>270548</td><td>1587.821 secs</td></tr>\n",
       "\t<tr><td>casual</td><td>Wed</td><td>284868</td><td>1625.554 secs</td></tr>\n",
       "\t<tr><td>casual</td><td>Thu</td><td>298061</td><td>1673.261 secs</td></tr>\n",
       "\t<tr><td>casual</td><td>Fri</td><td>358203</td><td>1752.511 secs</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A grouped\\_df: 6 × 4\n",
       "\\begin{tabular}{llll}\n",
       " customer\\_type & day\\_of\\_week & ride\\_count & average\\_duration\\\\\n",
       " <chr> & <ord> & <int> & <drtn>\\\\\n",
       "\\hline\n",
       "\t casual & Sun & 477032 & 2217.803 secs\\\\\n",
       "\t casual & Mon & 289029 & 1863.944 secs\\\\\n",
       "\t casual & Tue & 270548 & 1587.821 secs\\\\\n",
       "\t casual & Wed & 284868 & 1625.554 secs\\\\\n",
       "\t casual & Thu & 298061 & 1673.261 secs\\\\\n",
       "\t casual & Fri & 358203 & 1752.511 secs\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A grouped_df: 6 × 4\n",
       "\n",
       "| customer_type &lt;chr&gt; | day_of_week &lt;ord&gt; | ride_count &lt;int&gt; | average_duration &lt;drtn&gt; |\n",
       "|---|---|---|---|\n",
       "| casual | Sun | 477032 | 2217.803 secs |\n",
       "| casual | Mon | 289029 | 1863.944 secs |\n",
       "| casual | Tue | 270548 | 1587.821 secs |\n",
       "| casual | Wed | 284868 | 1625.554 secs |\n",
       "| casual | Thu | 298061 | 1673.261 secs |\n",
       "| casual | Fri | 358203 | 1752.511 secs |\n",
       "\n"
      ],
      "text/plain": [
       "  customer_type day_of_week ride_count average_duration\n",
       "1 casual        Sun         477032     2217.803 secs   \n",
       "2 casual        Mon         289029     1863.944 secs   \n",
       "3 casual        Tue         270548     1587.821 secs   \n",
       "4 casual        Wed         284868     1625.554 secs   \n",
       "5 casual        Thu         298061     1673.261 secs   \n",
       "6 casual        Fri         358203     1752.511 secs   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "weekday_statistics <- cyclistic_data %>% \n",
    "  group_by(customer_type, day_of_week) %>%  \n",
    "  summarise(ride_count = n(),average_duration = mean(ride_length)) \n",
    "head(weekday_statistics)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f83bd0e5",
   "metadata": {
    "papermill": {
     "duration": 0.015618,
     "end_time": "2022-05-22T15:11:08.790784",
     "exception": false,
     "start_time": "2022-05-22T15:11:08.775166",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "#### Bike type usage per customer type"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "96b9f9cc",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:11:08.825355Z",
     "iopub.status.busy": "2022-05-22T15:11:08.823407Z",
     "iopub.status.idle": "2022-05-22T15:11:09.208780Z",
     "shell.execute_reply": "2022-05-22T15:11:09.206734Z"
    },
    "papermill": {
     "duration": 0.405474,
     "end_time": "2022-05-22T15:11:09.211250",
     "exception": false,
     "start_time": "2022-05-22T15:11:08.805776",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'customer_type'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A grouped_df: 5 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>customer_type</th><th scope=col>bike_type</th><th scope=col>ride_count</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>classic_bike </td><td>1234410</td></tr>\n",
       "\t<tr><td>casual</td><td>docked_bike  </td><td> 291391</td></tr>\n",
       "\t<tr><td>casual</td><td>electric_bike</td><td>1010557</td></tr>\n",
       "\t<tr><td>member</td><td>classic_bike </td><td>1968374</td></tr>\n",
       "\t<tr><td>member</td><td>electric_bike</td><td>1252819</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A grouped\\_df: 5 × 3\n",
       "\\begin{tabular}{lll}\n",
       " customer\\_type & bike\\_type & ride\\_count\\\\\n",
       " <chr> & <chr> & <int>\\\\\n",
       "\\hline\n",
       "\t casual & classic\\_bike  & 1234410\\\\\n",
       "\t casual & docked\\_bike   &  291391\\\\\n",
       "\t casual & electric\\_bike & 1010557\\\\\n",
       "\t member & classic\\_bike  & 1968374\\\\\n",
       "\t member & electric\\_bike & 1252819\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A grouped_df: 5 × 3\n",
       "\n",
       "| customer_type &lt;chr&gt; | bike_type &lt;chr&gt; | ride_count &lt;int&gt; |\n",
       "|---|---|---|\n",
       "| casual | classic_bike  | 1234410 |\n",
       "| casual | docked_bike   |  291391 |\n",
       "| casual | electric_bike | 1010557 |\n",
       "| member | classic_bike  | 1968374 |\n",
       "| member | electric_bike | 1252819 |\n",
       "\n"
      ],
      "text/plain": [
       "  customer_type bike_type     ride_count\n",
       "1 casual        classic_bike  1234410   \n",
       "2 casual        docked_bike    291391   \n",
       "3 casual        electric_bike 1010557   \n",
       "4 member        classic_bike  1968374   \n",
       "5 member        electric_bike 1252819   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "bike_type_statistics <- cyclistic_data %>%\n",
    "  group_by(customer_type, bike_type) %>%  \n",
    "  summarise(ride_count = n()) \n",
    "bike_type_statistics"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "04ef5f1a",
   "metadata": {
    "papermill": {
     "duration": 0.016498,
     "end_time": "2022-05-22T15:11:09.243335",
     "exception": false,
     "start_time": "2022-05-22T15:11:09.226837",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Data Visualisations"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "d784223c",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:11:09.325510Z",
     "iopub.status.busy": "2022-05-22T15:11:09.323443Z",
     "iopub.status.idle": "2022-05-22T15:11:10.879934Z",
     "shell.execute_reply": "2022-05-22T15:11:10.878101Z"
    },
    "papermill": {
     "duration": 1.577183,
     "end_time": "2022-05-22T15:11:10.882344",
     "exception": false,
     "start_time": "2022-05-22T15:11:09.305161",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2\nAACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQ\ndgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACR\nEHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACRyNjcA/z/knh/2OYeAYCtQHLv5pt7BLZK\nztgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARCKesFs0c9Bhhx02eUn+5h4EAGDziCfsAAD+\nn9vEYZefl9yMh69W3qJ5hbIuAMAmlLFpXubUo45oc02Xz3v3HTsrr2TFbU+6+OptJ7x422Pv\n/LkgrfbOe19zaYcS6YkQQnLp9BceeuCDr36cOGNxlW0bHXFqx9b1S6d+eAhh5o+D737wuZHj\nZxSrtM2Bx3Zqt2+dNSx74pGHn/jAw5MfuX3I90X6979q0/wqAAAKSSKZLJyTYP926lFHzMuo\n2qHbuTtVTHvltuveHJ9WptHe3U47MDH1q2uuf6DeRff3bFEphPD4Je3fWtCg42kHVy+RGPXR\n6w+89MU59/bbv0rRVA5fNHPQse3vLpVT8ZCOZ+xUOfv7Ic/1HzTymJseO6V+qdUte+KRh9fc\nscZOLU/dq+G21SqVLhi1d+/eQ4cODSEsWLBgwoQJI0eOnDhxYpUqVTbK7yHx/rCNsg4AcUvu\n3Xxzj8BWaROdsQshbNvhigN3qxpCOK5TvTcu/eLay0+tmZ0ealU5qlz/D0bMCi0qLZw28IWf\nZt3w1IUNi2WGELat1zDvk5OeuW/E/j2bpHJ4wavUO7fn8S0qhRDqN9hl/siT3rr7f8del7+G\nZWdVPOuE/RotP+f06dMnTpxY8HNWVtYm+/0AAGygTRd2pbYv8ddLFstMyyxfMzu94GGJ9LSQ\nTIYQ5k74MplMXtHu6OWPKrZ0YghNUjm8QNtdyi77ee8DKw988n9zJxRZw7KVW1dfYc7999+/\nbt26IYQxY8Y88MADG/iuAQA2mU0Xdv+2ios2MoplJdKLPfv0o8tvTKRlpnj4X/svv2BuZiKR\nvuZlixZf8TfQsmXLli1bhhAGDx58/fXXr+E9AABsUbag250UrXhAyJ//1vS8nL9kP3XDtfcM\nmbROi7zx9fRlP3/w8m9Fq+6zUZYFANjyba4zdquQVXy3DjuXfezS63M6HlO/au7Xgx55deS0\nay+tsE6LfHr71S8s6bBT5Zzvhzz39Lj5HfrsnlU8d8OXBQDY8m1BYRdCaHvN7Yse6DOg700z\nlmRWq93owhuv3Dl3lR/FrlpaRukeZ+7V7+k+T01dXHmbOqdf0efQ6rkbviwAwFZhE93uZGs0\nePDgNm3ahBDc7gSATcztTlg/W9Df2AEAsCGEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0A\nQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQd\nAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSE\nHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAk\nhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBA\nJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0A\nQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQd\nAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSE\nHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAk\nhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCQy1mnv\nH9999um3Pxo/eXrLm/qekDn8k98btWpYoZAmAwBgnaQedsl7T9/rnH7DCx4UvfquQ+betU/j\n11p2uHvw/edkJAppPAAAUpXqR7E/P3nUOf2Gtz7njm9GTyzYUrruzb06Nhv6YJfD+o4qtPEA\nAEhVqmF3/UWDymx/2eA+XRvVqVKwJaNo/cv6DuuxY9mh3XsW2ngAAKQq1bB7fuqCbU87ceXt\nR7avvXDaqxt1JAAA1keqYVcjO33O6Nkrb58xYlZ6dpWNOhIAAOsj1bC7YvcKY55o//HUhctv\nnP/7e6c/+0u5xpcWwmAAAKybVMPuqGcfqJEY32qbnc+++LoQwohnHul5yWk71D1gfH7luwcc\nV5gTAgCQklTDrkj5g7/65pWjm6Q91Lt7COH9qy669rYniu9x7EtffXt05WKFOCAAAKlZhxsU\nl6h70FPvHfTwlLEjfv59aXqRanUbVCuVXXiTAQCwTtbpmyfyPhjQt/+Lb383+rf5eRlVtm2w\n/xEndTmpTZa7EwMAbAFS/Sg2f8mUrvvUbnVcl4efe3v8tAX5c/54/6XHLzpl/9otOk9ekl+o\nIwIAkIpUw274Jfvd9f74fbrePXbm3N/Hjvp+zIS5s3+954J9Jw67b7+LhxfqiAAApCLVsLu8\n34+l61/93h1dahbPLNiSUax6597v9mhQ9qfHLi+08QAASFVqYZdc+vHsxdu0O2rlZ444ZZsl\n877dyEMBALDuUgq7ZHJJiYzE1I/GrvzUr8Om5pRpu7GnAgBgnaUUdom0Io+e2eC3QSdd//L3\ny2//4dUb270xvt091xfObAAArINUb3cyetsTdi7R8+ojd7y/UbMm29ctkZgzetQXw78en11y\nl8x3b/7Pu3/tllu50y3X7FRYwwIAsHqJZDKZyn6ZmZmp7FZuh+f/+ObwDRtpSzF48OA2bdqE\nECZOnFilSpWNsmbi/WEbZR0A4pbcu/nmHoGtUqpn7JYsWVKocwAAsIFSvd1J9Z33u7L34z9O\nWVio0wAA/29N/uSqQw89dPjsxZt7kLXbYkdNNezKz/ys10Wnbl+p1O4Ht7/nmUHTfdsEALBR\nzZ/00WuvvTZpSd7mHmTttthRUw27L8fN+OF/A6/oePjUj57r0m7/SqVqHNnh0hc/GKHvAIDN\nKbl40dKULhhIUf7SmYXRa8m8xXkbc8xVSzXsQkjbfq/Drr/v2THTpg1/tV/Hw3b4sP9tR7dq\nWLrWbp2vufPj0dMLcUYAYMvzx7Anj2uzW9niOUVLlt/joJMGfDalYHu36iVKVO+2/J5f99g1\nkUiMW5QXQshfMvWey85otG2lnMzMEmWrtz7+vI+nLgwh9Nqm1DZHvBdCOLpc0WWH//nJcycd\n1Kx8qdysYiXrNdnvun7vL1vzme3Llax5zWcPXFitZG6RrPRSFWqffMXj+SF83u/SxrUqFsnO\n3WaH3bs//cPyY8z99YPzTzigRvlS2cXK1G+8b4/731h2furR7cqW3vb2RTM/PXnvHXKzy8xd\nY4KtMOrIe5snEom7J85dbpf81qWL5FY+I4RQND1tz77f9OnatlyxopnpWeWrN2jf7Z6py33y\nuYap1kPqYfeXRFqxZm1P7fP0O18Nf+ag7UrN/vWL+3qev+d25eo1O/TWJz/YgEkAgK3GpA+v\nr9uq/evfZRx39qWXdDph3mcvntC8/sNjZ6/1wDsO3vncmx8v3/SoK6+77uzjmn76wj37NTph\nSTK0e+zFx67ZOYRw1XOvvPREhxDClM9vrbdXuwH/m37ISedcde6pNed+ce3p+7S5euiypeZP\nfnKvLv3273T1fXf+t3nZGU/eeOruJ7Rqecl7h5x9Va+rOybHfnndKbt9+Pefwc37/eWdt9/v\n3ld/an38Wddc0rFRyV+7dzpk11P7LVstf+n0U3c+8M/qbXrddW+RtMQa3sIKo9Y+sWdaInH/\nzSOW7TB73E3vzVzY+Nq/8nRkn4POu/vt3Q4/9corzt1zm7n9b+my476X56U21bpK9XYny/z2\nzfvPP//88y88P3zkn4lEer3dDzj2uGPLTfv4oYf7fz9pfuurhw++rtl6T7NFcbsTADaXLf12\nJ8nFbcqWHJa295e/vlK/WGYIYeH0oVUr7Zu165N/fHRCt+ol+oZOs3+7ednuX/fYtXH3L8cu\nXFot/+fsYvWrHfj8r2/89T2lH3VrftijP/X5Yfzx5YuMG9h6myPee2Hq/KPKFgkheXzF3Jfm\n1nz3589bVCoaQshfOrVb0+17fzN36IxZLUpkPbN9uXajpl387sRb9q0SQlg4/fUiZdumZ1cZ\nOumX5qWyQwg/P926zonvHTdi6rM7lA0h9GhY7oaxFYaO/7JZ2ZyCl375osZH9v76+p9nXlm7\n5KPblT1z9Iz97/r8rS67pPIL+Peo4YLqJe6f32L+tNcLnn3nhDoHDpjw2aw5u+ZmFk1PW5Cf\nPG/AyDuPqR9CCMmlj3ZufEbf7097f+Kjraqsear1+JdJ9Yzdz58Puvmys5vWLVdj530uuuG+\nqSV2ufK2R77+dcaoj17vecFpXa/v++2EP69uVO6D205fjyEAgK3InIm3D56xcNeb7yyouhBC\nTplWL9/X5+ozy635wERakaxEmDnyxc9/m1OwpdnNw6ZMmXJ8+SIr7Llg6ovPTZ6/3VmPFlRd\nCCEto9yVT52WzF947dsTCrZkFq1fUHUhhJwyhxRPTyvX8I6CqgshlN+zRQhhwZL8EMLS+SN6\n/jC9/n8eW9ZPIYSDr7kzhPDsfT/9PVz242fvvO6/jBBC6HhlowXT33h40rwQQjJ/3vmvji/b\n8MZdc//65RSreMpfVRdCSGSccvtLRdPT3r58eEpTraNUw65Ok/0vu/mhmWWaXHHrw1+Om/Hj\nx29cf+HpjaoXX7ZDIj239fZlMjKLrt8cAMDWYvboISGE5vtWXH5jizP/07nDfms+MD27+ts3\nnpL87emmNUtt02jPkzpeeP8zb09f1aUPC2e8FUKo3X6b5TfmVm8fQvjjnfZFvi8AACAASURB\nVEkFD9Myyi7/bEYiZJcvvexhIu2f71ZYOP3NvGTyu9uaJpaTXapVCGHWd7MK9snK3blC5jr/\niVqB2u16piUSd985KoQw9ZtuI+cv2f+O45c9W2q7E/81Z06dQ8rkzPl1SCpTratUb1B8+S0P\nHXvsMY1rrumsYKtnfpy/flMAAFuP/EX5IYSsxJr+EG15yfx/0q1lt8cmn3b5yy+/9v4HHw4b\n1O+pB2+/8II9Xv5+SJvlzloVHLTyOolERgghuR7XwKZlhRB27PbIsjN8y2SX/OssXSKt2Dov\n+88i+5xfLbfvw/8NNw4YfMHAjOwad7Wo9M/TK/2iMhMhmb8olanWVaplOuSFh95NT195+6Th\n57XY95T1e20AYGtUot4uIYRhn05dfuN7l/7n9A5X/P3oXzcM+fPzv+6esWTuj5988smEEnVO\n6Hhx3yde/m7s9B/euG7+pI+7XvXVCi+RU/qAEMLYJ8ctv3HuhP4hhIqtK4Z1lFPm4PREYunM\n7Q5YTuuWNWfOnJmotXE+bDzrqp3mT3n+iYljug6fVO2APmUz/kmsmT8+u/yeeYt+fXXawmKV\nWxXGVGsJu9ljx/z4448//vjjxx9//NXIkT+uaNSw1z8Y/r9X1++1AYCtUYmal++Um/XJeReP\nXfhXwC2e9VH7Ox987dMKIYSi6WkLp7++7I4eC6d93Pm9iQU/z/vzvj322OO4//6TcbV2axJC\nWDpv6bItBVd1Fil39FHli466/8yP/v7Wq+TS6Tee9FAiLfuattXXdeCMnDrddygzuv+p7076\n58PFp885vF27duPX89PXf0YtUPv4G9ITicvOPnTKkrzTb2ux/G7zJj16ycAxfz/Kf6bbEXPy\n8ve+vlVhTLWWj2JfOHD3M376q7Kf2r/pU6vap0Stc9bzxQGArVAiveTAJzrXPfLOHeu0Ov3k\nAyplznzpwb5/5BW75/nTQgiHnVKvx/Wf7bRv+24n77tk0qh+ve/8s1xWmLA0hFCyVo/9yj/w\nbs+WB/9y+h4NaufPHPfyQ4+kZ5bt3qtxCCGzeGYI4YG7H1q0fdMTT9j9vlevfqf5lXtvu+up\nZx65Te6CoS8++vYPM/a98t3Wf18esU7Of+PeB+uddNC2DY884bBd65b5/r1n+w/6acfT+p9S\nYX3Oja0wagghq2TLC6oXv/X1UTml9r2qTqnldy5Wddc7j24wst0ZTeuU/Ob95158f2yFpl37\nH1Rjo08V1hp2e17Xu+/MhSGETp06tep5e7uVLlpJyyze7Ohj1u+1AYCtVM3Dbx/5Rv0Le/V5\n/O6eixK5DXY/9LHr7zi5XqkQQuMe7/eZ3+HuF9695D9PLUkmqzZv/84tU/ba880QQiK95Cvf\nDb6067UD33xy0JPzipSuvEuLE5+/9qYjquWGECrsflPbXX4cfMOF3zW4+sQTdq+w+2U/Da1x\nYY87X3yk96zFGTV32K3Ho9dcc9re6zdwbo3jvv225KWX3jjwxYdfXpxVu94O1z745lVnHrh+\nq60wasHGDlc1urXjh9v956YVTrdVaHLLO2d+dmq3u258ZnLRCrVPvPD22/57XlZi408VUr+P\n3T777HPEk692rZK7hn1a1a87dNTo9R5lS+M+dgBsLlv6fexSk79o9oQpS2tUK7O5B9lEPr9i\n56b//falKfMPX+5CkKLpaZUOe/eXl/bZNDOkelXskCFD1rrPhF/HbdAsAEBE0rJL1Ki2uYfY\nVPKXTD2nz8ji1S84fMXLezepVMMOAOD/g3EvtW18xpo+Ycsu2WrSuJeX39L53Ivmj37x0zmL\nz3zxwkKebi2EHQDAP2od+dqMI9ftkKHPPjB2aclTrh7w0H5VV3jqyGOOKbVb+Y023NoIOwCA\nDTJi8pzVPfXks89tykk24OYtAABsSYQdAEAkhB0AQCSEHQBAJIQdAEAkUrwqNn/RoiVpWdmZ\nicKdJnpx3EkcANgypXTGLpk3p1TRIm2e+3nNu3W/466NMRIAAOsjpTN2ifSSF21f5vFHPgvH\nb7uG3U45+z8baSoAYIu26NLzNvqa2Tc5Q7ShUv0bu6v/90aj3849566B0xblFepAAACsn1S/\neaLtcVfmV6xx3/lH3ndBTsXK5XMy/1WEY8eOLYTZAABYB6mGXU5OTghVDjmkSqFOAwDAeks1\n7F599dVCnQMAgA2UatgV+PHdZ59++6Pxk6e3vKnvCZnDP/m9UauGFQppMgAA1knqYZe89/S9\nzuk3vOBB0avvOmTuXfs0fq1lh7sH339OhvvbAQBsbqleFfvzk0ed029463Pu+Gb0xIItpeve\n3Ktjs6EPdjms76hCGw8AgFSlGnbXXzSozPaXDe7TtVGdv66fyCha/7K+w3rsWHZo956FNh4A\nwOZUJjP9zNEzNvcUqUo17J6fumDb005cefuR7WsvnOa6CgCAzS/VsKuRnT5n9OyVt88YMSs9\n2z1QAAA2v1TD7ordK4x5ov3HUxcuv3H+7++d/uwv5RpfWgiDAQD8Y8ncEd1OPKhe1VJFS1Vs\nfcLF381dUrB9weTh/zmyZaVSuRnZRbdp2KLXgL/+9H/cW30PabJDmWLZ5arWPrzTf2fnJUMI\nIbkokUjc8NucZctWyc4o+KR1detsXVINu6OefaBGYnyrbXY+++LrQggjnnmk5yWn7VD3gPH5\nle8ecFxhTggA/L+XXHxW4+aPjCx906Ovv/ti3wrfPLz37pcXPHNZ80Ne+H2Hh1959/MPB53f\nJv/qdk3HLsxbPPt/jdqeEw684I0PPn6uz8Vf9Lvq4Lt/WPMrrHKdwn9jG1mqtzspUv7gr755\npdPZFz3Uu3sI4f2rLhqaSG+wz3Ev9bm3beVihTggAPD/3vSRlzz+y+L3p/drWTIrhNDo3alt\nT3rqj8X5lbPSanW8/OHTzj2kfJEQQv1trzj/jrZfzVtcds5bc/Lyz+580h6Vi4ZdGw9+ofLo\nomXX/BKrXGebnCKb4N1tROtwg+ISdQ966r2DHp4ydsTPvy9NL1KtboNqpbILbzIAgAITXhme\nU3r/gqoLIRSrctaQIWcV/Hz+hf8Z8soLN3//47hxv3z94esFG3OrXXByk0ePqrVNq4P236t5\n8zYHHXFow0prfolVrrPVSfWj2GWKlN9mtz2a79FkF1UHAGwa+YvyE2k5K2/PW/Rb27rVjr/u\n6VnpZVu0PfmuAU8WbE/LKNf/0wnfvffoYU2qjXzv8TY7VzvoskGrXHlhfnIN62x11uGM3YI/\nRg374odp85as/NTxxx+/8UYCAPiXqm0bLez5wudzl+yWmxlCmP9n/2137vboD+N2G3/Rm78u\n/GPhqxUz00II8yf/FWR/Dut940uL77j1su2bH9w1hB/67tn4km7hv18VPDt9SX7BD/MnD5ix\nND+EMGPUqtfZ6qQaduNeuGTXdr2X/SJWIOwAgMJTbue7D6044JD9Oj5843+qZE27q/MFC3OP\nPrB09px5TZL5A2595v0u+2wzccQH/73oyhDCDz9PblVhzp23dZ9eqlLnQ3ZNzPq5zz0/ltzu\nohBCSGTvUSL7mbN6nXhv56zpP9zQsVNaIhFCyC676nUOL1tzs77vdZZq2J179j2z06tf2+fG\nfXao4ZthAYBNKZGe++x371181hVdT2wzJa/krvt1eP++60IIxatd8tbN48674vg+szN2atq6\n+wsjKp2yY4+9Gh40ffqbt029tM+lLbtPL1mx+q77dnj/vksKlnrlnbtP6NCrRYNbF+TlNz+9\nz/GTu615nc35ttddIplMprJfsYz07Xt8+fmVOxX2QFuOwYMHt2nTJoQwceLEKlXchBkA/rHo\n0vM2+prZN9210ddcnWT+gj+nJyuVK7rJXnHTSPWMXfMSWfMrrOKPFgEAtjqJtCKVym3uIQpB\nqlfF3n7dfp9fcsbnkxcU6jQAAKy3VM/YNejy8ll9yjerUaf1QXtXX+m85YMPPrixBwMAYN2k\nGnYfXtaiz48zQpjx7psvrnzxhLADANjsUv0otnOfz3OrH/PRuGlLFi5YWaGOCABAKlI6Y5fM\nn/f9/KUt7r9xj5plCnsgAADWT0pn7BKJjJrZ6TO+nlLY0wAAsN5S+yg2kf3a3aeMuvOQO179\nPqW73gEAsMmlevFEp8dGV82Yc8FhO15WqmL53MwVnv3tt9829mAAwJZrU95MmNSlGnblypUr\nd0DbnQt1FgBgK5F4f9hGXzO5d/ONvub/N6mG3UsvvVSocwAAsIFSDbsC8yd+/fzAQT/88vv8\nvIzKtRvsf8Qxu1bPLaTJolQY36wHsNn5VA62EOsQdi9cc8JJNzy3KP+fyyeuPL/TsVc++ex1\nRxfCYAAArJtUb1A8dsBJx/R8tkKrM54d9MnEydNmTPn9s/eeP3Pvis/1POaUF8cV5oQAAKQk\n1TN2t57/Sm7V00YNfrBo2l9fKLbbPkfv2uqg/JqVnjv3tnDU3YU2IQAAKUn1jN0zU+bX69h1\nWdUVSKQV7dpluwVTni6EwQAAWDephl1uWtrCPxeuvH3hnwsT6a6fAADY/FINu/PrlhzzeOfP\nZyxafuPiWV92eeinknW6FsJgAACb1Pw/H04kEuMW5W3uQdZfqn9jd/rz113b4NzmtXY6o8vp\nzRvVyQkLfv5ueL8+j/w0P+uuAacX6ogAAKQi1bArtV3nHwZlnNz5ir69Luv798Yy27W8557+\nneqXKqThAAD+LW9Jfnpmqp84bvTDV2vp/JkZRTd/Ea3DO6u2T8f3R075beRnb702cOBrb332\nw/gpo4Z2al2j8IYDAChQJTvjqkGPNK5UPDsjs1Kd3R/4dMrnj11Sv3Lp7Nxyux95/tQl+QW7\n5S/+/cZzjtmpbrWc3LI7tjq23/BJ63R4CGHyx4/ut3OtIlk5VbbbvfvjX6x52TKZ6XeP/+2i\nY/epuk37TfjLWK1Uw65Zs2a3TpgbQqJa/d0OOOSwww45YLftq6eFMGn4eS32PaVQRwQACCH0\nPvK2To8M/un7YccU/6Vzix2Peib56NufDn22+8hX7z7hhbEF+1zZapdbhia63dl/+LsvdmoW\nzmxZ56HRs1I/PIRwWNterbr2fu/dgee1zLrutCZXfvTnmpd9vsPBJQ++eOhHD2zaX8aqJZLJ\n5Bqenj12zB+L80II9evXP/GdT6+pUeLfzye/f/yE424el7dkZmEOuXkMHjy4TZs2IYSJEydW\nqVJlo6zpK8WAKPlKsf+HEu8P2+hrJvduvoZnq2Rn1L5nxIcdtgshTProkCrN3/pm7qIdi2aE\nEK7fptTTB7814p495k68vUT1i4dMn9+qVHbBUXdsX7Z3tcfGD2qbyuHz/3y4WKUOhz09ZuAJ\n2xYcfkWDsg+Ea8a9k7+6Zctkplc8Y9DI+/fd6L+N9bOWv7F74cDdz/hpesHPT+3f9KlV7VOi\n1jkbeyoAgBVVbF6u4IfMUjnp2TUKsiyEUDYjLZmfDCHMHPVWMpm/d+mc5Y8qtfjHENqmcniB\nLgdWW/bzSR3r9r7muZmjctewbJ3Tdtio73KDrCXs9ryud9+ZC0MInTp1atXz9nbli6ywQ1pm\n8WZHH1NY0wEArNoq/pwss2SRtIxSs2ZOWP4LFRJpWSkevvITWWWyEmmZa162RJlVrr95rCXs\ntjv+1O1CCCE888wzR5zR4ewq7kUMAGyhStY+K5n3yv2/L7mobsEFqsmL92sx6fiHnzhru9QX\nuWfw762P2abg56dvG1my3i0la5ff8GU3jVRvdzJkyJAQ8v/4ZXTl2nVDCAsnf3bjLf1mZFU/\n9Mxz2tQuXpgTAgCkJKfMIbe3qXr5Xofl3nV5s3qlBz188Z3DJr4xoNY6LfJq+zY3Lby9dZ1i\nH/S/oft3s+/4/vCcMqU3fNlNI9WwWzzroxNbtH3l50qL541ILp1x+A6t3pm2IIRwX+/7+/34\n3Uk1nMkDADa/c1/7Yv55HXt1Pm7Souz6jffp/8HLbUpnp354elblt3sfe2mPs679bWGdnXe9\n5cXvz9u+9IYvu8ms5arYZR7fp9rp/5t1xuW3PNiz05+fnFppj8fPeeOn67f/84BGrcc3uO+P\nj84o7EE3PVfFAqTIVbH/D236q2JJRar3sev16eSahz37YM9OIYRvr/8gu2SLOw+qW6rWXnee\nXGfad70Lc0IAAFKSatiNX7S0XLPqBT8/9umUso0uTA8hhFCsdrGlC34unNkAAFgHqYZd8xLZ\nE1//OoSwaOagp6fM3+XyXQq2fz5wQmbR+oU1HQAAKUv14okep9Xb647TD+3wRcYn/RMZZXq1\nrLx04ZgHb7ut67BJFfe9rVBHBAAgFamG3R43v9d94oG9Hr1rSaLI6b0/3LFY5tyJAztf1Te3\nWosnBhxVqCMCAJCKVMMuLaPsNc9+dsX8qfPSy5TMTgsh5JQ+6OU3m+3dplnJ9MRaDwcAoLCl\nGnazZs0KIYSQGZbMmbWwYFvVvZtVDXNnzwqhZMmShTMeAACpSjXsSpUqtYZnU7wZHgAQB/ec\n2zKlGnbdu3f/1+Pk0t9/+eHlZwdOT1Ttfl+vjT4WAADrKtWwu/baa1feeMctn7Su1+qOO7+4\n8vSTNupUAACss1TvY7dKRSru/uB1O0/95vahsxZtrIEAAFg/GxR2IYSi1YomEunbFc3cKNMA\nALDeNijs8pdMuf3qrzNzG1fK3NBABABgA6X6N3bNmjVbaVv+H6O//XXawt2u6rNxZwIAYD2k\nGnarklZ9x32PaH3yzVfuvtHGAQBgfaUadh999FGhzgEAwAZah7+Nm/rFy2cd3ea0l38teDj4\ngMbNDjnluU+nFM5gAACsm1TDbtboB+rtcfQjr36RmfPXIWV2qfvre8+0a173vpEzCm08AABS\nlWrYPXzkFfOKNP5g/MQHD6xesGWXG5/7Zfzw3YsuvPrYBwptPAAAUpVq2N0+Zlad9n2aVyqy\n/Mac8k3u6rTdzNF3FsJgAACsm1TDLi+ZzCqZtfL29KLpIeRv1JEAAFgfqYZdl1olfrz/qt8W\n5S2/MX/xH937jCpe7exCGAwAgHWT6u1OOr1w9Q07X9yg/r4XXXh680Z1iqYtGfvDJ4/1/u/g\naUu7v9GlUEcEACAVqYZdmYYXjHg1/dizr+x+3gfLNuaUqd/j6QFXNylfOLMBALAO1uGbJ2od\ndN5nv3b6/uOhX436dX5eRuXaDfZutVuJ9EThDQcAQOrW8SvFElkNm7VpuPLXxgIAsLmtwzdP\nAACwJRN2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACR\nEHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAA\nkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYA\nAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2\nAACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQ\ndgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACR\nEHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAA\nkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYA\nAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2\nAACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB24cQjD7/r97mbewoAgA0l7AAAIiHsAAAi\nkbG5B/hH3sLx/fs88vH3o6YuzKy/6z5nnXtqzZz0EMLiWaMevuexj779efbi/HJV6hzQrsux\nzauFECZ/+WbfJ14b9dsfiWJlt296wIWdji6algjJJYcdfvTJjzx7XLkiBcueetQRu/Z54rwq\nuatbBwAgDltM2CWX3t2122dFduvS9drS6TNf7XvXFReFJ+85I4TwWLcew4u36Hr16WWy8kYM\nffShWy5q2eTpsktHnntd3wbHdr62c91FU0bdfusDPao1vemwGmt4hVWuUzFrxXOWH3zwwdix\nY0MIY8aMqVChwuTJkwvvTQMAbERbStjNmfDokElLez19foOiGSGEWtfP7nnbBzOWJktnJCoc\ncOy5rdvuVjIrhFCt0nEPvnLdL4uWFl/w5YL85IEH771d6exQp3bPy0v/nl18zS+xynUqZmWt\nsNs777zz1ltvFfxcuXJlYQcAbC22lLCb9snIzNzGBVUXQsgpc8ANNxxQ8PNhRxz03SfDXxw/\n8c8/J40d+VnBxiJlD9+77uBeZ3ZouGvjHbbffudd92has/SaX2KV66ysTJkyVatWDSEsWLBg\nwoQJG+G9AQBsElvKxRP5S5KJtBVPnoUQ8pdM7Xn26Tc/+8G8tOINmuzd8dKLC7Yn0ktceFu/\nu2/ounvdcr99O+Sarqd3f+zrVa68JJlcwzoru/DCCwcOHDhw4MBu3bqNHDlyY7w5AIBNYUs5\nY1e2Sa3Fzw4fszCvTk56CGHRzCEdu/bres9DdaY8/MXkxY+9eHWp9EQIYdGs9wv2nzny5QEf\nLT3rjGOqb7/boSH89ma3ro/2C6feUfDs3KXJgh8WzRo2Ny8ZQpg7YdXrAABEY0sJuxK1z25a\naliPq/qcd+pBZTLmvHrfQ4tz9twlN3PBwrrJ5LCXPvjukB0rTh8/4vlH+ocQxv8xs2HJBa++\n/PTcYqUPblInMe+P196YWKzaESGEkMjcrmjmB32ea/mfgzPn/PbcPfcmEokQQmbxVa+ze/EK\nm/V9AwBsNFtK2CXScrrdff0jffo/eOs1s/KL1tlp/16dTwohFCl3VPfTJj/Y/+bX56fXqrvT\niZffU7p3l2cu7bLr0093P2N2v9f7Xfb03GKlytVp1KZX56MKlrrquo633D3gsnNeWpyf3H6/\ns1vM7LfmdTbjuwYA2IgSyWRyc89QKJLJxTPnJEuXyF7vFQYPHtymTZsQwsSJE6tUqbJRplp0\n6XkbZR2ALUr2TXdt7hGAELacM3YbXSKRVbrE5h4CAGAT2lKuigUAYAMJOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "customer_type_bike_share %>% \n",
    " ggplot(aes(x= customer_type, y = percentage, fill = customer_type)) +\n",
    " geom_col(position =\"dodge\") + labs(title = \"Bike share (%)\") + theme_classic() + coord_flip()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "51555beb",
   "metadata": {
    "papermill": {
     "duration": 0.015938,
     "end_time": "2022-05-22T15:11:10.914631",
     "exception": false,
     "start_time": "2022-05-22T15:11:10.898693",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Casual users take up 44% of the Cyclistic marketing share. Our goal is to convert these users into full-time members"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "31623f5d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:11:10.949152Z",
     "iopub.status.busy": "2022-05-22T15:11:10.947615Z",
     "iopub.status.idle": "2022-05-22T15:11:11.264232Z",
     "shell.execute_reply": "2022-05-22T15:11:11.262177Z"
    },
    "papermill": {
     "duration": 0.336152,
     "end_time": "2022-05-22T15:11:11.266643",
     "exception": false,
     "start_time": "2022-05-22T15:11:10.930491",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nXYo9+OjatyKSqXomSSR79zp6TYsKyvduLNUr5QgKCtJyOiZ2tnh1GVY05M73310/12fvzWzv\nzvYwPEusoNOrYm8ZHX55070wpyyVU2JVth5ybDx4Q6Ysdl+PaJ8lnb2nVzbv5yVt3wAA4E2U\nPseQos7GA70HXAx7EnARD/a1nfHlj39mFBFHvS4s8KeYK3qE3dvfY+d16+3Ht+aVLVu26WfP\nMi5nyVIiEhXrsJH1ShsOno0+yOB4akGnfXfCnoxHBU5s9ZWmM42ol+jwMNj7jirgfvbbdjtu\nhsQMruj5fosWLa4k8a+vz5Zq5dNsvF7TBn/43p3I6A5fVIy92eObSz7ZcO7pPfPKgQ0eRpur\njKucEquy9eQJT09PT88aOZJ4XBAAAKhD07ts+K5HnoYzCvtW7tD63cx2QT98Of/faKc537cX\nkfpt8o4e91fRam0Htq4WefPU0qkzbnka5VqUiLjkHF0jw8IdYyvVudChbEEfc9Cl9V8t1tt5\njJrgLyJ26exEZOGsr8Lzl27ZvMy8TcN/CRhaJXeJdp0a5nIO3b1uyc8n7lcbuqP609MjEqXv\n5rlf5m1VO3ehhs3rl8jjfmznqm+3nSnc/ts2GZNybCzOUkXE6FLpY+90U346Ze9abZiva+yN\nnbKWmNGo4MkWHUv7uvxv1+p1uy5mLN3n29rZk31VYnvY/fDDD0nbAQAAUE+O96ed3OzXb8Ls\nb2aNDdecC5Z57+tx01vndRUR/9G7Zod0nrV2xyfdl0daLFkD2v7y+Z0K5beIiKZ32fjP9kF9\nRm7YsmzbsscOblmKV2z5/chJDbI5i0jGMpPqFT+9fXy/fwoOb9m8TMYyg8/szt5v9Ix1i6c+\niDDkKFBy9JIRI9pXSdqCnbM3/ftvl0GDJm5Yt2h9hNEnb4GRX24Z1qlW0maLs1TrYOdhRaZ0\n/T1f90lxDrdlLPX5L53+ajdw5sSVtx0z+rTsN+2Lz3obteRflYhoNl5b+MGDhM7OcHFJyqVW\n0sT27dtr1qwpItevX/fyivtdxdjCB/VOrUWJiNjXbvbqjZKVpUpAKu/xRdquP1J/p2/nC387\nX7W8rS883let/P+mydv6wl+HD/nLmMODr92Jyp7NPa0XkkoOflqs9Gd//3An5P1YJ4I46nWZ\n6++48EPV1FmDrUfsXF1dE3iUX54AAABx6Ezps2dL60WkFnPk3Z6zT6bz/vj9uKf3pipbw27U\n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\nvmprYjFoKWc/OG2rMLeyx7t/9qbFrfr8dMrIZRNa+ZpFpFrtsJ969Xlr/Yn5fUKl9I+9WNIT\nNn70S/KMD0bXcXcVkdDqdXL29l79+k/tp93j7NKKJLj93Tnr1n2dnNHKEr81KaNf6yCjxdzG\n27Tji7Ode1b9354LHpUGGwoeZoMOnx1NN8+dE2W/2KJGLUuPPjOcPaZbxqf+6H7t6otIxU6j\nQlbujE3MEF8Fd7zpl74aO/ar/C3vbdjoY9REJDlwUERbpe7WW/guPeChbsPbPNa4nJuIVKzQ\n/a1NU3/PyA70NLlpmsHFzWRydXb5UJyC+5eS6Y769z9R/34RuZp45sAPezd/uObFoQfmv7/o\njkIvkKrQ7o68115Gg5S2m0l7BPe6w/Dxu8cvD6la7pfl3/o2eMqU78qJ5NjDRlPF1r656VYz\nWDoHWRfvOSl9QqX0j71YUk7H6Lr+fM/H8ze6Z58RKR3BzuLf1cP40dc/Jt3tu0pcgzqUN4vI\nwy0CJm3bIREVP0lIr9SnlhQ8zAs7z5h92uddQuvm2eRuD9cExw/j9gh5+PpPsqKs/j1Wv9P7\nb7uC2lRycDEOUOAu3WTs2PmRw3v3rD95Ji7u/B+x+5xdKcocgt1tl3l599xF30RGja3oZhQR\nS/mQZu27Nm5R4/GI8e+fuPJ8tRsftpOV71kgrhajQ2u95TSXJ+71/+/Sw0OmNXkn5mLzV2vk\n79R1EbnucLTBoIlus78u9WMvGvvmdnF304zua1Yty9+lGUrNX/aa0aOrv3Xz5j+OmY96VYm0\n3/akYoem6ZvX/xbnm5xtG9jAVwoe5m+Ltt6wwHIuBmWCncV6809yltJPALJ6KvVFU/gufVyV\n7OlDh/3iXvuh5g3C7qnZrmPL0c9MdXbJKFuU/fOx5DC6Be3bu3dNzHXfUznpl0SkgkfuN3dK\ndu5uPSN5d0qOUrv4ar1bJ8a+c+7kyrMS3LvidXfz8q4dlpNxakdSun1St6VvPJPqe+8df7cY\npfx1c1sDHxJb2tbEHHMu0wczJi/++rxTyyyexu2DrhzftPbIpSo9cp93bAkML+9iW7z+Mxfz\nnQ+Uc5OChxnwQEj6pW1/pOfY35iTfmzP5QynjcRRFP5fr7bCd+kpp9/ZH5+56JVJfbt1fKDZ\n3ZV81LwmBiWZUn9IlUxGc9XxHWrMmD3CFB7RpFYVd5N26dzvW1as9KzySGSQu2hSw+q6c9Ha\nB4b8x/XKqbWLX9PUus2bNTC8muvaqXO3+Td6zk27oatXu5BP3xg72/hUeIh79u4NS45klZvW\nXelgp7n+7eZ282w8sIHve2OnmweH1wzxOLBt6SexCZPHBji73GIIfPC+rOXLj4jMqu1jb9E0\nc6/Kngu3nvWp+Zx9yxc0TD/z0OpugyeNnze073/KG5K3LF/saVL699oCPgYoFQrfpWclVNP1\n3Rt2Hn60bmDiyZ/WLV0hIifPXbrXM8CgydW4s0lJwT4+Xs4eBFRGsHOEJgNnT668asPnW+dt\njL+arfkEVGzwYJ9RfTrY79c6cerglxd+OO7pDZk2vVbbp+6/9K6Ty721NGP/5gHjt53pNq7G\nX/oMQ+fN8Vy85O2XJ1/ONlSsdvfouUPrWEvN8cd/pqDN/dgL8zKWLPrwjdlJWa4Vq9YbPWtC\nA4/S9E9h9u3g47Iyzb1ZmPXaXqVe9yoy60DlLteeMlLAMH2nLpzw2oLl/505Qcx+D3Qf+397\nX13hjFE4jOL/61VXyC7dxa/ri/3j31ox59M0453V6vcav9jn1WGrxw67e9WqsE73ZixdOCTq\ngdXvjHL2CKAyTVf63I5SRNczL13RfbxMzi4EjsDmhvAxAHAbEOwAAAAUwcUTAAAAiiDYAQAA\nKIJgBwAAoAiCHQAAgCIIdgAAAIog2AEAACiCYAco7vKJiZqm9T6a6MQa1kzsWcnfw++uAU6s\nIb8wd7fgZp85uwoAuPV48gSA2yv1/FsRM1bf2TlqbvjDzq4FABRHsANwe1298KmIDFrwQv9K\nns6uBQAUx6FYALeXbrOJiMnAc+4B4LYj2AGq2bf6pbaN7/I0u/kGVYsYMT8+05a/N3bT4s4P\nNvIr5+7iZgkKrddvzILEbF1EYl9rrmnawjMp+ea1tfGxeAQV6cS4uL1rez/SzN/bw829XPV7\n2k59d4e9/eMw/4AGn4hIVEVPd/9uhS9kxl0+LqbgNFvucw5Pbf2PpmlelcbkzfBNr2qapr0b\nl2afTDmxc2TEQ5X9vU3u5Ws2bD3lzS35h1p47zV65isRtQxG07OrYosyUgAo0XQACjm4qIeI\nmH0bPjFs3HP/16e6u6tP/btEpNeRBF3XT24eatA075oPRk2YMnPKpD7tw0SkWu/Nuq6nJ31p\n0LSwZ77PW1TyHzNFpMXrsTddafy+l71cDK7u1fsNHTNl7PC2Nb1FpO3EHbqux3371ZrXmorI\noJUbtn31v8KX89PCpiIy48Rl++TmdpVExGC0nsvMsbf0DnA3eTW3v045syHU4upqvbP/01HT\nJ4/t1rKqiDSIXFaU3tpW16CmW3Rd121Z83uHaQbXESt+LNK/LwCUbAQ7QB3ZV38NcDNaAzv8\neDnT3pJy+ssaVte8YPdemJ+LufKJ9Oy8t4wK8bT4drC/HlnR01L+P3ldn/cI1QymH65k3my1\ntu4BVldrrZ3nUu3TOVkXnm3opxnMO5MzdF2PP9BBROaevnLT+lPjlovI3TMP2Cfb+5gDH2wq\nIiOPJuq6npV62KhpVTp/bu99MczX1Vprz8WreW/fMLqBiEw/dummvbnBzpa1qF9dTXMd/t7h\nm9YGAKUCwQ5Qx7nd4SLSeevJ/I3RUXXzgl1qUkJCYkpely0nZWiwh9m7jX3y59ebi8jb51Ls\nXbWsrn71Xr3pStMurBOROiO+z9+YGBslIq3WHtOLE+x0XW9ezuRddbqu6xmXvxORyOifPI2G\nus9G67oeF91bRAbGxOu6npX6o1HT7O15Mi59IyJ1o6IL79V1vbbVtULTT14f0EBE7uz0cVEK\nA4BSgXPsAHXE7zouIhGN/PI3hj7RMO+11bt82m+75k17fmDfHu1a3lvJ1/e1s9dOqqvac5pB\n0xb+94iIXDw4JjYtq/38HjddaXrSVhGpGlklf6NHpUgROffF+eIOYdKDQZdPzk3MtiUeekXT\njOPrVB9V0fPE2vUi8vOrew0uXtPCfEUkPfGzHF0//EoTLR+Td0sRST6cXHivfUUXYvo8vfyP\nJt6mU1uH7rmcWdw6AaBk4nYngDoMLgYRueHyU4PZJ+/1R8+26Tbv65CGrTu0avpY84efnVr/\nzOB2w+Jze03lWo2s6PHGOy/JrA+3j9roYqq84P4KRVit/tcmTXMRET37b7oK13BSK9vGZbOP\nX354fozVv2dNi0unvlWmz1oYnzXjra/OeodOreBmEBExuIlI3TFLX24dfMMSTOUaiOHnwnrt\nRdu0mVsOD/BeGtBkco/wJae+GFbcUgGgJHL2T4YAbpnze3uISNdtp/I3xi65T0R6HUnIuPyd\nUdMqP/pm/t6l1cvnHYrVdT32zRYisuL0r/6uxjs7birKStMurBWRuqP35m9MOjpeRB5Y8ate\nzEOx2RmnPIyGulHRvQPcQ7t/rev6pd8niMjwAzsNmnb/0qP22bKu/mrUtFqDd+d/b1Za7OrV\nq3ecSy28V7cfir13s719yWOVReT53eeLUh4AlHAEO0Ad2Vd/D3AzegR3PZKSZW/JuHSgpbfZ\nHuxSzy8TkQYTfsibP/Xs7jB3V7N367yWjEvfGDUt5NGaIjLl16SirTanq7/V1b3OnvjcKxVs\nWQljGvtrBtP2pHS9mMFO1/Xpod4Wvy5GTevx3Tld123Zl8q7GoLa1RCRjQnXLoaYFubrYrlr\n+59XbOi6vvyJ6pqmLY9LvWnvtatidT3zyg93mF0svu0TsnKKWCEAlFgEO0ApBxd0ExGLf+PB\noyZOHDWogY+5ysMD7MFOz7na1tdidKvw9Itzl7792sRRkRUs3s2reBpcvP+7cm1Kjs2+hKjK\nXiJi9m5d9JgT9/0sD6PBzbP2oJETZk4c/VBtHxFpPeFLe29xg91Pi5rajyfs+/OC3Fmh3iJi\n8X0s/2xXTqypbHJxtVbpPmDE7FlT+rarLSJ1+68oSm/+YKfreuybHUTkngm7ijxiACihCHaA\nar5/f0arhlU9TC6efpUef3rRlZSf5c+rYlNObu/38L0hvu5eFao++GifT35KvPDDnDt9rG4e\n/qczcu+BcmRJCxGpP35fsVZ69tv3I9o18fWyuJg9Qxu1mrLs67yu4ga71LgVIpJ3ExZd1w/O\naiwi1fvtvGHOS0e3PtW5ZQVvDzdr+ZoNWkx+67MsW5F6bwh2ui1zYGg5g4vXxri04gwaAEoc\nTdeLfXYzAIX98HyDJi8d2nAhrZOv2dm1AACKh2AH4Bpb1sVmviFHfIYln3jF2bUAAIqN250A\nyDV0+LNpv66PvpL55PrReY3HNzzWcMDuQt5lKtfy/PGPi7L8W7goAMDf4hc7ALnCAjz/yC4X\nPmz+8qnhzq4FAPBPEOwAAAAUwSPFAAAAFEGwAwAAUATBDgAAQBEEOwAAAEUQ7AAAABRBsAMA\nAFAEwQ4AAEARBDsAAABFEOwAAAAU8f9I563p3nEPDAAAAABJRU5ErkJggg=="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "weekday_statistics %>% \n",
    "  ggplot(aes(x = day_of_week,y= ride_count, fill = customer_type)) +\n",
    "  geom_col(position = \"dodge\") + labs(title = \"Ride count per weekday\") + theme_classic()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b6e4dc07",
   "metadata": {
    "papermill": {
     "duration": 0.016402,
     "end_time": "2022-05-22T15:11:11.299076",
     "exception": false,
     "start_time": "2022-05-22T15:11:11.282674",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The above visualisation shows that customers with memberships have more rides during the work days commuting to work. Casual users increase use over the weekend and even surpass those with memberships in that regard."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "73efb22d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:11:11.334325Z",
     "iopub.status.busy": "2022-05-22T15:11:11.332657Z",
     "iopub.status.idle": "2022-05-22T15:11:11.620206Z",
     "shell.execute_reply": "2022-05-22T15:11:11.618328Z"
    },
    "papermill": {
     "duration": 0.30792,
     "end_time": "2022-05-22T15:11:11.622879",
     "exception": false,
     "start_time": "2022-05-22T15:11:11.314959",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Don't know how to automatically pick scale for object of type difftime. Defaulting to continuous.\n",
      "\n"
     ]
    },
    {
     "data": {
      "image/png": "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\nSUVORK5CYII="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "weekday_statistics %>% \n",
    "  ggplot(aes(x = day_of_week,y=average_duration, fill = customer_type)) +\n",
    "  geom_col(position = \"dodge\") + labs(title = \"Average ride duration per weekday\") + theme_classic()\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "cacf4994",
   "metadata": {
    "papermill": {
     "duration": 0.017432,
     "end_time": "2022-05-22T15:11:11.658038",
     "exception": false,
     "start_time": "2022-05-22T15:11:11.640606",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "It's interesting to see however, that casual users use bikes for longer durations than members despite using the bikes less often than members on work days. But that also may be due to the fact that there are less casual users than members."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "6207882b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:11:11.695354Z",
     "iopub.status.busy": "2022-05-22T15:11:11.693597Z",
     "iopub.status.idle": "2022-05-22T15:11:11.967859Z",
     "shell.execute_reply": "2022-05-22T15:11:11.965769Z"
    },
    "papermill": {
     "duration": 0.295357,
     "end_time": "2022-05-22T15:11:11.970537",
     "exception": false,
     "start_time": "2022-05-22T15:11:11.675180",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "bike_type_statistics %>% \n",
    "  ggplot(aes(x = bike_type,y = ride_count ,fill = customer_type)) +\n",
    "  geom_col(position = \"dodge\") + labs(title = \"bike_type_usage\") + theme_classic() + coord_flip()\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "43cf242e",
   "metadata": {
    "papermill": {
     "duration": 0.017411,
     "end_time": "2022-05-22T15:11:12.006016",
     "exception": false,
     "start_time": "2022-05-22T15:11:11.988605",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "It's also clear to see that dock bikes are popular with casual users. Members have not used dock bikes in the previous 12 months. In addition the that, the use of electric bikes and classics bikes by members surpasses that of casual users."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "ebda17f1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:11:12.045026Z",
     "iopub.status.busy": "2022-05-22T15:11:12.042962Z",
     "iopub.status.idle": "2022-05-22T15:11:12.318969Z",
     "shell.execute_reply": "2022-05-22T15:11:12.316097Z"
    },
    "papermill": {
     "duration": 0.298455,
     "end_time": "2022-05-22T15:11:12.321831",
     "exception": false,
     "start_time": "2022-05-22T15:11:12.023376",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nF5Nq9A+s3LZ7n3pPeWa+KS3pSJvOE9atWXw/XWXbfrtNmzY1atRIRCIjI4sWLZqbnxkAACBP\n5VWwyzcIdgAAQFV5dEsxAAAA5DaCHQAAgCIIdgAAAIog2AEAACiCYAcAAKAIgh0AAIAiCHYA\nAACKINgBAAAogmAHAACgCIIdAACAIgh2AAAAiiDYAQAAKIJgBwAAoAiCHQAAgCIIdgAAAIog\n2AEAACiCYAcAAKAIgh0AAIAiCHYAAACKINgBAAAogmAHAACgCIIdAACAIgh2AAAAiiDYAQAA\nKIJgBwAAoAiCHQAAgCKcHF2Aw8ycOdPT09PRVQAAkOuCg4MdXQLyiE7TNEfXkKf27NkzYMCA\n8PBw+3ar0+k8PDxEJDExMS0tzb6dPxij0ejq6ioiN27ccHQtGVxdXY1GY1paWmJioqNryeDh\n4aHT6SwWS0pKiqNrERFxcnJyc3MTkbi4uHzyu+ni4mIymaxWa0JCgqNryWA2m/V6fXJycnJy\nsqNrERHR6/Vms1lEEhISrFaro8sREXF2dnZ2drbZbPHx8Y6uJYO7u7vBYEhJSbFYLI6uRSQf\n77Q1TYuLi7N75zabTafT2b1b5EOPXbATkaioqDJlyti3T51OV7JkSRG5fPlyPvn7Zzab/fz8\nROT06dP55Kfs5+dnNpsTExMvXbrk6FoylCxZUqfTRUVF5ZP46+rqWqRIERE5e/ZsPokIPj4+\nBQoUSE5OjoyMdHQtGYoXL+7k5BQTExMTE+PoWkRETCaTv7+/iERGRuaTrOnt7e3t7Z2WlhYR\nEeHoWjIUK1bM2dn5+vXr0dHRjq5FRMRgMJQoUUJELl68mJSU5OhyREQ8PDwKFiyoadrp06ft\n3nl0dDTB7jHxOH4V6+vre+3aNfv2mZiY+MILL4jI4sWL69evb9/OH0xYWNjIkSNF5MqVKwaD\nwdHliIgMHz78p59+atSo0WeffeboWjLUrVvXYrF88sknrVu3dnQtIiK7du3q27eviBw6dKhg\nwYKOLkdEZPLkyStWrKhWrdr+/fsdXUuGZs2aXbhwYejQoT179nR0LSIix48f79ixo4hs27bN\n7v80Ppj58+fPmjXL399/7969jq4lQ1BQ0MGDB3v27DlkyBBH1yIiEh0d3bhxYxFZvXp17dq1\nHV2OiMjatWvHjx/v7Oxs979QeKxw8gQAAIAiCHYAAACKeBzn2OUGq9W6ZcsWEalcuXL6zDaH\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "monthly_bike_data %>% \n",
    "  ggplot(aes(x = month,y = ride_count,fill = customer_type)) +\n",
    "  geom_col(position = \"dodge\") + labs(title = \"bike_usage_per_month\") + theme_classic()\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c33e1fbf",
   "metadata": {
    "papermill": {
     "duration": 0.018095,
     "end_time": "2022-05-22T15:11:12.357785",
     "exception": false,
     "start_time": "2022-05-22T15:11:12.339690",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The bar graph above illustrates that casual users' bike usage between June and September is quite prominant. In Chicago, those months are associated with warmer weather conditions. It could be that casual riders tend to use the cyclistic bikes more in seasons with warmer temperatures."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "f1a89e18",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-05-22T15:11:12.397407Z",
     "iopub.status.busy": "2022-05-22T15:11:12.395628Z",
     "iopub.status.idle": "2022-05-22T15:11:20.519680Z",
     "shell.execute_reply": "2022-05-22T15:11:20.516707Z"
    },
    "papermill": {
     "duration": 8.147279,
     "end_time": "2022-05-22T15:11:20.523145",
     "exception": false,
     "start_time": "2022-05-22T15:11:12.375866",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\n33yTX1xSNCsrJbGKPR8aE0JYMLaCl+pXfv3VXfvu0we2z/32H/0P7d6pbv1mexxwxMU33vfR\n+DlruUmZtR/vCkc1W/W3b9Vl/xDCkunjK3PzSipc+O+SZDKr4a/TEqv+qP0BzUIIU8bMK78x\nd6fcDftFR6zhcBZMGB/W/89XyfswhNDoF43W8tP1PfxKqvx4AETGdexCWp213QmJshNEq/17\nN4SwVfrPWZxMFoUQ0rLaXHLRCRWus/UeTTZm/dXV3fbwdyb8+J9/vjj0jbeHDf/4P8P+/un7\nr91342WHX/HCq7et7aTd2o/358FWGymRkhFCSKTUqWDvFZLre3GNNZ5sS6QmQgilhaWrb9wA\nKWs4nGRpYVj/P18l78MQQkrG2v/baf0Of7VbV/zTyo8HQGT8C2Ad6rbpFMI/Z474LIS9V/nR\nO+U+JTYtq22T9NQ5pUtuu/329UqPSq5fsUTGboecuNshJ4YQSpb+9O4Lfz75jOteu+Po5/64\n+LdN1ppflTD0p6V71csov2XumPdDCA06dVjLrYqWrt9Ho2bU2yM1kcif+2ZJCKs88Tz5gx9D\nCC06b+ApulW89uOS/Rtklt8yb+z7IYSc1h3CRvz5NtJGHv763tsARM9TsetQr9Uft0pPmTfp\nqrdnr5RZc768bdj8gp+/T6RfvkNuSeFPV3/y08oLlJ63S9vmzZu/OrviSqvs+itb8tMz7du3\n33nPviu2pNZpevApV/Vr3zCZTL69ziKshMGXvbnyhtL7z/9XCOGXl3Ysv3Xxjyv9run/vG29\nfktqVttTm2UXL/368n//WH578dKJfT+flUjJuHiHqnlW8aWL/77yhuSDF3wcQuh2cacQNvzP\nt5HW9/A38t4GIHrCbh1SM1s/dWK7ZMnSXt1PHfHd4rKNc8f948j9b1llz1Of6BNCuKfnQYM+\n/aFsS7Jk4V8vObD/F5ML6vc6slHWRq5fXlbDg+dN+Wb0p/2ue3X0io2zxvz9+m/mJxJpp5Z7\nPVmypOLX9q3Tty+fdN5jH5Y91VdaPPfRi/a7d+K8Ok1+9dDyl/mXvdztk3Nu+HH5ZxvMHfvK\n4b97o8LV1jLGtQ8cHkJ46NdHvjFu2evJihdPvvKw/b8rKG79q0d2r5e+YfOvYurrp53z8Ltl\n1/xNFs9//JID7xo/N6Nu18d+1bpshw378228Sh7+et3bANReNf223JpUdm2IfZ6cuMr21S9Q\n3KtDbgghkUhtuX3XXdptnUgkMnN3f6B3+7DyBYpfvuygsnu1zc67H7h/j7aNs0IImQ26vjFj\n8VrGqOT6q0w14saDy35X03a7HNDzwN12bpeSSIQQel7xVtkOJUWzMlMSiUT6IceccMZ571T+\neM9rUTctc5vuTeuEEDJzW+62W+cGGakhhLSsNk+NnbviVgXz/9UmKy2EkNW44/8dfdz+u3eu\nk5LIqLvzTjnp5S/AsfoYq12guPTek3YqO/xWO3Tbd7eOZRcQbtDuyHFLVr1AcfdHxq0yfMfs\n9NSM5mu5e8sud3JB7+4hhIwGLX+x+04NM1NDCKnpje4ZvtJFRirz51vTfbi6soFX3zMvKy0t\nK6/chkodfiXv7cqPB0CUnLFbt9TMbZ//37iHrzqrW7ut53375bfzU391ct9/Tx62Z27mKnse\ndec//zu0/3EH7b542tgPh49cVH/731546+dT/v3r1d6SuWHrl7fndW/969m7jtinW3Lm1x++\n9+H475bsedDx/V/579u3Lwu+lLRG/7ztzG2aZL/96ksffbnud8uuPFLrDyd/eXffU3fILRk9\nakJKw1aHnXrxh1+NPnXHn1/ylVG/+38/f/m0w7rXL/zmjZf/9v6no1Nb7v3UJx/uUGelc2yV\nGCPxx2dGvfvULf/Xfccl34/7+MtpW7Xfvc91A8eOealD1b0JoPdDH3w08LJdm6eMGzWupF6z\nA4/r8/dRX/ftsdJFRjbsz7fRKnX4lby3AajlEslKXAMM1q548exvpi/J27712q68V0POb1nv\noe8Xfb6osGtOJA20Od/bANQs74qlCqTlNGq//dou2EYVcm8DsCaeigUAiISwAwCIhKdiidxv\n7+7fZUnRNmv94F0AiIM3TwAARMJTsQAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAA\nkRB2AACRqKWfPPHaa6/169evpqcAovKXv/xlm222WX37Nddc88knn1T/PECsmjdv/vTTT1f4\no1oadtOmTXvnnXdqegogKosXL65w+6hRozzgAFUoLy9vTT+qpWFXJi0trcL/vAaovKlTpxYX\nF69zNw84wEaqzKNNrQ671q1bT5o0qaanALZseXl533zzzTp384ADbKTKPNp48wQAQCSEHQBA\nJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB1sKh23bX3xN/Nregpgy7Z05vMtW7acVlhS04OwZRB2\n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\nAACoFRKJircnk9U7R9ScsQMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIhEWvX8msIFE//c7y8ffzkpPzVnm+06HnP2uT22rbuhi5V+MGjAa8M+n7YwtUPn3Xuf\nf1pedloI4ccRV591+5fl9zv9iSFHNcra6NkBALYM1RN2yQF9r/us7h7nXnN645TF7w9+8O5L\nLt/huQcbp2/I+cLJL15z3+ApJ5973ukNi18f2P/qPxY+O/DclBDmjZpXp9HhF57VacWe29ZL\nr7pDAADY3FVH2BXMf/+9n5b88Z4/7NUgM4Sw3RWX/v2EKwbPXHJui/U/aZcsvHfwuLYn3n1c\nz7YhhHZ3JY479a5np/c+pWXOT2MX5Hbs3r17p3WuAQAQpep4jV1KWuPTTz99j3oZy75PpIUQ\nslNTQgjJ4jkvPHLHBeecdkyvk86/8s53x88tf8NksuDbb6eV31Iwf9jU/JKDDmpZ9m1m7t5d\n62aM/GBGCGHUgoKGXXNLli6Y8dO8ZEVjLFiuuLg4JcWLCwGA2FTHGbv0nJ2POmrnEMLcUZ98\n/sMPn7/7YpNOh5/SNDuE8NcrL3pzaaezz+rbun5i/IjX+11xTsmAJw9ukV12w5L8by7qe/sr\nLz21YqnCxV+EEDpm//wc647ZaW9+MT+cFP67qCg5vF+vB8cXJZNpOU0O+e2F5xy+c/kxDj74\n4OLi4rKvW7VqtYkPGgCgulXTmyfK/Dj8vTe/nj5lytK9ftMmhJA/+9UXJ86/9bm+nXPSQwht\nt+9c8slJgx4ec/DNu61phdKCxSGERmk/n29rnJ5avCi/pHD6otT0No273/nsTbnJhZ+88fif\nHrsms/3TvTvkbvKjAgDYPFRr2HU478o/hbDk+0/POe+2G5t3vLDJ58lk8qoTjym/T07x9JDs\nll9QFEIozi8IIeTn55f9KDMrKyWjTghhbnFp3dTUso2zi0pSczNSM1oOGTJk+RqZ+xx/2cQ3\nR77359G97957xcr9+vUr++KBBx4YM2ZM69atN+WxAgBUt+oIuwVff/TRpMxDD9m97NvsFrsf\nvlXW62/NSDsnI5GaM/j5J8rvnEhJXzLz+RPOXFFpoVevXmVf3D/k5RY5O4UwbMLS4taZy8Lu\nq6XFDfau4LRc12Z13pkzs/yW3XdfNkC9evVWxCIAQDSq4z0ERUs/fPSR+2YVlS77PlkyZklx\n9jbZ2c0OCaVL3pxTkrVM5nO3Xt///RnZTU8eOnTo0KFDXxp8V0paw6HL5WWlZuXu3yIj9a3h\nPy1befGoTxcWduu59byJ/c8489wZhct/RSj98PsluR23r4ajAwDYTFRH2DXscE7bjIIrbv/L\nyNETvh73v8H9Lh21NPPkk/My6v3izC6Nnrn8ljc/Gvnt5AmvDLzitXGzD+jRdG1rJTIuObbD\n10/e8M7ICT9MHv34dfdkNz/w1FZ16+cd32jJj5ffMPA/oyd8NWbUoPsvG7a43tlnCjsAoBZJ\nJJMVXhukii2Z/tmAgc99Pn5qcXq9bdp0OPTUc/bfITeEkCyZ/+KjD/1j+P/mFqW3ytv5uDN+\nv0/7+ituVbx0/LEnrfSu2BBCSJa8/fT9g9/+dHZ+ou0u+/Xpe1a7nLQQQsHcMU888uy//vdV\nfmq9vPadjzr97L22qfg6eX369Bk4cGCPHj2GDx++CY8ZACgnkah4e7WUSG1RTWG3WRF2AFD9\nhF01cJ1eAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBIpNX0\nAAAAK0kkKt6eTFbvHFsgZ+wAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAA\nIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAikVbTAwAAW6pEouLtyWT1zsFy\nztgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARCKtpgcAalIiUfH2ZLJ65wCgKjhjBwAQ\nCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcA\nEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEH\nABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlh\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABCJtJoeANgyJBIVb08mq3cO\nANbMGTsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBIuNwJALASlzfacjljBwAQCWEHABAJ\nYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCdexgwi5BhVA7eSMHQBAJIQdAEAkhB0AQCSEHQBA\nJKrpzRPJ4rkvPzbwHx//b3Z+SvPW7Y84pc8hXbfe0MVKPxg04LVhn09bmNqh8+69zz8tLzst\nhPDjiKvPuv3L8vud/sSQoxplbfTsAABbhmoKu3/edsmzY+v3PvuCDi1yvnj3+QE3nLv0oaeO\nal13A5aa/OI19w2ecvK5553esPj1gf2v/mPhswPPTQlh3qh5dRodfuFZnVbsuW299Ko7AgCA\nzV11hF1JwbRHRs7a77a7D+/UMITQvsNOP3x6/CsDRh91+57rvVay8N7B49yR6z4AACAASURB\n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\nQCTSanoAANi8JBIVb08mq3cOWH/O2AEARELYAQBEQtgBAETCa+wAgFqhNrx60hk7AIBIOGNH\nrVYb/usNgNrDGTsAgEgIOwCASHgqFgA2nFd0sFlxxg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASaTU9AFCrJRIVb08m\nq3cOgCg4YwcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcA\nEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEH\nABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEIm0\nmh4Aql4iUfH2ZLJ65wCA6uWMHQBAJJyxA7YMTsQCrJOwAwBYyZb7X5KeigUAiISwAwCIRHU/\nFfvk73+XddMjJzSpsxFrlH4waMBrwz6ftjC1Q+fde59/Wl52WgjhxxFXn3X7l+X3O/2JIUc1\nytq4eQEAthjVGXbJrz76y8vfzztu456gnvziNfcNnnLyueed3rD49YH9r/5j4bMDz00JYd6o\neXUaHX7hWZ1W7LltvfSNnhkAYItRTWH304j7L39w+OxFhRu7ULLw3sHj2p5493E924YQ2t2V\nOO7Uu56d3vuUljk/jV2Q27F79+6d1rkGAECUquk1drmdjrv6pjvuvvPyVbYni+e88MgdF5xz\n2jG9Tjr/yjvfHT93pZ8mC779dlr5LQXzh03NLznooJZl32bm7t21bsbID2aEEEYtKGjYNbdk\n6YIZP82r8JTgguWKi4tTUry4EACITTWdscuo37Jd/VBSuOor3v565UVvLu109ll9W9dPjB/x\ner8rzikZ8OTBLbLLflqS/81FfW9/5aWnVuxfuPiLEELH7J+fY90xO+3NL+aHk8J/FxUlh/fr\n9eD4omQyLafJIb+98JzDdy7/uw4++ODi4uKyr1u1arUpDhMAoAbV5HXs8me/+uLE+bc+17dz\nTnoIoe32nUs+OWnQw2MOvnm3Nd2ktGBxCKFR2s/n2xqnpxYvyi8pnL4oNb1N4+53PntTbnLh\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic_data %>%\n",
    "  ggplot(aes(x=hour)) + \n",
    "  geom_histogram(binwidth = .5, fill =\"blue\") + facet_wrap(~customer_type) + theme_classic() + labs(title = \"ride distribution per hour\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "005040e9",
   "metadata": {
    "papermill": {
     "duration": 0.01888,
     "end_time": "2022-05-22T15:11:20.560773",
     "exception": false,
     "start_time": "2022-05-22T15:11:20.541893",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Peak hours for both customer types are between 3pm and 8pm, with 5pm having the highest volume of rides."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4e205687",
   "metadata": {
    "papermill": {
     "duration": 0.018515,
     "end_time": "2022-05-22T15:11:20.597903",
     "exception": false,
     "start_time": "2022-05-22T15:11:20.579388",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Key takeaways from analysis\n",
    "\n",
    "* Casual users tend to ride longer distances than members.\n",
    "* Casual users bike usage has higher volumes from Saturday to Sunday.\n",
    "* Causual users tend to ride in warmer climate conditions which are associated with the months from June to    September.\n",
    "* Peak hours are between 3pm and 8pm for both members and casual users, with 5pm having the highest volume of users.\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3b783d9e",
   "metadata": {
    "papermill": {
     "duration": 0.018508,
     "end_time": "2022-05-22T15:11:20.634748",
     "exception": false,
     "start_time": "2022-05-22T15:11:20.616240",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Recommendations\n",
    "\n",
    "In order to convert casual users into full time members, the following may need to be considered;\n",
    "* Marketing campaigns would need to be targeted directly at casual users.\n",
    "* Since casual users tend to ride longer distances, incentives - such as a rewards program can be introduced for using bikes for longer durations when becoming a full-time member. This may encourage casual users to be full-time members.\n",
    "* The same could be said about using Cyclistic consistently throughout the year. This way, casual members would be encouraged to use bikes more regularly, and not limit use to warmer seasons.\n",
    "* Casual users can also be encouraged to use the bikes to travel to work, this increases usage during week day. This can be done by promoting how using bikes over motor vehicles reduces carbon emmisions - making it safer for the environment - also tying it in with a type of rewards program for full-time members.\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "655793cd",
   "metadata": {
    "papermill": {
     "duration": 0.019223,
     "end_time": "2022-05-22T15:11:20.672488",
     "exception": false,
     "start_time": "2022-05-22T15:11:20.653265",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Thanks for reading!"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 332.633511,
   "end_time": "2022-05-22T15:11:21.013632",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-05-22T15:05:48.380121",
   "version": "2.3.4"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
