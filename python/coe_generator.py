import pickle

import numpy as np
from matplotlib import pyplot as plt
from numpy import ndarray as array


def q12(a: array) -> array:
    """Q12 signed fixed-point converter"""
    return np.trunc(a * 4096).astype(np.uint16)


def gen_image(cifar_index: int) -> array:
    """generate grey image"""
    with open("data_batch_1", 'rb') as fo:
        cifar = pickle.load(fo, encoding="bytes")

    image = cifar[b'data'][cifar_index].reshape(3, 32, 32) / 256

    return image[0] * 0.2106 + image[1] * 0.7152 + image[2] * 0.0722


def gen_coe(image: array, kernel="identity", coe_path="../convplex.srcs/sources_1/ip/Mem.coe"):
    image = q12(image).flatten()
    if kernel == "identity":
        weights = np.array([0, 0, 0, 0, 1, 0, 0, 0, 0])
    elif kernel == "edge":
        weights = np.array([-1, -1, -1, -1, 8, -1, -1, -1, -1]) / 2
    elif kernel == "sharpen":
        weights = np.array([0, -1/2, 0, -1/2, 3, -1/2, 0, -1/2, 0])
    elif kernel == "blur":  # box blur
        weights = np.array([1, 1, 1, 1, 1, 1, 1, 1, 1]) / 9
    elif kernel == "G-blur":  # Gaussian blur
        weights = np.array([1, 2, 1, 2, 4, 2, 1, 2, 1]) / 16
    else:
        raise NotImplementedError
    weights = q12(weights)

    data = np.concatenate((weights, image))
    header = ("memory_initialization_radix=10;\n"
              "memory_initialization_vector=\n")
    footer = ';'
    np.savetxt(coe_path, data, fmt='%d', header=header, footer=footer, comments='')


if __name__ == "__main__":
    example = dict(bird=6488, plane=6543, car=136)

    picture = gen_image(example["car"])

    gen_coe(picture, kernel="G-blur")

    plt.imshow(picture, cmap="gray")
    plt.show()
