# Imagine running an HIV test on A SAMPLE of 1000 persons ...
# The test has a false positive rate of 5% (0.05)..." i.e., the probability that someone who takes the test gets a POSITIVE result despite the fact that the person does NOT have HIV
# ...and no false negative rate." i.e., The probability that someone who takes the test gets a NEGATIVE result despite the fact that the person DOES have HIV.

#Exercise #1: If someone gets a positive test, is it "statistically significant" at the p<0.05 level? Why or why not?
import scipy.stats as st
import numpy as np

N = 1000 # sample size
false_positive_rate = 0.05 
false_negative_rate = 0

print(f'The probability of obtaining the data under the Null Hypothesis = {false_positive_rate}')


#Exercise #2: What is the probability that if someone gets a positive test, that person is infected?
#For this exercise, assume a range of priors (infection rates) from 0 to 1 in steps of 0.1.

import numpy as np
import matplotlib.pyplot as plt

# Parameters of the test
false_positive_rate = 0.05  # P(Positive | No HIV)
false_negative_rate = 0.0   # P(Negative | HIV)
sensitivity = 1 - false_negative_rate  # P(Positive | HIV)

# Range of infection rates (priors, From 0 to 1 in steps of 0.1)
prevalence = np.arange(0, 1.01, 0.1)  

# Calculate P(HIV | Positive) using Bayes' theorem
posterior = (sensitivity * prevalence) / (
    sensitivity * prevalence + false_positive_rate * (1 - prevalence)
)

# Display results
for p, post in zip(prevalence, posterior):
    print(f"Prevalence: {p:.2f} -> P(HIV|Positive): {post:.3f}")

# Plot
plt.figure(figsize=(8, 6))
plt.plot(prevalence, posterior, marker='o')
plt.title("Probability of HIV Given Positive Test")
plt.xlabel("Prevalence (P(HIV))")
plt.ylabel("P(HIV | Positive)")
plt.grid(True)
plt.show()

