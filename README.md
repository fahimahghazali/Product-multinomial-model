<h1 align="center">Product multinomial model</h1>

### Project Objective
This project analyses the data provided under the multinomial distribution. Through this, hypothesis tests are done on the true proportions to see if all of them are equal to each other and on the true standardised residuals being zero. The test statistic is then sampled to confirm the assumption that it follows a chi-squared distribution. Complementing the tests, a further look on the confidence intervals wraps up the report.

#### -- Project Status: [Completed]

### Methods used
- multinomial model
- hypotheses testing

### Technologies
- LateX
- R

## Project Description
The  data used for this project can be obtained in the write up. The main question of interest here is whether the five modes of transport differ in their respective probabilities of different casualty severity. Given the description of the data, the probability model is assumed to be multinomial distributions with parameters depending on each of the five modes of tranport. The counts are loaded into `R` to have the proportions be estimated through the observed frequencies. A hypothesis test to see if the probablities of different casualty severity of each mode of transport are equal is then carried out to answer the question of interest. A brief look into the residuals based on the calculation on expected frequencies allows us to look at each of the squared residuals contributing to the test statistic. Then, B =5000 values of the test statistic is then sampled verify its distribution under the null hypothesis, the chisquared distribution.

The final report is writen using LateX and can be read [here](https://github.com/fahimahghazali/Product-multinomial-model/blob/main/cw2.pdf).

## Needs of this project

- statistical modeling
- writeup

## Author
**Nurfahimah Mohd Ghazali**

- [Profile](https://github.com/fahimahghazali "Fahimah Ghazali")
- [Email](mailto:fahimahghazali@icloud.com?subject=Hi% "Hi!")
