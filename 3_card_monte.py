
from random import shuffle

example = [1,2,3,4,5,6,7]

def shuffle_list(mylist):
    shuffle(mylist)
    return mylist

result = shuffle_list(example)


mylist = [' ', ' ', ' ']

shuffle_list(mylist)

def player_guess():

    guess=''

    while guess not in ['0','1','2']:
        guess = input('pick a number 0 1 or 2 bitch')
    return int(guess)

player_guess()

myindex = player_guess()


def check_guess(mylist,guess):
    if mylist[guess] == 'O':
        print('correct')
    else:
        print('wrong')
        print(mylist)
