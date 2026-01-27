---
output:
  pdf_document: default
  html_document: default
---
# Polygenic Risk Scores

**An Introduction for Molecular Medicine Students**

---

## What is a Polygenic Risk Score?

Most common diseases are **polygenic**--influenced by hundreds or thousands of genetic variants, each with a small effect. A **Polygenic Risk Score (PRS)** combines all these small effects into a single number representing your overall genetic predisposition.

> **Key Insight:** While a single variant might increase disease risk by just 1-5%, the combined effect of many variants can identify individuals with substantially elevated risk.

---

## Genome-Wide Association Studies (GWAS)

Before we can build a PRS, we need to know which genetic variants are associated with a disease and how strong each association is. This is where **Genome-Wide Association Studies (GWAS)** come in.

### What is a GWAS?

A GWAS is a **case-control study** that scans the entire genome to find genetic variants (SNPs) associated with a disease. Researchers compare the frequency of millions of SNPs between:

- **Cases:** People with the disease (e.g., 50,000 patients with Type 2 Diabetes)
- **Controls:** People without the disease (e.g., 50,000 healthy individuals)

### The Odds Ratio: Measuring Effect Size

For each SNP, GWAS calculates an **odds ratio (OR)**. Since GWAS is a retrospective case-control study, the odds ratio tells us:

> **Interpretation:** The odds of carrying the risk allele are OR times higher in cases compared to controls.

For example, if OR = 1.15 for allele A at a particular SNP:

- The odds of carrying allele A are **15% higher** in people with the disease
- Under the rare disease assumption, this approximates: "carriers of allele A have 15% higher odds of developing the disease"

The effect size **beta (beta)** used in PRS calculations is the natural log of the odds ratio: **beta = ln(OR)**

**Important:** Odds ratios from GWAS are statistical associations, not deterministic predictions. They approximate disease risk but do not imply causation -- a variant associated with a disease may not directly cause it.

### Why Test Millions of SNPs?

Common diseases are influenced by many variants, each with a small effect. A typical GWAS tests **5-10 million SNPs** and may identify hundreds of associated variants. Because we test so many SNPs, we need very large sample sizes (often 100,000+ people) to reliably detect these small effects while accounting for multiple testing.

---

## From GWAS to PRS

### Building the Score

Once GWAS identifies associated variants and their effect sizes, we can calculate a PRS for any individual:

**PRS = SUM (beta_i x G_i)**

Where:

- **beta_i** = effect size (log odds ratio) for SNP i from the GWAS
- **G_i** = number of risk alleles the person carries at SNP i (0, 1, or 2)
- **SUM** = sum across all SNPs included in the score

The result is a single number summarizing an individual's genetic predisposition. Higher scores indicate higher genetic risk.

---

## PRS in Clinical Practice

The most clinically validated application of PRS is in **breast cancer risk assessment**. Tools like **CanRisk** (based on the BOADICEA model) are already used by healthcare professionals to estimate an individual's cancer risk.

### Example: Breast Cancer Risk Assessment

Modern risk prediction tools combine multiple factors to estimate breast and ovarian cancer risk:

- **Polygenic Risk Score** -- aggregating many common genetic variants
- **Rare pathogenic variants** -- in high-risk genes (e.g., BRCA1, BRCA2, PALB2)
- **Family history** -- cancer cases in relatives
- **Lifestyle and clinical factors** -- BMI, mammographic density, hormone use

By integrating these factors, clinicians can identify individuals at elevated risk who may benefit from enhanced screening (e.g., earlier or more frequent MRI) or preventive strategies.

> **Clinical relevance:** In some countries, clinical guidelines already recommend intensified screening or preventive strategies for individuals with sufficiently elevated genetic risk, especially for breast cancer. The specific thresholds and screening programs vary by country and healthcare system.

---

## Limitations & Challenges

### Missing Heritability
PRS typically explain only 5-20% of disease heritability. Environmental factors, rare variants, and gene interactions are not fully captured.

### Clinical Utility
Does knowing your PRS change health outcomes? How should probabilistic risk information be communicated to patients?

### Ethical Considerations
Privacy concerns, potential for genetic discrimination, psychological impact, and equitable access remain important issues.

### Population Differences
GWAS are conducted in specific populations with particular genetic backgrounds. PRS accuracy may vary when applied to individuals from different populations.

