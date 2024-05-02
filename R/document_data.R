#'
#' Intensive care admission of COVID-19 patients in Belgium
#'
#' @description Data from Parisi, et al., (2021) which studies the applicability of predictive models for intensive care
#' admission of COVID-19 patients in a secondary care hospital in Belgium. This study is based on data of
#' patients admitted to an emergency department with a positive RT-PCR SARS-CoV-2 test.
#'
#' @format A data frame with 64 rows and 5 variables:
#' \describe{
#'   \item{icu}{admission to an Intensive Care Unit (0 for no, 1 for yes)}
#'   \item{sex}{sex (men, women)}
#'   \item{age}{age in years}
#'   \item{ldh}{lactate dehydrogenase in U/L}
#'   \item{spo2}{oxygen saturation in percentage}
#' }
#'
#' @references Parisi, Nicolas, et al. "Non applicability of validated predictive models for intensive care admission and death of COVID-19 patients in a secondary care hospital in Belgium.", Journal of Emergency and Critical Care Medicine, (2021).
#' @source \url{https://jeccm.amegroups.org/article/view/6927/html}
"covid"
#'

#'
#' Customer attendance of a pharmacy in Geneva
#'
#' @description This dataset contains the number of clients in a pharmacy for each hour over two years.
#'
#' @format A data frame with 17520 rows and 4 variables:
#' \describe{
#'   \item{date}{the date}
#'   \item{hours}{the hour of the day}
#'   \item{weekday}{the week day}
#'   \item{attendance}{the recorded number of clients}
#' }
"pharmacy"
#'



#'
#' Biomarkers in pigs fed with various diets
#'
#' @description This dataset contains measured biomarkers in pigs fed with various diets.
#'
#' @format A data frame with 61 rows and 9 variables:
#' \describe{
#'   \item{id}{the id of the pig}
#'   \item{group}{the diet fed to the pig (chipped diet or non-chipped diet)}
#'   \item{gender}{the gender of the pig}
#'   \item{cortisol}{urine costisol in pg/ml}
#'   \item{acth}{serum acth in pg/ml}
#'   \item{crh}{serum crh in pg/ml}
#'   \item{testosterone}{testosterone in ng/ml}
#'   \item{lh}{LH in ng/ml}
#'   \item{caloric}{daily caloric intake in kcal}
#'   }
"cortisol"
#'
#'


#'
#' codex
#'
#' @description This dataset is based on an observational study conducted at Geneva University Hospitals to assess the impact of weight on the pharmacokinetics of dexamethasone in normal-weight versus obese patients hospitalized for COVID-19.
#'
#' @format
#' \describe{
#'   \item{id}{ID of the patient}
#'   \item{gender}{Gender (0 for men and 1 for women)}
#'   \item{age}{Age}
#'   \item{bmi}{Body mass index}
#'   \item{weight}{Weight in kg}
#'   \item{number_doses}{Number of doses of the dexamethasone (DEX) drug}
#'   \item{tmax}{The time it takes for the drug to reach the maximum concentration (i.e. Cmax) after its administration in hours (h)}
#'   \item{cmax}{The maximum concentration that  achieves in the blood after the drug has been administered (ng/m)}
#'   \item{t1_2}{t1_2 is the time required to decrease the drug concentration within the body by one-half during elimination in hours (h)}
#'   \item{auc}{The integral (from 0 to 8 hours) of a curve that describes the variation of a drug concentration in the blood as a function of time it takes for a drug to reach the maximum concentration (Cmax) after administration of a drug (ng.h/m)}
#'   \item{length_hospital}{Number of days the patient were hospitalized}
#'   \item{length_intermed}{Number of days the patient were hospitalized at the intermediate and intensive care unit}
#'   \item{crp}{crp}
#'   \item{comor_e}{Presence of cormobidity type e}
#'   \item{comor_p}{Presence of cormobidity type p}
#'   \item{comor_v}{Presence of cormobidity type v}
#'   \item{comor_c}{Presence of cormobidity type c}
#'   \item{comor_r}{Presence of cormobidity type r}
#'   \item{obese}{Indicator variable based on whether the subject is obese (i.e. with BMI > 30), 0 for no and 1 for yes.}
#' }
"codex"
#'


#' Bronchitis
#'
#' @description Data collected in a study to assess the effects of smoking and pollution on being diagnosed with bronchitis. This dataset is based on 212 subjects.
#'
#' @format
#' \describe{
#' \item{bron}{Presence of bronchitis (0 for no and 1 for yes)}
#' \item{cigs}{Average daily number of smoked cigarettes}
#' \item{poll}{Pollution index}
#'
#' }
"bronchitis"
#'


#'
#' Diet
#'
#' @format
#' \describe{
#'   \item{id}{ID}
#'   \item{gender}{Gender (male or female)}
#'   \item{age}{Age in years}
#'   \item{height}{Height in m}
#'   \item{diet.type}{Type of diet (A, B or C)}
#'   \item{initial.weight}{Initial weight in kg}
#'   \item{final.weight}{Final weight in kg}
#' }
"diet"


#' Reading
#'
#' @description This dataset is based on the effectiveness of directed reading activities for elementary school students (6-12 years old).
#'
#' @format
#' \describe{
#'   \item{id}{Student id}
#'   \item{score}{Degree of Reading Power (DRP) test score}
#'   \item{age}{Age of the students}
#'   \item{group}{Binary variable indicating whether a student participated to the directed reading activities (Treatment if the student participated, Control otherwise)}
#' }
"reading"



#'
#' Students
#'
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
#' @description Data from the COVID-19 Data Hub joined with spatial features for Switzerland.
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







