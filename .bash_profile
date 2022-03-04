# Methods
gitAddCommitPush(){
  git commit -a -m "$*"
  git push
}
gitCreateBranch(){
  git checkout -b "$1"
  git push --set-upstream origin $1
}
gitDeleteBranch(){
  git branch -D "$1"
  #git push origin --delete "$1"
}

# Aliases
alias c=gitAddCommitPush
alias gb+=gitCreateBranch
alias gb-=gitDeleteBranch

# Shortcuts
alias gb='git branch' #list local branches
alias gba-='git branch | egrep -v "(^\*|master|beta|main)" | xargs git branch -d' #Delete all merged branches
alias gp='git pull' # pull remote changes
alias gs='git status' #check the current status
alias gc='git checkout'
alias gc-='git checkout -' #go back to the last branch you visited
alias gc.='git checkout .' #delete all local changes in the repository that have not been added to the staging area
alias uc='git reset HEAD^' #undo the most recent commit, leaves the file/folders unstaged in your local repository
alias gsa='git stash'
alias gsp='git stash pop'
alias gsl='git stash list'

# Default Branches
alias beta='git checkout beta'
alias main='git checkout main'
alias master='git checkout master'
alias develop='git checkout develop'