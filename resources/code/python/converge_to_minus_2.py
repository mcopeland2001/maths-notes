def x_n():
	n = 1
	x = -1
	while True:
		x -= (1/pow(2, n))
		yield x
		n = n + 1

for i in x_n():
	print(i)
	print(abs(i))
