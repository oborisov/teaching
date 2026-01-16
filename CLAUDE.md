# Claude Code Notes

Documentation of work done with Claude Code on this repository.

## Repository Purpose

Teaching materials repository for bioinformatics and molecular medicine courses. HTML files are served via GitHub Pages for student access.

## Setup

- **GitHub Pages**: Enabled, serving from `main` branch
- **Jekyll**: Disabled via `.nojekyll` file (serving static HTML directly)
- **Sensitive files**: Exam questions are gitignored (`**/*exam*`, `**/*solution*`)

## Work Completed

### January 2026

- Initialized fresh git repository
- Created interactive PRS teaching module (`mm_module13/2026/polygenic_risk_scores.html`):
  - Educational content on GWAS and Polygenic Risk Scores
  - Interactive PRS calculator with linked distribution chart
  - Clinical applications section (breast cancer risk assessment with BOADICEA/CanRisk)
  - Limitations section (missing heritability, clinical utility, ethical considerations, population differences)
  - 3 discussion tasks + 1 backup task for classroom use
  - Password-protected solutions section (password: `prs2026`) — solutions embedded in HTML, revealed after class
  - Z-score and percentile formulas provided for Task 3
- Simplified content for bachelor-level students:
  - Removed regulatory/country-specific details
  - Clarified GWAS odds ratios as statistical associations (not causal)
  - Added didactic notes where appropriate
- Set up `.gitignore` to exclude exam questions from version control
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
        ├── polygenic_risk_scores.html  # Public (GitHub Pages) — includes password-protected solutions
        └── prs_exam.md                 # Local only (gitignored)
```

## Password for Solutions

The solutions section in `polygenic_risk_scores.html` is unlocked by entering the correct PRS value from Task 3a: `0.76`
