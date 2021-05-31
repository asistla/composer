from tone import toneGenerator as tg

if __name__=="__main__":
    toneGenerator = tg()
    print("Current system config: ")
    toneGenerator.getSysConfig()
    tg.sinewave(440,0.0)
