# Task1 - Creating Random List of Worker Dynamically(400 workers) with names, salaries, and genders

import random

workers = []

for i in range(1, 401):
    name = "Worker_" + str(i)
    salary = random.randint(7000, 30000)
    gender = random.choice(["Male", "Female"])
    workers.append({"name": name, "salary": salary, "gender": gender})

# Task2 - Looping through the workers and generating payment slip with exception handling

for worker in workers:
    try:
        name = worker["name"]
        salary = worker["salary"]
        gender = worker["gender"]
        level = "None"

        # Task3 - Applying the given conditions
        if 10000 < salary < 20000:
            level = "A1"
        elif 7500 < salary < 30000 and gender == "Female":
            level = "A5-F"

        print(f"{name} | Gender: {gender} | Salary: ${salary} | Level: {level}")
    except Exception as e:
        print(f"Error processing {worker['name']}: {e}")
