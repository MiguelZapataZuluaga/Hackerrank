#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s):
    hora, sufijo = s[:-2], s[-2:]
    horas, minutos, segundos = map(int, hora.split(':'))

    if sufijo.upper() == 'AM':
        if horas == 12:
            horas = 0
    elif sufijo.upper() == 'PM':
        if horas != 12:
            horas += 12

    hora_militar = f"{horas:02d}:{minutos:02d}:{segundos:02d}"
    return hora_militar

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    result = timeConversion(s)

    fptr.write(result + '\n')

    fptr.close()
