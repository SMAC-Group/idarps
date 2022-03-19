#'
#'
#' Intensive care admission of COVID-19 patients in Belgium
#'
#' @description Data from Parisi, et al., (2021) which studies the applicability of predictive models for intensive care
#' admission of COVID-19 patients in a secondary care hospital in Belgium. This study is based on data of
#' patients admitted to an emergency department with a positive RT-PCR SARS-CoV-2 test.
#'
#' @format A data frame with 64 rows and 5 variables:
#' \describe{
#'   \item{icu}{admission to an Intensive Care Unit, binary (0 for no, 1 for yes)}
#'   \item{sex}{sex, binary (men, women)}
#'   \item{age}{age in year}
#'   \item{ldh}{lactate dehydrogenase in U/L}
#'   \item{spo2}{oxygen saturation in (percentage)}
#' }
#'
#' @references Parisi, Nicolas, et al. "Non applicability of validated predictive models for intensive care admission and death of COVID-19 patients in a secondary care hospital in Belgium.", Journal of Emergency and Critical Care Medicine, (2021).
#' @source \url{https://jeccm.amegroups.com/article/view/6927/html}
"covid"
#'

#'
#' Customer attendance of a pharmacy in Geneva
#'
#' A dataset containing the number of clients in a Pharmacy for each hour over two years
#'
#' @format A data frame with 17520 rows and 4 variables:
#' \describe{
#'   \item{date}{the date}
#'   \item{hours}{the hour of the day (1-24)}
#'   \item{weekday}{the week day}
#'   \item{attendance}{The recorded number of clients}
#'
#' }
"pharmacy"
#'



#'
#' biomarkers in pigs fed with various diets
#'
#' A dataset containing measured biomarkers in pigs fed with various diets
#'
#' @format A data frame with 61 rows and 9 variables:
#' \describe{
#'   \item{id}{the id of the pig}
#'   \item{group}{the diet fed to the pig (chipped diet or non chipped diet)}
#'   \item{gender}{the gender of the pig}
#'   \item{urine_cortisol_pg_mg}{urine costisol in pg/ml}
#'   \item{serum_cortisol_ng_ml}{serum cortisol in ng/ml}
#'   \item{serum_acth_pg_ml}{serum acth in pg/ml}
#'   \item{serum_crh_pg_ml}{serum crh in pg/ml}
#'   \item{testosterone_ng_ml}{testosterone in ng/ml}
#'   \item{lh_ng_ml}{LH in ng/ml}
#'   }
"cortisol"
#'
#'


#'
#' codex
#'
#' Data concerning an observational study conducted at Geneva University Hospitals to assess the impact of weight on the pharmacokinetics of dexamethasone in normal-weight versus obese patients hospitalized for COVID-19.
#'
#' @format
#' \describe{
#'   \item{id}{id}
#'   \item{gender}{gender. 0 corresponds the men and 1 to women}
#'   \item{age}{age}
#'   \item{bmi}{bmi}
#'   \item{weight}{weight in (kg)}
#'   \item{number_doses}{Number of doses of the dexamethasone (DEX) drug}
#'   \item{tmax}{the time it takes for the drug to reach the maximum concentration (i.e. Cmax) after its administration in hours (h)}
#'   \item{cmax}{the maximum concentration that  achieves in the blood after the drug has been administered (ng/m)}
#'   \item{t1_2}{t1_2 is the time required to decrease the drug concentration within the body by one-half during elimination in hours (h)}
#'   \item{auc}{the integral (from 0 to 8 hours) of a curve that describes the variation of a drug concentration in the blood as a function of time it takes for a drug to reach the maximum concentration (Cmax) after administration of a drug (ng.h/m)}
#'   \item{lenght_hospital}{Number of days the patient were hospitalized}
#'   \item{lenght_intermed}{Number of days the patient were hospitalized at the intermediate and intensive care unit}
#'   \item{crp}{crp}
#'   \item{comor_e}{Presence of cormobidity type e}
#'   \item{comor_p}{Presence of cormobidity type p}
#'   \item{comor_v}{Presence of cormobidity type v}
#'   \item{comor_c}{Presence of cormobidity type c}
#'   \item{comor_r}{Presence of cormobidity type r}
#'   \item{obese}{Is the subject obese. Indicator variable based on the BMI > 30}
#' }
"codex"
#'


#' bronchitis
#'
#' bronchitis
#'
#' @format
#' \describe{
#'
#' }
"bronchitis"
#'


#'
#' diet
#'
#' diet
#'
#' @format
#' \describe{
#'   \item{id}{id}
#'   \item{gender}{score}
#'   \item{age}{age}
#'   \item{height}{height}
#'   \item{diet.type}{diet.type}
#'   \item{initial.weight}{initial.weight}
#'   \item{final.weight}{final.weight}
#' }
"diet"
#'



#'
#' reading
#'
#' reading
#'
#' @format
#' \describe{
#'   \item{id}{id}
#'   \item{score}{score}
#'   \item{age}{age}
#'   \item{group}{group}
#' }
"reading"
#'



#'
#' students
#'
#' students
#'
#' @format
#' \describe{
#'   \item{day}{day}
#'   \item{case}{case}
#' }
"students"
#'


#'
#' COVID-19 Spatial
#'
#' Data from the COVID-19 Data Hub joined with spatial features of European countries
#'
#' @format
#' \describe{
#'   \item{admin}{Country}
#'   \item{iso_alpha_3}{3-letter code of the country according to the standard ISO 3166-1 Alpha-3}
#'   \item{date}{Date}
#'   \item{confirmed}{Cumulative number of confirmed cases}
#'   \item{population}{Total population}
#'   \item{tests}{Cumulative number of tests}
#'   \item{diff_confirmed}{Daily number of confirmed cases}
#'   \item{diff_test}{Daily number of tests}
#'   \item{confirmed_per_pop}{Number of daily confirmed cases divided per the country population}
#'   \item{confirmed_per_pop_ma}{Moving Average applied to confirmed_per_pop with a window of 7 days}
#'   \item{geometry}{`sf` geometry list of country}
#' }
#'
#' #' @source \url{https://covid19datahub.io/}
#'
"data_covid_europe_spatial"
#'
