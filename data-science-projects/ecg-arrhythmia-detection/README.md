# 🫀 ECG Arrhythmia Detection & Analysis

[![Made with Python](https://img.shields.io/badge/Python-3.12-blue.svg)](https://www.python.org/)
[![MIT License](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Jupyter Notebook](https://img.shields.io/badge/Jupyter-Notebook-orange.svg)](https://jupyter.org/)

A comprehensive end-to-end analysis of ECG signals from the **MIT-BIH Arrhythmia Database**. This project demonstrates signal processing, heartbeat segmentation, feature extraction via PCA, and preparation for machine learning classification.

---

## 📝 Overview

This repository contains a Jupyter Notebook that performs a complete pipeline for analyzing ECG signals. Starting from raw physiological data, the notebook applies:

- **Digital filtering** (bandpass & median filters) to remove noise and baseline wander
- **R-peak detection** and heartbeat segmentation
- **Statistical analysis** of beat morphology and variability
- **Principal Component Analysis (PCA)** for dimensionality reduction while preserving 95% of variance
- **Class imbalance analysis** and suggestions for mitigation (SMOTE, class weighting)

The project is designed as a foundation for building a robust arrhythmia classifier, addressing both the signal-processing and feature-engineering challenges typical in biomedical data science.

---

## 🚀 Key Features

- ✅ **Automated data loading** from PhysioNet using the `wfdb` library
- ✅ **Signal preprocessing**:
  - Butterworth bandpass filter (0.5–40 Hz)
  - Median-filter baseline correction (200 ms & 600 ms windows)
  - Z-score normalization
- ✅ **Heartbeat extraction**:
  - R-peak detection via `neurokit2`
  - Individual beat segmentation (250 samples per beat, 0.69 sec)
  - Mean beat template with variability analysis
- ✅ **Dimensionality reduction**:
  - PCA reduces 250 features → 16 components (93.6% reduction) while maintaining 95% explained variance
- ✅ **Class imbalance handling**:
  - Detailed analysis of beat-type distribution
  - SMOTE-ready data preparation

---

## 📊 Data Source

The project uses the **MIT-BIH Arrhythmia Database** from [PhysioNet](https://www.physionet.org/content/mitdb/1.0.0/).  
Five representative records (`100`, `101`, `103`, `105`, `106`) are loaded and analyzed, containing over 11,000 annotated heartbeats.

---

## 🛠️ Technologies Used

| Library | Purpose |
| :--- | :--- |
| `wfdb` | Reading MIT-BIH records |
| `neurokit2` | ECG cleaning and R-peak detection |
| `scikit-learn` | PCA, StandardScaler |
| `scipy` | Butterworth & median filtering |
| `numpy`, `pandas` | Data manipulation |
| `matplotlib`, `seaborn` | Visualization |
| `imbalanced-learn` | (planned for SMOTE) |

---

## 📁 Repository Structure

```text
.
├── README.md                          # Project documentation
├── requirements.txt                   # Python dependencies
├── CE473-Course-Project-D1D2.ipynb    # Main analysis notebook
└── LICENSE                            # MIT License
```

---

## 🔧 Setup & Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/ecg-arrhythmia-detection.git
   cd ecg-arrhythmia-detection
   ```

2. **Create a virtual environment (recommended)**:
   ```bash
   python -m venv venv
   source venv/bin/activate   # On Windows: venv\Scripts\activate
   ```

3. **Install dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

4. **Launch Jupyter**:
   ```bash
   jupyter notebook CE473-Course-Project-D1D2.ipynb
   ```

---

## 📈 Key Results

| Metric | Value |
| :--- | :--- |
| **Records processed** | 5 |
| **Beats extracted** | ~2,270 |
| **R-peaks detected** | 2,270 |
| **Mean heart rate** | 75.8 BPM |
| **Original feature dimension** | 250 |
| **Components for 95% variance** | 16 |
| **Dimensionality reduction** | 93.6% |
| **Dominant beat class** | Normal (98.5%) |

- Class imbalance is significant, highlighting the need for SMOTE or cost-sensitive learning in future model training.
- The mean beat template shows high morphological consistency (mean correlation > 0.99), indicating good signal quality.

---

## 🔮 Future Work

- [ ] Train and compare multiple classifiers (Random Forest, SVM, Neural Networks)
- [ ] Apply SMOTE to address class imbalance
- [ ] Tune hyperparameters for optimal performance
- [ ] Deploy a lightweight model via a web or mobile interface

---

## 📚 Learnings & Impact

This project demonstrates the complete workflow of a biomedical data science task:

- Signal processing techniques are critical for physiological data.
- Feature engineering (PCA) can drastically reduce dimensionality without losing vital information.
- Class imbalance is a common challenge in medical datasets and must be explicitly addressed.
- The pipeline is modular and can easily be extended to other time-series classification problems.

---

## 👤 Author

**Alisha Sh**  
[![GitHub](https://img.shields.io/badge/GitHub-@yourhandle-181717?logo=github)](https://github.com/Alisha-sh-dev/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-yourprofile-blue?logo=linkedin)](https://www.linkedin.com/in/alisha-sh/)
[![DOI](https://img.shields.io/badge/DOI-10.5281%2Fzenodo.22005797-0B1F3A.svg)](https://doi.org/10.5281/zenodo.22005797)
---

## 📄 License

This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgements

- The PhysioNet team for providing the MIT-BIH Arrhythmia Database.
- The developers of `wfdb`, `neurokit2`, and the broader scientific Python ecosystem.

*If you find this work useful, please consider starring the repository!*
