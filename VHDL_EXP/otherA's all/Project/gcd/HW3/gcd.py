def gcd(a,b):
	while a!= b:
		if a>b:
			a-=b
		else:
			b-=a
	return a

A,B=90,75
print('GCD(%d,%d)=%d'%(A,B,gcd(A,B)))
