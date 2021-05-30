
#Tone generator API using pyo.
#Support for waveform, frequency, harmonics, sampling rate, duration.

from pyo import *

class toneGenerator:
    def __init__(self, amp=0.1):
        self.server = Server()
        self.server.amp = amp
    def sinewave(self, frequency, phase=0):
        server = self.server
        server.boot()
        server.start()
        sineWave = Sine(frequency, phase).out()
    def getSysConfig(self):
        print("Audio host APIS:")
        pa_list_host_apis()
        pa_list_devices()
        print("Default input device: %i" % pa_get_default_input())
        print("Default output device: %i" % pa_get_default_output())
