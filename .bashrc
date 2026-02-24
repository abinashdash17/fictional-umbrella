parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
# for servers uncomment below
# export PS1='\[\e[0;36m\]$(parse_git_branch)\[\e[0;31m\][\u@\h]\[\e[0;33m\][\W]\[\e[0;32m\]\$ \[\e[0m\]' 
# for pc uncomment below
# export PS1='\[\e[0;36m\]$(parse_git_branch)\[\e[0;33m\][\W]\[\e[0;32m\]\$ \[\e[0m\]'
