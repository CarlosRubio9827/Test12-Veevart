import random

escalera = [
    0, 0, [1,10], 0, 0,
    [1,16], 0, 0, [1,17], [1,11], 
    0, 0, 0, [-1,3], 0,
    0, 0, 0, [-1,7], 0, 
    0, [-1, 20], 0, [-1, 15], 0
]

def game():

    pos = 0
    print("Bienvenido al Juego de la Escalera\n")
    while(True):
        
        a = int (input('SELECCIONA UNA OPCIÓN:\n1) Tirar.\n2) Salir.\n: '))
        if (a==2):
            print("¡Muchas gracias por jugar!")
            break
        elif (a!=1):
            print("Por favor, selecciona una opción correcta.")
            continue
        
        else:
            tiro = random.randint(1, 6)
            print("Tu tiro es: ", tiro)
            pos+=tiro
            if (pos >= 25):
                print("¡Felicitaciones, has llegado a la meta!")
                break
            if(escalera[pos-1] == 0):
                print("Quedas en la posición: ", pos)
                continue
            elif(escalera[pos-1][0] == 1):
                pos = escalera[pos-1][1] +1
                print("¡Llegaste a una escalera!\nQuedas en la posición: ", pos)
            elif(escalera[pos-1][0] == -1):
                pos = escalera[pos-1][1] +1
                print("¡Llegaste a una serpiente!\nQuedas en la posición: ", pos)
        

# game()