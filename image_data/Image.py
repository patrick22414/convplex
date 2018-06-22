import pickle
import numpy as np
import os
import load_CIFAR_gray
import matplotlib.pyplot as plt

# 30:plane 4:car
X_train = load_CIFAR_gray.get_cifar_data([30],'plane.txt')
load_CIFAR_gray.gray_plot(30)
load_CIFAR_gray.output_plot('plane_output1.txt')