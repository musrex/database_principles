from itertools import combinations

columns = int(input("How many columns? "))

column_names = [""] * columns

for i in range(columns):
    column_names[i] = input(f"What is the name of column #{i+1}? ")

output = f"Here are all {2**(columns)-1} superkeys:\n"
j = 1

for k in range(columns+1, 0, -1):
    current_combos = combinations(column_names, k)
    for combo in current_combos:
        output += f"({j}) "
        for item in combo:
            output += f"{item}, "
        j += 1
        output = output[:-2] + "; "
output = output[:-2]
print(output)
