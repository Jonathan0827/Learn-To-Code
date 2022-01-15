while True:
    def readit():
        import sys
        f = open('txt.txt', 'r')
        fl = f.readlines()
        print(fl)
        f.close()
    def writeit():
        import sys
        f = open('txt.txt', 'a')
        wrin = input('write something  ') + "\n"
        wrin = wrin[0:-1]
        f.write(', text:  %s' %wrin)
        f.close
    ans = input('Read or write or clear ')
    if ans == 'read':
        readit()
    
    elif ans == 'write' :
        writeit()
        readit()
    elif ans == 'clear' :
        f = open('txt.txt', 'w')
        f.write('')
    else:
        print('Write correct command')