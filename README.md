# TTC Delays Analysis

## Overview

This paper is a detailed analysis of incidents that cause TTC bus delays in 2024 (January to August) using a dataset from Open Data Toronto. In this study, I investigate which incidents caused the most delays, which incidents caused the most time wasted, and whether rush hour contributed to the number of incidents caused. This is to better understand which aspects are most contributing to these TTC bus delays and provide grounds for more targetted solutions.


## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data as obtained from Open Data Toronto portal, along with simulated data.
-   `data/analysis_data` contains the cleaned dataset that was constructed.
-   `other` contains details about LLM chat interactions, and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download, clean and test data.


## Statement on LLM usage

Aspects of the code, the data, discussion and appendix, were written with the help of ChatGPT and the entire chat history is available in other/llm/usage.txt.
