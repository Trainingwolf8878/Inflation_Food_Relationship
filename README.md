# Are Meat Prices, Gasoline Costs, Inflation Rates, and Wage Trends Interrelated?

This repository examines the relationship between average hourly wages, average usual weekly hours across different Indigenous groups, monthly average retail prices for selected products, gasoline price and inflation. It contains all the necessary files and code to conduct the analysis, as well as a research paper summarizing the investigation and findings.

> The conclusion with this question can be find [here]()

### Data sources

Average hourly and weekly wages and average usual weekly hours by Indigenous group [here](https://www150.statcan.gc.ca/t1/tbl1/en/cv.action?pid=1410041801).
* /data/raw_data: 1410041801-eng.csv

Monthly average retail prices for selected products [here](https://www150.statcan.gc.ca/t1/tbl1/en/cv.action?pid=1810024501).
* /data/raw_data: 1810024501-eng.csv

Inflation: inflation data from bank of canada [here](https://www.bankofcanada.ca/rates/indicators/capacity-and-inflation-pressures/inflation).
* /data/raw_data: INDINF_LOWTARGET,INDINF_UPPTARGET,INDINF_CPI_M.csv

Employees rate: The rate of the employee [here](https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=1410001701&pickMembers%5B0%5D=1.1&pickMembers%5B1%5D=2.10&cubeTimeFrame.startMonth=01&cubeTimeFrame.startYear=2017&cubeTimeFrame.endMonth=12&cubeTimeFrame.endYear=2023&referencePeriods=20170101%2C20231201).
* /data/raw_data: 1410001701-eng.csv

Gasoline price: The price of gasoline [here](https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=1810000101)
* /data/raw_data: 1810000101-eng.csv

## Statement on LLM Usage

Some of the code are written with the help of ChatGPT, the entire chat history with ChatGPT is available in inputs/llms/usage.txt

## File Structure

* /inputs/sketches : with some sketchs with the dataset
* /inputs/data/raw_data : some raw datasets(contain the test of data)
* /inputs/data/cleaned_data : cleaned row datasets(contain the test of data)
* /inputs/data/simulated_data : simulated datasets(contain the test of data)
* /inputs/llm : The LLM usage with ChatGPT entire chat history
* /inputs/sketches: it contain the sketch of the table and graph
* /outputs/graphs : contains graphs that work on the R
* /outputs/paper : The final paper and table use in the report
* /scripts : R scripts used for data analysis

## Contact information

Feel free to contact me with any questions, here is my email: dailin20000730@gmail.com
