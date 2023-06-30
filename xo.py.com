single= 'single'
multiplayer= 'multiplayer'
print('single')
print('multiplayer')
inputChoice=input('enter your choice : ')
if (inputChoice == multiplayer):
    a = 1
    b = 2 
    c = 3
    d = 4
    e = 5
    f = 6
    g = 7
    h = 8
    i = 9
    def Tic():
        print(a, '|' ,b, '|' ,c)
        print('---------')
        print(d, '|' ,e, '|' ,f)
        print('---------')
        print(g, '|' ,h, '|' ,i)
    print("Tic Tac Toi")
    print('welcome from python.py')
    print('1,2,3,4,5,6,7,8,9, is a : colom')
    print("••••••••••••••")
    Tic()
    X = input('enter the first letter of your name"X" : ')
    Y = input('enter the first letter of your name"O" : ')
    winX = ((a|b|c)|(a|d|g)|(a|e|i)|(d|e|f)|(g|h|i)|(i|e|a)|(c|b|a)|(i|h|g)|(g|d|a))
    if (winX== X):
        print('x is win')
    for z in range (5):
        if(True):
            Xinp = int(input('X chance : '))
        if(Xinp == a):
            a = X  
            print(a)
        elif(Xinp == b):
            b = X
            print(b)   
        elif(Xinp == c):
            c = X  
            print(c)   
        elif(Xinp == d):
            d = X  
            print(d)   
        elif(Xinp == e):
            e = X  
            print(e)   
        elif(Xinp == f):
            f = X  
            print(f)   
        elif(Xinp == g):
            g = X  
            print(g)   
        elif(Xinp == h):
            h = X  
            print(h)   
        elif(Xinp == i):
            i = X  
            print(i)
        Tic()
        abc= (a==b==c)
        adg = (a==d==g)
        aei=(a==e==i)
        Def = (d==e==f)
        ghi = (g==h==i)
        beh = (b==e==h)
        cfi=(c==f==i)
        gec=(g==e==c)   
        XXX = True
        OOO = False
        if(abc== True):     
            print('______x is win_')
        elif(adg== True):     
            print('______x is win_')
        elif(aei== True):     
            print('______x is win_')
        elif(Def== True):     
            print('______x is win_')
        elif(ghi== True):     
            print('______x is win_')
        elif(beh== True):     
            print('______x is win_')
        elif(cfi== True):     
            print('______x is win_')
        elif(gec== True):     
            print('______x is win_') 
        if(abc|Def|ghi|adg|beh|cfi|aei|gec == True):
            print('____the winner is "X"____')
            print('"X"is : ',X)
            print(' __quit:--')
            quit()
        if(True):
            Xinp = int(input(' O chance : '))
        if(Xinp == a):
            a = Y 
            print(a)
        elif(Xinp == b):
            b = Y 
            print(b)   
        elif(Xinp == c):
            c = Y 
            print(c)   
        elif(Xinp == d):
            d = Y  
            print(d)   
        elif(Xinp == e):
            e = Y  
            print(e)   
        elif(Xinp == f):
            f = Y  
            print(f)   
        elif(Xinp == g):
            g = Y
            print(g)   
        elif(Xinp == h):
            h = Y  
            print(h)   
        elif(Xinp == i):
            i = Y 
            print(i)
        abc= (a==b==c==Y)
        adg = (a==d==g==Y)
        aei=(a==e==i==Y)
        Def = (d==e==f==Y)
        ghi = (g==h==i==Y)
        beh = (b==e==h==Y)
        cfi=(c==f==i==Y)
        gec=(g==e==c==Y)    
        Tic() 
        if(abc|Def|ghi|adg|beh|cfi|aei|gec == True):
            print('_____the winner is "O"_____')
            print('"O"is : ',Y)
            print('__quit:--')
            quit()    
            Tic()
