# SAC calculator

tank_vol = int(input('Your Cylinder Volume: '))
air_cons = int(input('Air you have consumed in L: '))
d_time = int(input('Your total dive time in minutes, rounded up: '))
press = int(input('The max Atmospheric pressure experienced in BAR: 10M is 1 '))


# add calculation that works out BAR from a max depth input

def sac_val():
    calc1 = tank_vol * air_cons / d_time / press
    print(f'your SAC is {calc1}')


# make the function hold a var that can be added to an f-string literal

sac_val()
