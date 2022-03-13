#' Intensive care admission and death of COVID_19 patients in a secondary care hospital in Belgium
#'
#' A dataset containing attributes of COVID_19 patients admitted for intensive care admission in Belgium
#'
#' @format A data frame with 64 rows and 5 variables:
#' \describe{
#'   \item{icu}{admission to ICU, binary (0 for no, 1 for yes)}
#'   \item{sex}{sex}
#'   \item{age}{age in year}
#'   \item{ldh}{lactate dehydrogenase in U/L}
#'   \item{spo2}{oxygen saturation}
#'
#' }
#' @source \url{https://jeccm.amegroups.com/article/view/6927/html}
"covid"
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
#' @source \url{http://www.diamondse.info/}
"pharmacy"
#'
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
#' codex
#'
#' codex
#'
#' @format
#' \describe{
#'   \item{id}{id}
#'   \item{gender}{score}
#'   \item{age}{age}
#'   \item{bmi}{height}
#'   \item{weight}{diet.type}
#'   \item{number_doses}{initial.weight}
#'   \item{tmax}{final.weight}
#'   \item{cmax}{id}
#'   \item{t1_2}{score}
#'   \item{auc}{age}
#'   \item{lenght_hospital}{height}
#'   \item{lenght_intermed}{diet.type}
#'   \item{crp}{initial.weight}
#'   \item{comor_e}{final.weight}
#'   \item{comor_p}{final.weight}
#'   \item{comor_v}{final.weight}
#'   \item{comor_c}{final.weight}
#'   \item{comor_r}{final.weight}
#'   \item{obese}{final.weight}
#' }
"codex"
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

