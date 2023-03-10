f <- function(x, y) x^2 + y^2
df <- gradient(f, FALSE, x, y)
expect_equal(df(0, 0), c(0, 0))
expect_equal(df(0, 1), c(0, 2))
expect_equal(df(1, 1), c(2, 2))

df <- gradient(f, use_names = TRUE, x, y)
expect_equal(df(0, 0), c(x = 0, y = 0))
expect_equal(df(0, 1), c(x = 0, y = 2))
expect_equal(df(1, 1), c(x = 2, y = 2))


f <- function(x, y) x**2 + y**2
h <- hessian(f, FALSE, x, y)

expect_equal(h(0, 0), diag(2, nrow = 2))

H <- diag(2, nrow = 2)
rownames(H) <- colnames(H) <- c("x", "y")
h <- hessian(f, use_names = TRUE, x, y)
expect_equal(h(0, 0), H)