#' Snoring
#' @description This dataset is based on a study on the physical and behavioral characteristics of snorers.
#'
#'
#' @format
#' \describe{
#' \item{sex}{gender of the person (0 for males and 1 for females)}
#' \item{age}{age in years}
#' \item{height}{height in cm}
#' \item{weight}{weight in kg}
#' \item{smoke}{smoking behavior (0 for non-smokers and 1 for smokers)}
#' \item{alcohol}{number of glasses drunk per day (in red wine equivalent)}
#' \item{snore}{snoring diagnosis (0 for not snoring, 1 for snoring)}
#' }
#'
"snoring"
#'
#'
#'






#' Forced Expiratory Volume
#' @description This dataset is based on a study conducted in suburban Boston in the late 1970s to investigate the relationship between forced expiratory volume and smoking behavior in 654 youths between the ages of 3 and 19.
#'
#'
#' @format
#' \describe{
#' \item{fev}{forced expiratory volume or FEV, which measures the amount of air a person can exhale during a forced breath.}
#' \item{age}{age in years}
#' \item{sex}{gender of the person (0 for males and 1 for females)}
#' \item{height}{height in cm}
#' \item{smoke}{smoking behavior (0 for non-smokers and 1 for smokers)}
#' }
#'
"fev"
#'




#' Peruvian Blood Pressure
#' @description  This dataset consists of variables possibly relating to blood pressures of 39 Peruvians who have moved from rural high-altitude areas to urban lower-altitude areas.
#'
#'
#' @format
#' \describe{
#' \item{Age}{Age in years}
#' \item{Years}{Years in urban area}
#' \item{Weight}{Weight in kg}
#' \item{Height}{Height in mm}
#' \item{Chin}{Chin skinfold}
#' \item{Forearm}{Forearm skinfold}
#' \item{Calf}{Calf skinfold}
#' \item{Pulse}{Resting pulse rate}
#' \item{Systol}{Systolic blood pressure}
#' }
#'
"PeruvianBP"
#'


#' Breast Cancer
#' @description  This dataset consists of several clinical features observed or measured for 116 participants in a study of breast cancer.
#'
#'
#' @format
#' \describe{
#' \item{Age}{Age in years}
#' \item{BMI}{Body mass index in kg/\eqn{m^2}}
#' \item{Glucose}{Glucose in mg/dL}
#' \item{Insulin}{Insulin in \eqn{\mu}U/mL}
#' \item{HOMA}{Homeostasis model assessment}
#' \item{Classification}{Presence of breast cancer (0 if no cancer, 1 if with cancer)}
#' }
#'
#' @references Patricio, Miguel, et al. "Using Resistin, glucose, age and BMI to predict the presence of breast cancer", BMC Cancer, (2018).
#' @source \url{https://bmccancer.biomedcentral.com/articles/10.1186/s12885-017-3877-1}
"BreastCancer"
#'
#'
#'
#'



#' Diabetes study in Bangladesh
#' @description This dataset contains reports of diabetes symptoms from 520 individuals, encompassing symptoms potentially associated with the condition. It was compiled through a questionnaire aimed at recently diagnosed diabetics or individuals displaying one or more symptoms. Data collection took place via direct questionnaire at Sylhet Diabetes Hospital in Bangladesh.
#'
#'
#' @format
#' \describe{
#' \item{age}{Age of the patient in years}
#' \item{gender}{Gender of the patient (Male, Female)}
#' \item{polyuria}{Presence of polyuria (excessive urination) (Yes, No)}
#' \item{polydipsia}{Presence of polydipsia (excessive thirst) (Yes, No)}
#' \item{sudden_weight_loss}{Presence of sudden weight loss (Yes, No)}
#' \item{weakness}{Presence of weakness (Yes, No)}
#' \item{polyphagia}{Presence of polyphagia (excessive hunger) (Yes, No)}
#' \item{genital_thrush}{Presence of genital thrush (Yes, No)}
#' \item{visual_blurring}{Presence of visual blurring (Yes, No)}
#' \item{itching}{Presence of itching (Yes, No)}
#' \item{irritability}{Presence of irritability (Yes, No)}
#' \item{delayed_healing}{Presence of delayed healing (Yes, No)}
#' \item{partial_paresis}{Presence of partial paresis (Yes, No)}
#' \item{muscle_stiffness}{Presence of muscle stiffness (Yes, No)}
#' \item{alopecia}{Presence of alopecia (Yes, No)}
#' \item{obesity}{Presence of obesity (Yes, No)}
#' \item{class}{Diagnosis class (1 if presence of diabetes, 0 otherwise)}
#' }
#'
#' @references Islam, M. M. F., et al. "Likelihood prediction of diabetes at early stage using data mining techniques", Computer vision and machine intelligence in medical image analysis, (2020).
#' @source \url{https://link.springer.com/chapter/10.1007/978-981-13-8798-2_12}
"diabetes"
#'



#' Kuwait Blood Pressure
#' @description This dataset contains a collection of variables believed to be potentially associated with the blood pressure measurements of 213 individuals from Kuwait. The dataset lists the following variables:
#'
#'
#' @format
#' \describe{
#' \item{age}{Age in years}
#' \item{weight}{Weight in kg}
#' \item{height}{Height in mm}
#' \item{chin}{Chin skinfold in cm}
#' \item{forearm}{Forearm skinfold in cm}
#' \item{calf}{Calf skinfold in cm}
#' \item{pulse}{Resting pulse rate}
#' \item{left_handed}{Whether or not the participant is left-handed}
#' \item{bmi}{The Body Mass Index (BMI) of the participant}
#' \item{systol}{Systolic blood pressure}
#' }
#'
"kuwait_bp"
#'