---

## Key Takeaways

1. PRS aggregate many small genetic effects into a single risk estimate
2. GWAS provide the foundation by identifying variants and effect sizes
3. The calculation is additive: PRS = SUM(beta x genotype)
4. Clinical applications are emerging, particularly for breast cancer risk assessment
5. Important limitations remain, including incomplete heritability capture and questions about clinical utility

---

## Further Reading

- **Torkamani A, et al. (2018)**. The personal and clinical utility of polygenic risk scores. *Nature Reviews Genetics*. doi:10.1038/s41576-018-0018-x
- **Khera AV, et al. (2018)**. Genome-wide polygenic scores for common diseases identify individuals with risk equivalent to monogenic mutations. *Nature Genetics*. doi:10.1038/s41588-018-0183-z
- **Lewis CM & Vassos E (2020)**. Polygenic risk scores: from research tools to clinical instruments. *Genome Medicine*. doi:10.1186/s13073-020-00742-5

---

# Student Tasks

## Learning Objectives

- Understand the difference between rare (monogenic) and common (polygenic) genetic variants
- Explain how GWAS identifies disease-associated variants
- Describe how PRS are calculated and interpreted
- Recognize limitations and current clinical applications of PRS

---

## Task 1: Rare vs. Common Variants

In the first part of today's lecture, you learned about **monogenic diseases** like Alport syndrome, where a single rare variant with a large effect causes disease.

Now consider **Type 2 Diabetes** or **Coronary Artery Disease**, where hundreds of common variants each contribute a small amount of risk.

**a)** Why do you think rare disease-causing variants are rare in the population, while variants associated with common diseases like diabetes are common?

**b)** If a single variant increases diabetes risk by only 5%, why doesn't natural selection remove it from the population?

**c)** A patient asks: *"I have a family history of heart disease. Should I get genetic testing?"* -- How would your answer differ if you suspect a monogenic condition vs. a polygenic predisposition?

---

## Task 2: Understanding GWAS

A research group wants to identify genetic variants associated with **breast cancer**. They collect DNA from 50,000 women with breast cancer (cases) and 50,000 women without breast cancer (controls).

**a)** The researchers test 5 million SNPs across the genome. Why do they need such a large sample size (100,000 people)?

**b)** One SNP shows an odds ratio of 1.08 in this case-control study. What does this number mean? Remember that GWAS identifies statistical associations -- it does not establish causation or predict individual outcomes.

**c)** After analysis, they find 300 SNPs significantly associated with breast cancer. Why can't researchers simply use these SNPs to predict exactly who will get breast cancer?

---

## Task 3: Calculating and Interpreting PRS

Below is a simplified example with 5 SNPs associated with a hypothetical trait:

| SNP   | Risk Allele | Effect (beta) | Person's Genotype | Risk Alleles |
|-------|-------------|------------|-------------------|--------------|
| rs001 | A           | 0.10       | AG                | 1            |
| rs002 | T           | 0.15       | TT                | 2            |
| rs003 | C           | 0.05       | GG                | 0            |
| rs004 | G           | 0.20       | AG                | 1            |
| rs005 | A           | 0.08       | AA                | 2            |

**a)** Calculate this person's PRS using the formula: **PRS = SUM (beta x number of risk alleles)**

**b)** The population average PRS is 0.45 with a standard deviation of 0.15. Assuming an approximately normal distribution, is this person above or below average risk? Approximately what percentile might they fall into?

> **Formulas:**
> - Z-score = (individual PRS - population mean) / standard deviation
> - Percentile: use a Z-table or: Z approx. 2 -> ~98th percentile, Z approx. 1 -> ~84th, Z approx. 0 -> 50th, Z approx. -1 -> ~16th

**c)** A patient receives a PRS result indicating "average genetic risk." Does this mean they will not develop the disease? How would you explain this to a patient?

---

## Backup Task: Limitations of PRS

*Optional discussion topic if time permits.*

**a)** PRS typically capture only 5-20% of disease heritability. What factors might explain the remaining heritability that PRS do not capture?

**b)** Beyond genetics, what other factors influence disease risk that are NOT captured by a PRS?

---

*Molecular Medicine Course | Polygenic Risk Scores Module*
