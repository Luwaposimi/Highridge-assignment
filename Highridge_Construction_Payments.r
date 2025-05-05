# Task 1: Create a random list of 400 workers with name, salary, and gender

set.seed(123)  # for reproducibility

workers <- list()

for (i in 1:400) {
  name <- paste0("Worker_", i)
  salary <- sample(7000:30000, 1)
  gender <- sample(c("Male", "Female"), 1)
  worker <- list(name = name, salary = salary, gender = gender)
  workers[[i]] <- worker
}

# Task 2: Loop through workers and print payment slip with exception handling

for (worker in workers) {
  tryCatch({
    name <- worker$name
    salary <- worker$salary
    gender <- worker$gender
    level <- "None"

    # Task 3: Apply salary and gender conditions
    if (salary > 10000 && salary < 20000) {
      level <- "A1"
    } else if (salary > 7500 && salary < 30000 && gender == "Female") {
      level <- "A5-F"
    }

    cat(sprintf("%s | Gender: %s | Salary: $%d | Level: %s\n",
                name, gender, salary, level))
  }, error = function(e) {
    cat(sprintf("Error processing %s: %s\n", worker$name, e$message))
  })
}
