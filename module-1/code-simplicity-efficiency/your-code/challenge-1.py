"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.

The code is very long and messy. Refactor it according to what you have learned about
code simplicity and efficiency.
"""

print('Welcome to this calculator!')
print('It can add and subtract whole numbers from zero to five')
a = input('Please choose your first number (zero to five): ')
b = input('What do you want to do? plus or minus: ')
c = input('Please choose your second number (zero to five): ')

# diccionario donde las keys son los números en string y los valores son los números como enteros
my_dict = {'zero': 0, 'one': 1, 'two': 2, 'three': 3, 'four': 4, 'five': 5, 'six': 6, 'seven': 7, 'eight': 8, 'nine': 9, 'ten': 10}
my_dict2 = {0: 'zero', 1: 'one', 2: 'two', 3: 'three', 4: 'four', 5: 'five', 6: 'six', 7: 'seven', 8 :'eight', 9: 'nine', 10: 'ten'}

my_list = ['zero', 'one', 'two', 'three', 'four', 'five']
if (a not in my_list or c not in my_list or b not in ['plus', 'minus']):
    print("I am not able to answer this question. Check your input.")
else:
# Si la operación que queremos hacer es restar:
    if (b == 'minus'):
        if (my_dict[a] - my_dict[c] < 0):
            print(a + " " + b + " " + c + " equals negative " + my_dict2[abs(my_dict[a] - my_dict[c])])
        else:
            print(a + " " + b + " " + c + " equals " + my_dict2[abs(my_dict[a] - my_dict[c])])
    # Si la operación que queremos hacer es sumar:
    if (b == 'plus'):
        print(a + " " + b + " " + c + " equals " + my_dict2[(my_dict[a] + my_dict[c])])



print("Thanks for using this calculator, goodbye :)")
