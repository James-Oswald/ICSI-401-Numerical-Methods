

def horner(coef, x):
    y = 0
    z = None
    degree = len(coef)-1
    if degree == 0:
        y = coef[0]
    else:
        z = horner(coef[1:degree + 1], x)
        y = coef[0] + x * z
    print(str(coef) + " | " + str(z) + " | " + str(y))
    return y

horner([1,1,3,1], 0)



