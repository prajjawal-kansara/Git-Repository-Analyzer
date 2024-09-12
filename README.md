# Git Repository Analyzer using Shell

The Git Repository Analyzer is a shell script that analyzes key metrics of a Git repository. It tracks commit frequency, author contributions, and code churn, and provides overall repository statistics. This tool helps you quickly understand the structure and activity of a repository through command-line outputs.

## This script provides the following features:

**Commit Frequency Analysis:**

- Counts commits per day
- Displays a bar chart of commit frequency for the last 10 days


**Author Contributions Analysis:**

- Counts commits per author
- Displays a bar chart of the top 5 contributors


**Code Churn Analysis:**

- Counts the number of times each file has been modified
- Displays a bar chart of the top 5 files by code churn


**Overall Statistics:**

- Total number of commits
- Total number of contributors
- Repository age (first commit to current date)
- Total lines of code


## Prerequisites:

- `Git`: Ensure that Git is installed and accessible from your command line.
- `Bash`: The script is designed to run in a Bash environment.


## Make the Script Executable:

```bash
chmod +x git_analyzer.sh
```


 ## Run the Script:

```bash
./git_analyzer.sh "/path/to/your/git/repository"
```

**View Results:** The script will generate and display outputs for commit frequency, author contributions, code churn, and overall repository statistics. Results are saved in text files (`commit_frequency.txt`, `author_contributions.txt`, `code_churn.txt`).

## Note:

  - Ensure that you have access to the Git repository you are analyzing.
  - The script outputs are text-based and suitable for command-line viewing.
  - Adjust the script as needed to fit specific requirements or repository details.

    
