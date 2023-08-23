#!/bin/python3

import math
import os
import random
import re
import sys



#
# Complete the 'findMedian' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY arr as parameter.
#

def findMedian(vector_ordenado):
    arr=sorted(arr) # ordeno el arreglo de menor a mayor
    n=len(arr)

    k=n%2
    n=n//2
    if k==0:# es par
       median=(arr[n]+arr[n-1])/2
    else:
        median=arr[n]
    return(median)
    

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input().strip())

    arr = list(map(int, input().rstrip().split()))
        
    result = findMedian(arr)

    fptr.write(str(result) + '\n')

    fptr.close()
