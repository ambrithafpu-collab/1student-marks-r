# ---------------------------------------
# Student Marks Analysis in R
# ---------------------------------------

# Create data for multiple students
students <- data.frame(
  Name = c("Ambritha", "Rahul", "Priya"),
  English = c(85, 78, 92),
  Maths = c(90, 88, 95),
  Science = c(88, 70, 89),
  Social = c(92, 75, 94)
)

# Calculate Total Marks
students$Total <- rowSums(students[,2:5])

# Calculate Percentage
students$Percentage <- students$Total / 4

# Assign Grade
students$Grade <- ifelse(
  students$Percentage >= 90, "A+",
  ifelse(students$Percentage >= 75, "A",
  ifelse(students$Percentage >= 60, "B", "C"))
)

# Print results
print(students)# Student Marks Analysis

# Create student data
student <- data.frame(
  Name = "Ambritha",
  English = 85,
  Maths = 90,
  Science = 88,
  Social = 92
)

# Calculate Total
student$Total <- rowSums(student[,2:5])

# Calculate Percentage
student$Percentage <- student$Total / 4

# Assign Grade
student$Grade <- ifelse(student$Percentage >= 90, "A+",
                  ifelse(student$Percentage >= 75, "A",
                  ifelse(student$Percentage >= 60, "B", "C")))

# Print Result
print(student)
