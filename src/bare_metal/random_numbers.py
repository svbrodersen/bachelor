import random
import sys

if __name__ == "__main__":
    lst = []
    num = int(sys.argv[1])
    for i in range(num):
        lst.append(random.randint(0, num))
    print(lst)
