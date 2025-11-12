# Heart-Rate-Monitoring-System-
**Abstract:** This project focuses on developing a heart rate monitoring system using MATLAB.
Leveraging signal processing techniques, the system processes raw ECG data to extract meaningful
physiological information. The implementation includes low-pass and high-pass filtering for noise
reduction, R-wave detection for calculating R-R intervals, and the estimation of heart rate. The
project demonstrates the effective application of digital signal processing in modern healthcare
technology.
**Introduction:** Electrocardiography (ECG) is an essential diagnostic tool in cardiology, capturing
electrical activity of the heart to assess its functionality. Heart rate monitoring is a fundamental
application of ECG analysis, critical in detecting arrhythmias and other cardiovascular anomalies.
This project aims to design a MATLAB-based system that processes raw ECG signals, filters out
noise, detects R-waves, and computes heart rate. The simplicity and accuracy of the system
highlight its relevance for real-time health monitoring applications.
**Methodology:**
The methodology of this project is outlined as follows:
1. Data Acquisition:
ECG signals are loaded from .mat files provided in a predefined directory.
The data is converted to physical units using a predefined gain factor for accurate
analysis.
2. Preprocessing:
Low-Pass Filtering: A Butterworth low-pass filter is applied to eliminate highfrequency noise.
High-Pass Filtering: A Butterworth high-pass filter is used to remove low-frequency
baseline drift.
3. Feature Extraction:
The filtered ECG signal is analyzed to detect R-waves using peak detection
algorithms with a dynamic threshold.
4. Heart Rate Computation:
Detected R-waves are used to calculate the number of heartbeats in a specified
segment.
The heart rate is then computed in beats per minute (bpm).
5. Visualization:
Multiple plots are generated to visualize the raw, filtered, and processed signals,
along with R-wave locations.
6. Testing and Validation:
The system is tested on simulated ECG signals with known characteristics to ensure
accuracy and robustness.
**Working Explanation:**
1. Signal Acquisition: The system begins by importing raw ECG data from a .mat file.
2. Low-Pass Filtering: A Butterworth low-pass filter reduces high-frequency noise, preserving
the essential components of the ECG signal.
3. High-Pass Filtering: A Butterworth high-pass filter removes low-frequency baseline drift,
isolating critical signal features.
4. R-Wave Detection: Using peak detection methods, R-waves are identified in the processed
ECG signal.
5. Heart Rate Calculation: The detected R-R intervals are used to estimate the heart rate in
beats per minute (bpm).
Testing and Observations The system was tested using simulated ECG signals with known
characteristics.
** Observations include:**
• Accurate noise reduction through sequential filtering.
• Reliable R-wave detection within threshold-defined parameters.
• Heart rate calculation consistent with the signal characteristics.
**Simulation Results Figures illustrate:**
1. Raw ECG signal.
2. Frequency response of the low-pass filter.
3. Low pass filtered ECG signal.
4. Frequency response of the high-pass filter.
5. Final filtered ECG signal.
6. Detected R-wave locations.
7. Computed heart rate and total beats in the signal segment.
**Challenges Faced:**
1. Noise in ECG Signals: Dealing with high levels of noise in the raw ECG data required
precise filter design and tuning.
2. Peak Detection Sensitivity: Setting the appropriate threshold for R-wave detection was
challenging to balance sensitivity and specificity.
3. File Format Variability: Ensuring compatibility with different .mat file formats for ECG data
was critical and time-consuming.
4. Time Constraints: Implementing and testing the filtering and detection algorithms under
tight deadlines was demanding.
5. Hardware Limitations: Lack of access to real-time ECG signal acquisition hardware limited
testing to simulated data.
**Relevance in Modern Technology:**
With the rise of wearable health devices, efficient and accurate
heart rate monitoring systems are increasingly relevant. This project integrates traditional ECG
processing with digital techniques, demonstrating its potential for integration into portable health
monitoring devices. The MATLAB implementation offers a scalable approach for further
development into mobile or IoT-based platforms.
