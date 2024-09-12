# Check if a repository path is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <path_to_git_repository>"
    exit 1
fi

REPO_PATH="$1"

# Change to the repository directory
cd "$REPO_PATH" || exit

# Analyze commit frequency
echo "Analyzing commit frequency..."
git log --format="%ad" --date=short | sort | uniq -c | sort -n > commit_frequency.txt
echo "--- Commit Frequency (Last 10 days) ---"
tail -n 10 commit_frequency.txt
echo

# Analyze author contributions
echo "Analyzing author contributions..."
git shortlog -sn --no-merges | head -n 5 > author_contributions.txt
echo "--- Top 5 Author Contributions ---"
cat author_contributions.txt
echo

# Analyze code churn
echo "Analyzing code churn..."
git log --pretty=format: --name-only | sort | uniq -c | sort -rg | head -n 5 > code_churn.txt
echo "--- Top 5 Files by Code Churn ---"
cat code_churn.txt
echo

# Overall repository statistics
echo "--- Overall Repository Statistics ---"
echo "Total commits: $(git rev-list --count HEAD)"
echo "Total contributors: $(git shortlog -sn --no-merges | wc -l)"
echo "Repository age: $(git log --reverse --format=%ad --date=short | head -1) to $(date +%Y-%m-%d)"
echo "Lines of code: $(git ls-files | xargs wc -l | awk '{total += $1} END {print total}')"
