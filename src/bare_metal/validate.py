data = []
with open("./test.txt", "r") as f:
    data = f.read().split("\n")


def hybrid_is_int(x):
    try:
        int(x)
        return True
    except ValueError:
        return False


lst1 = [int(x) for x in data[0].split(",") if hybrid_is_int(x)]
lst2 = [int(x) for x in data[1].split(",") if hybrid_is_int(x)]

lst1.sort()
assert len(lst2) == len(lst1)
for i in range(len(lst1)):
    assert lst1[i] == lst2[i], f"{i}: {lst1[i]} != {lst2[i]}"
