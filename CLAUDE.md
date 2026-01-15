# Claude Code Notes

Documentation of work done with Claude Code on this repository.

## Repository Purpose

Teaching materials repository for bioinformatics and molecular medicine courses. HTML files are served via GitHub Pages for student access.

## Setup

- **GitHub Pages**: Enabled, serving from `main` branch
- **Jekyll**: Disabled via `.nojekyll` file (serving static HTML directly)
- **Sensitive files**: Exam questions and solutions are gitignored (`**/*exam*`, `**/*solution*`)

## Work Completed

### January 2026

- Initialized fresh git repository
- Created interactive PRS teaching module (`mm_module13/2026/polygenic_risk_scores.html`):
  - Educational content on GWAS and Polygenic Risk Scores
  - Interactive PRS calculator (students can modify genotypes)
  - Population distribution chart with percentile slider
  - Clinical applications and limitations sections
  - Discussion tasks for classroom use
- Set up `.gitignore` to exclude exam questions and solutions from version control
- Configured GitHub Pages with `.nojekyll` for direct HTML serving
- Organized materials by year (2026 subfolder) for future course iterations

## File Organization

```
teaching/
├── .gitignore          # Excludes *exam* and *solution* files
├── .nojekyll           # Disables Jekyll processing
├── README.md           # Public landing page
├── CLAUDE.md           # This file
└── mm_module13/
    └── 2026/
        ├── polygenic_risk_scores.html  # Public (GitHub Pages)
        ├── prs_exam.md                 # Local only (gitignored)
        └── prs_solutions.md            # Local only (gitignored)
```
