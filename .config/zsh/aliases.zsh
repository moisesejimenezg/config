#!/bin/zsh

# git
alias gcob="git checkout -b"
alias gaup="git add -up"
alias gpc='git push --set-upstream origin $(git_current_branch)'
alias gstap='git stash pop'
alias gst='git status -s'

# yadm
alias yst="yadm status -s"
alias yaup="yadm add -up"
alias yd="yadm diff"

# apps
alias cat="batcat"

# bazel
alias bt="bazel test"
alias bb="bazel build"
alias br="bazel run"
alias buildify="bazel run //:buildifier"

# apex
alias repo.fix='bazel run --noshow_progress --ui_event_filters=-info --run_under="cd $(pwd) &&" //tools/repo:repo.fix --'
alias repo.check='bazel run --noshow_progress --ui_event_filters=-info --run_under="cd $(pwd) &&" //tools/repo:repo.check --'
alias uid='bazel run --run_under="cd $PWD &&" @apex//tools/identify_test_uid:main'
alias apex_doc='bazel run --noshow_progress --ui_event_filters=-info --run_under="cd $(pwd) &&" //apex_internal/tools/apex_doc_tools:apex_doc --'
