import numpy as np
from matplotlib import pyplot as plt


def show_output():
    image = np.loadtxt("../convplex.sim/sim_1/behav/xsim/output.txt")
    image[(image > 4095) * (image < 32768)] = 4095
    image[(image > 32767)] = 0
    image = (image[0:900] / 4096).reshape(30, 30)
    print(np.max(image))
    plt.imshow(image, cmap="gray")
    plt.show()


if __name__ == "__main__":
    show_output()
