Feature: Initial setup

  Scenario:  Run setup script on correctly-set-up directory
    Given a git repo with a single Kramdown draft
     when the setup script is run
     then it succeeds

  Scenario:  Run setup script on directory with no draft
    Given an empty git repo
      and lib is cloned in
      when the setup script is run
      then it fails
      and generates a message "Create a draft file"

  Scenario:  Run setup script on directory with multiple drafts
    Given a git repo with multiple Kramdown drafts
     when the setup script is run
     then it succeeds
      but generates a message "best with just one draft"

  Scenario:  Run setup script on directory with no origin remote
    Given a git repo with no origin
     and lib is cloned in
     and a Kramdown draft is created
     when the setup script is run
     then it fails
     and generates a message "remote"