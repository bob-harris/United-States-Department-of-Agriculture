# USDA Agricultural Commodities Analysis

## Introduction
This project is the final assignment for the SQL for Data Science course by the University of California, Davis. It involves analyzing state-by-state production of various agricultural commodities in the United States using SQL and Tableau. The aim is to generate insights for future planning and decision-making at the USDA (United States Department of Agriculture).

## Scenario
As a Data Scientist at the USDA, you have been tracking the production of various agricultural commodities across different states. Your manager has requested insights from this data to aid in future planning and decision-making. The analysis involves answering specific questions that arise in meetings, reports, or strategic discussions.

## Objectives
- Assess state-by-state production for each commodity.
- Identify trends or anomalies.
- Offer data-backed suggestions for areas that may need more attention.

## Datasets
- `milk_production`: Data on milk production across states.
- `cheese_production`: Data on cheese production across states.
- `coffee_production`: Data on coffee production across states.
- `honey_production`: Data on honey production across states.
- `yogurt_production`: Data on yogurt production across states.
- `state_lookup`: Information linking state codes to state names.

## Analysis Questions
1. **Total Milk Production for 2023**: What is the total milk production for 2023?
2. **Cheese Production Greater Than 100 Million in April 2023**: Which states had cheese production greater than 100 million in April 2023?
3. **Coffee Production Trends**: What is the total value of coffee production for 2011?
4. **Average Honey Production for 2022**: Find the average honey production for 2022.
5. **State Names and ANSI Codes**: List all state names with their corresponding ANSI codes. What is the State_ANSI code for Florida?
6. **Cheese Production Values for All States**: List all states with their cheese production values, even if they didn't produce any cheese in April 2023. What is the total for New Jersey?
7. **Total Yogurt Production for States with Cheese Production Data in 2023**: Find the total yogurt production for states in the year 2022 which also have cheese production data from 2023.
8. **Missing Milk Production States in 2023**: List all states from state_lookup that are missing from milk_production in 2023. How many states are there?
9. **Cheese Production Values Including Non-Producing States**: List all states with their cheese production values, including states that didn't produce any cheese in April 2023. Did Delaware produce any cheese in April 2023?
10. **Average Coffee Production for High Honey Production Years**: Find the average coffee production for all years where the honey production exceeded 1 million.

## Methodology
- **Data Extraction and Transformation**: SQL queries were used to extract and transform the data.
- **Visualization**: Tableau was used to create visualizations and analyze trends.
- **Key Metrics**: Focused on total production, year-over-year changes, and state rankings.

## Visualizations
- [Tableau Dashboard 1] (https://public.tableau.com/views/USDAviz_part1/Dashboard1?:language=en-GB&:sid=&:display_count=n&:origin=viz_share_link)
- [Tableau Dashboard 2] (https://public.tableau.com/views/USDAviz_part2/Dashboard2?:language=en-GB&:sid=&:display_count=n&:origin=viz_share_link)

- [PowerPoint Presentation](USDA presentation.pptx)

## Findings
- **Milk Production**: Significant decrease in 2023 compared to 2022.
- **Cheese Production**: High production in California and Wisconsin.
- **Coffee Production**: Fluctuating production levels in Hawaii.
- **Honey Production**: Dominance of California with potential growth in other states.
- **Yogurt Production**: High production in New York and California.

## Instructions
To reproduce this analysis:
1. Clone this repository: `git clone https://github.com/bob-harris/United-States-Department-of-Agriculture.git`
2. Navigate to the project directory.
3. Install required dependencies (e.g., SQL, Tableau).
4. Follow the steps in the scripts folder to process the data and generate visualizations.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

