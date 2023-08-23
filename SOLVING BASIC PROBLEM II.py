#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'miniMaxSum' function below.
#
# Thae function accepts INTEGER_ARRAY arr as parameter.
#

def miniMaxSum(arr):
    tam=len(arr)
    g=[]
    #arrt=arr[i:]
    for i in range(tam):
        arrt = arr.copy()  #copia del arreglo
        del arrt[i]
        u = sum(arrt)
        g.append(u)
    mayor = max(g)
    minimo = min(g)
    print(minimo,mayor)  # Mayor suma

    

if __name__ == '__main__':
    arr = list(map(int, input().rstrip().split()))
    miniMaxSum(arr)




    
    
