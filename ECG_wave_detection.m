% Prompt user to select an ECG signal file
[FileName, PathName] = uigetfile('*.mat', 'Select an ECG Signal File');

if isequal(FileName, 0)
    disp('No file selected.');
else
    data = load(fullfile(PathName, FileName));
    if isfield(data, 'val')
        Gain = 200;
        ecg_signal = data.val / Gain;
        Fs = 360;
        t = (0:length(ecg_signal)-1)/Fs;

        figure;
        plot(t, ecg_signal, 'b');
        title('Raw ECG Signal');
        xlabel('Time (s)'); ylabel('Amplitude (mV)'); grid on;

        % Low-pass filter
        LP_Order = 10; LP_Cutoff = 18;
        [b_lp, a_lp] = butter(LP_Order, LP_Cutoff/(Fs/2), 'low');
        ECG_LP = filter(b_lp, a_lp, ecg_signal);

        % High-pass filter
        HP_Cutoff = 4;
        [b_hp, a_hp] = butter(LP_Order, HP_Cutoff/(Fs/2), 'high');
        ECG_Filtered = filter(b_hp, a_hp, ECG_LP);

        % Detect R-waves
        Segment = ECG_Filtered(1801:end);
        [peaks, locations] = findpeaks(Segment);
        threshold = 2 * rms(Segment);
        R_wave_locs = locations(peaks > threshold);

        figure;
        plot(Segment, 'b'); hold on;
        stem(R_wave_locs, Segment(R_wave_locs), 'ro');
        title('R-Wave Detection');
        xlabel('Sample Index'); ylabel('Amplitude (mV)'); grid on;

        Total_Beats = numel(R_wave_locs);
        Heart_Rate = (Total_Beats / 5) * 60;
        disp(['Heart Rate: ', num2str(Heart_Rate), ' bpm']);
    else
        disp('Selected file does not contain required ECG data.');
    end
end