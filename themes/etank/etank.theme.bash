#!/usr/bin/env bash
function prompt_command() {
    PS1="${red}\u${reset_color}@${green}\h ${purple}\T ${reset_color}${white}\w${yellow}$(scm_prompt_info)${blue}\n→${bold_blue} ${normal}";
}

PROMPT_COMMAND=prompt_command;
