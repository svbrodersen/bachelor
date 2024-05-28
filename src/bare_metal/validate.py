data = []
with open("./test.txt", "r") as f:
    data = f.read().split("\n")

lst1 = [int(x) for x in data[0].split(",") if x.isdigit()]
lst2 = [int(x) for x in data[1].split(",") if x.isdigit()]

assert len(lst1) == len(lst2)
lst1.sort()
for i in range(len(lst1)):
    assert lst1[i] == lst2[i], f"{i}"
