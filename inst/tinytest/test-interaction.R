source("helpers.R")
requiet("ggplot2")

data("diamonds", package = "ggplot2")
dat <- diamonds[1:1000, ]
dat$cut <- factor(as.character(dat$cut), levels = levels(dat$cut))
dat$color <- factor(as.character(dat$color), levels = levels(dat$color))
dat$clarity <- factor(as.character(dat$clarity), levels = levels(dat$clarity))
mod <- lm(price ~ cut * color + clarity  + carat, data = dat)
cmp1 <- comparisons(mod, variables = c("cut", "color"))
cmp2 <- comparisons(mod, variables = "cut")
tid1 <- tidy(cmp1)
tid2 <- tidy(cmp2)

expect_equivalent(nrow(tid1), 34)
expect_equivalent(nrow(tid2), 4)
expect_equivalent(anyDuplicated(tid1$estimate), 0)
expect_equivalent(anyDuplicated(tid2$estimate), 0)
expect_false(anyNA(tid1$estimate))
expect_false(anyNA(tid1$std.error))
expect_false(anyNA(tid2$estimate))
expect_false(anyNA(tid2$std.error))
expect_equivalent(nrow(subset(cmp1, rowid == 1)), 34)
expect_equivalent(nrow(subset(cmp2, rowid == 1)), 4)

n_unique <- nrow(unique(subset(cmp2, rowid == 1, "contrast")))
expect_equivalent(n_unique, 4)


# library(brms)
# dat <- mtcars
# dat$gear <- factor(dat$gear)
# mod <- lm(mpg ~ hp + gear, data = dat)
# modb <- brm(mpg ~ hp + gear, data = dat)



# Q
# pkgload::load_all()
# marginaleffects(modb, slope = "eyex") |> summary()
# marginaleffects(mod, slope = "eyex") |> summary()
