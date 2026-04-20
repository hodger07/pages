#!/bin/bash
# Extract sections
sed -n '1,102p' /tmp/pagesrepo/q1-aviation.html > /tmp/pagesrepo/01_head_summary.html
sed -n '300,407p' /tmp/pagesrepo/q1-aviation.html > /tmp/pagesrepo/02_cost_evolution.html
sed -n '408,494p' /tmp/pagesrepo/q1-aviation.html > /tmp/pagesrepo/03_capacity.html
sed -n '495,547p' /tmp/pagesrepo/q1-aviation.html > /tmp/pagesrepo/04_minimums.html
sed -n '225,299p' /tmp/pagesrepo/q1-aviation.html > /tmp/pagesrepo/05_open_balance.html
sed -n '103,168p' /tmp/pagesrepo/q1-aviation.html > /tmp/pagesrepo/06_questions.html
sed -n '169,224p' /tmp/pagesrepo/q1-aviation.html > /tmp/pagesrepo/07_option_b.html
sed -n '548,$p' /tmp/pagesrepo/q1-aviation.html > /tmp/pagesrepo/08_footer.html

cat /tmp/pagesrepo/01_head_summary.html \
    /tmp/pagesrepo/02_cost_evolution.html \
    /tmp/pagesrepo/03_capacity.html \
    /tmp/pagesrepo/04_minimums.html \
    /tmp/pagesrepo/05_open_balance.html \
    /tmp/pagesrepo/06_questions.html \
    /tmp/pagesrepo/07_option_b.html \
    /tmp/pagesrepo/08_footer.html > /tmp/pagesrepo/q1-aviation.html