elif(inputChoice == single):
    import random    
    a = 1
    b = 2 
    c = 3
    d = 4
    e = 5
    f = 6
    g = 7
    h = 8
    i = 9
    def Tic():
        print(a, '|' ,b, '|' ,c)
        print('---------')
        print(d, '|' ,e, '|' ,f)
        print('---------')
        print(g, '|' ,h, '|' ,i)
    print("Tic Tac Toi")
    print('welcome from python.py')
    print('1,2,3,4,5,6,7,8,9, is a : colom')
    print("••••••••••••••")
    Tic()
    XXX = ('xxx')
    X = input('enter the first letter of your name"X" : ')
    Y = '©'
    print('the computer name is :',Y)
    winX = ((a|b|c)|(a|d|g)|(a|e|i)|(d|e|f)|(g|h|i)|(i|e|a)|(c|b|a)|(i|h|g)|(g|d|a))
    if (winX== X):
        print('x is win')
    for z in range (20):
        if(True):
            Xinp = int(input('X chance : '))
        if(Xinp == a):
            a = X  
            print(a)
        elif(Xinp == b):
            b = X
            print(b)   
        elif(Xinp == c):
            c = X  
            print(c)   
        elif(Xinp == d):
            d = X  
            print(d)   
        elif(Xinp == e):
            e = X  
            print(e)   
        elif(Xinp == f):
            f = X  
            print(f)   
        elif(Xinp == g):
            g = X  
            print(g)   
        elif(Xinp == h):
            h = X  
            print(h)   
        elif(Xinp == i):
            i = X  
            print(i)
        Tic()
        abc= (a==b==c)
        adg = (a==d==g)
        aei=(a==e==i)
        Def = (d==e==f)
        ghi = (g==h==i)
        beh = (b==e==h)
        cfi=(c==f==i)
        gec=(g==e==c)   
        XXX = True
        OOO = False
        if(abc== True):     
            print('______x is win_')
        elif(adg== True):     
            print('______x is win_')
        elif(aei== True):     
            print('______x is win_')
        elif(Def== True):     
            print('______x is win_')
        elif(ghi== True):     
            print('______x is win_')
        elif(beh== True):     
            print('______x is win_')
        elif(cfi== True):     
            print('______x is win_')
        elif(gec== True):     
            print('______x is win_') 
        if(abc|Def|ghi|adg|beh|cfi|aei|gec == True):
            print('____the winner is "X"____')
            print('"X"is : ',X)
            print(' __quit:--')
            quit()
        print('_____________')
        print(':::::::::::::::::::::::')
        Yinp1= [Xinp-1,Xinp+3]
        Yinp2= [Xinp+1,Xinp+3]
        Yinp3= [Xinp-3,Xinp+1]
        Yinp4= [Xinp-1,Xinp-3]
        Yinp5= [Xinp-6,Xinp+3]
        Yinp6= [Xinp-3,Xinp+3]
        Yinp7= [Xinp-1,Xinp+1]
        Yinp8= [Xinp-1,Xinp+1]
        Yinp9= [Xinp-4,Xinp-3,Xinp-2,Xinp-1,Xinp+1,Xinp+2,Xinp+3,Xinp+4]
        
        if(Xinp==3):          
            Xinp = (random.choice(Yinp1))
            print(Y,'chance : ' ,Xinp)
        elif(Xinp==1):
            Xinp=(random.choice(Yinp2)) 
            print(Y,'chance : ',Xinp)  
        elif(Xinp==7):
            Xinp=(random.choice(Yinp3)) 
            print(Y,'chance : ',Xinp) 
        elif(Xinp==9):
            Xinp=(random.choice(Yinp4)) 
            print(Y,'chance : ',Xinp) 
        elif(Xinp==6):
            Xinp=(random.choice(Yinp5)) 
            print(Y,'chance : ',Xinp) 
        elif(Xinp==4):
            Xinp=(random.choice(Yinp6)) 
            print(Y,'chance : ',Xinp) 
        elif(Xinp==2):
            Xinp=(random.choice(Yinp7)) 
            print(Y,'chance : ',Xinp) 
        elif(Xinp==9):
            Xinp=(random.choice(Yinp8)) 
            print(Y,'chance : ',Xinp) 
        elif(Xinp==5):
            Xinp=(random.choice(Yinp9)) 
            print(Y,'chance : ',Xinp)  
        if(Xinp == a):
            a = Y 
            print(a)
        elif(Xinp == b):
            b = Y 
            print(b)   
        elif(Xinp == c):
            c = Y 
            print(c)   
        elif(Xinp == d):
            d = Y  
            print(d)   
        elif(Xinp == e):
            e = Y  
            print(e)   
        elif(Xinp == f):
            f = Y  
            print(f)   
        elif(Xinp == g):
            g = Y
            print(g)   
        elif(Xinp == h):
            h = Y  
            print(h)   
        elif(Xinp == i):
            i = Y 
            print(i)
        abc= (a==b==c==Y)
        adg = (a==d==g==Y)
        aei=(a==e==i==Y)
        Def = (d==e==f==Y)
        ghi = (g==h==i==Y)
        beh = (b==e==h==Y)
        cfi=(c==f==i==Y)
        gec=(g==e==c==Y)    
        Tic() 
        if(abc|Def|ghi|adg|beh|cfi|aei|gec == True):
            print('_____the winner is "O"_____')
            print('"O"is : ',Y)
            print('__quit:--')
            quit()    
            Tic()
            

       