from matplotlib import pyplot as plt
from numpy import loadtxt


def show_output():
    image = loadtxt("../convplex.sim/sim_1/behav/xsim/output.txt", )[0:900].reshape(30, 30)

    image[(image > 32767)] = 0
    image[(image > 4095)] = 4095

    plt.imshow(image, cmap="gray")
    plt.show()


if __name__ == "__main__":
    show_output()
