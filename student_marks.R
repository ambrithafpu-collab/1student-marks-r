# Student Marks Analysis

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
