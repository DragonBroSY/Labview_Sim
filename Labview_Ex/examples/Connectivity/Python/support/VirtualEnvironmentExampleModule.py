import numpy as np
from scipy.fft import rfft, rfftfreq, irfft

SAMPLE_RATE = 44100  # Hertz
DURATION = 5  # Seconds

def generate_sine_wave_and_noise(freq, noise_freq):
    x = np.linspace(0, DURATION, SAMPLE_RATE * DURATION, endpoint=False)
    frequencies = x * freq
    # 2pi because np.sin takes radians
    y = np.sin((2 * np.pi) * frequencies)
    frequencies_noise = x * noise_freq
    noise = np.sin((2 * np.pi) * frequencies_noise)
    noise = noise * 0.3
    y_noise=y+noise
    return x[:800], y, y_noise
    
def remove_noise(xy_noise):
    # Number of samples
    N = SAMPLE_RATE * DURATION
    x,y_noise = xy_noise
    y_noise_freq_domain = rfft(y_noise)
    x_freq_domain = rfftfreq(N, 1 / SAMPLE_RATE)
    x = np.linspace(0, DURATION, SAMPLE_RATE * DURATION, endpoint=False)
    
    # The maximum frequency is half the sample rate
    points_per_freq = len(x_freq_domain) / (SAMPLE_RATE / 2)

    # Our target frequency is 4000 Hz
    target_index = int(points_per_freq * 4000)
    
    y_freq_domain = np.copy(y_noise_freq_domain)
    # Making the noise component 0
    y_freq_domain[target_index - 1 : target_index + 2] = 0
    
    y_without_noise = irfft(y_freq_domain)
    return x[:800],y_without_noise,x_freq_domain,abs(y_noise_freq_domain),abs(y_freq_domain)
    