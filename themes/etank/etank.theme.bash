#!/usr/bin/env bash
function prompt_command() {
    PS1="${red}\u${reset_color}@${green}\h ${blue}\T ${reset_color}${white}\w${reset_color}$(scm_prompt_info)${blue} →${bold_blue} ${normal}";
}

PROMPT_COMMAND=prompt_command;
