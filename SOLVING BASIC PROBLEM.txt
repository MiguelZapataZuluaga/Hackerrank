#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr):
    cero=0.0
    po=0.0
    ne=0.0
    for i in range(len(arr)):
    
        if arr[i]==0:
            cero=1+cero
        elif arr[i]>0:
            po=1+po
        elif arr[i]<0:
            ne=1+ne
    ce=cero/n
    po1=po/n
    ne1=ne/n
    print("{:.6f}".format(po1)) 
    print("{:.6f}".format(ne1)) 
    print("{:.6f}".format(ce)) 
   
    # Write your code here

if __name__ == '__main__':
    n = int(input().strip())

    arr = list(map(int, input().rstrip().split()))

    plusMinus(arr)
#
