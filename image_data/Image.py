import pickle
import numpy as np
import os
import load_CIFAR_gray
import matplotlib.pyplot as plt

# 30:plane 4:car
X_train = load_CIFAR_gray.get_cifar_data_coe([4],'car.coe')
# load_CIFAR_gray.gray_plot(30)



# X_train = load_CIFAR_gray.get_cifar_data_txt([4],'car.txt')
# plt.subplot(1,2,2)
# load_CIFAR_gray.output_plot('car_output1.txt')
# plt.subplot(1,2,1)
# load_CIFAR_gray.output_plot('car_output2.txt')
# plt.show()