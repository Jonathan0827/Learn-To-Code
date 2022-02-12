import random
menu = []
time = 0
while time < 4:
    secondmenu = input("enter menu ")
    menu.append(secondmenu)
    time = time+1
print(random.choice(menu))
