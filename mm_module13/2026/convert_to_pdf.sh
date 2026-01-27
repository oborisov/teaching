#!/bin/bash
# Convert Markdown seminar materials to PDF

pandoc prs_seminar.md -o prs_seminar.pdf
pandoc prs_seminar_solutions.md -o prs_seminar_solutions.pdf

echo "Generated:"
echo "  - prs_seminar.pdf (student version)"
echo "  - prs_seminar_solutions.pdf (with solutions)"
