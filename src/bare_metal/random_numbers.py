import sys
import random


if __name__ == "__main__":
    lst = []
    num_args = len(sys.argv)
    if num_args != 4:
        print("""USAGE: %d %d %d\n\t Where the first argument is lower range,
              second is upper range and last is number of elements""")
        exit(1)
    l = int(sys.argv[1])
    u = int(sys.argv[2])
    num = int(sys.argv[3])

    lst = [random.randint(l, u) for _ in range(num)]
    with open("./alist.c", "w") as f:
        f.write(
            f"volatile int alist[{num}] = {{{str(lst)[1:-1]}}};\nvolatile int alist_size = {num};"
        )
