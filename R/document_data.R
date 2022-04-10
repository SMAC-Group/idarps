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
#'   \item{cortisol}{urine costisol in pg/ml}
#'   \item{acth}{serum acth in pg/ml}
#'   \item{crh}{serum crh in pg/ml}
#'   \item{testosterone}{testosterone in ng/ml}
#'   \item{lh}{LH in ng/ml}
#'   \item{caloric}{Daily caloric intake in kcal}
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
#' Data collected in a study to assess the effects of smoking and pollution on being diagnosed with bronchitis. This dataset is based on 212 subjects
#'
#' @format
#' \describe{
#' \item{bron}{Presence of bronchitis}
#' \item{cigs}{Average daily number of smoked cigarettes}
#' \item{poll}{Pollution index}
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

#' Reading dataset
#'
#' Study on the effectiveness of directed reading activities for elementary school students (6-12 years old).
#'
#' @format
#' \describe{
#'   \item{id}{Student id.}
#'   \item{score}{Degree of Reading Power (DRP) test score.}
#'   \item{age}{Age of the students.}
#'   \item{group}{Binary variable indicating whether a student participated to the directed reading activities (Treatment if the sutdent participated, Control otherwise).}
#' }
"reading"



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
#' Data from the COVID-19 Data Hub joined with spatial features for Switzerland
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
#' @source \url{https://covid19datahub.io/}
#'
"data_covid_switzerland_spatial"
#'
#'
#'


#' HP13Cbicarbonate
#' @description Data from an experiment made on rats which compares the HP13C bicarbonate signal intensities normalized to
#' the total sum of metabolites and corresponding initial reaction rate as a function of the injected dose of HP1-13C pyruvate.
#' Two groups of rats were compared (i.e. fed and overnight-fasted). Dataset from Can et al. 2022.
#'
#'
#' HP13Cbicarbonate
#'
#' @format
#' \describe{
#'   \item{signal}{HP13C bicarbonate signal intensities normalized to the total sum of metabolites}
#'   \item{dose}{initial reaction rate as a function of the injected dose of HP13C pyruvate}
#'   \item{group}{fed and overnight-fasted}
#' }
#'
#' @source \url{https://www.nature.com/articles/s42003-021-02978-2}
"HP13Cbicarbonate"
#'







#' snoring
#' @description Study on the physical and behavioral characteristics of snorers.
#'
#' snoring
#'
#' @format
#' \describe{
#' \item{sex}{gender of the person (0 for males and 1 for females).}
#' \item{age}{age in years}
#' \item{height}{height in cm}
#' \item{weight}{weight in kg}
#' \item{smoke}{smoking behavior (0 for non-smokers and 1 for smokers).}
#' \item{alcohol}{number of glasses drunk per day (in red wine equivalent).}
#' \item{snore}{snoring diagnosis (0=not snoring, 1=snoring).}
#' }
#'
"snoring"
#'
