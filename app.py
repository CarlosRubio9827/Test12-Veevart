import random

escalera = [
    0, 0, [1,10], 0, 0,
    [1,16], 0, 0, [1,17], [1,11], 
    0, 0, 0, [-1,3], 0,
    0, 0, 0, [-1,7], 0, 
    0, [-1, 20], 0, [-1, 15], 0
]

def game(tiros):

    print("Bienvenido al Juego de la Escalera\n")
    pos = 0
    isWin = False
    for x in tiros:

        print("Dado cayó en: ", x)
        if(x<1 or x>6):
            isWin= False;
            break;
        else:

            pos+=x
            if (pos >= 25):
                isWin = True
                print("¡Felicitaciones, has llegado a la meta!")
                
            if(escalera[pos-1] == 0):
                print("Quedas en la posición: ", pos)
                
            elif(escalera[pos-1][0] == 1):
                pos = escalera[pos-1][1] +1
                print("¡Llegaste a una escalera!\nQuedas en la posición: ", pos)
            elif(escalera[pos-1][0] == -1):
                pos = escalera[pos-1][1] +1
                print("¡Llegaste a una serpiente!\nQuedas en la posición: ", pos)

    return isWin

game([3,5,5,4])
game([6,3,1,2,2])
