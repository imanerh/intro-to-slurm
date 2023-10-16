import math

def discriminant(a, b, c):
    return b**2 - 4*a*c

def roots(a, b, c):
    a = int(a)
    b = int(b)
    c = int(c)
    delta = discriminant(a, b, c)
    if  delta > 0:
        x1 = (-b - math.sqrt(delta)) / (2*a)
        x2 = (-b + math.sqrt(delta)) / (2*a)
        print("Two real distinct roots: ")
        print("x1 = ", x1)
        print("x2 = ",x2)
    elif delta == 0:
        x = -b / (2*a)
        print("One unique root:")
        print("x = ", x)
    else:
        print("No real roots.")