# Generate mystery data
set.seed(48)
simulated_data3 = tibble(
x = rt(100, 4)
)
write.csv(simulated_data3, "mystery_data.csv", row.names = FALSE)

#Generate distribution test data
set.seed(1)
distTest_data1 <- tibble(
  x = rnorm(16000)
)

add_data <- tibble(
  x = c(-4)
)

distTest_data1 <- bind_rows(distTest_data1, add_data)

write.csv(distTest_data1, "distTest_data.csv", row.names = FALSE)