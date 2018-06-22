import pickle
import numpy as np
import os
import matplotlib.pyplot as plt

#使用说明:
#1.get_cifar_data) 输入参数为index，是一个[1,2,...] 包含要生成到txt文件的图片序号; name为保存的文件名
#  介绍：将CIFAR10中32*32*3RGB图转化为1*1024的灰图，n个图像则拼接成1*1024*n矩阵，保存为txt文件，保存格式为十进制数
#2.gray_plot) 输入为单个图像序号，将会画出CIFAR10中rgb图像和处理后的灰图
#3.output_plot) 输入当前目录下的txt文件名，要求该文件具有900个数据，绘制30*30灰度图

def get_cifar_data(index,name):
    cifar10_dir = 'C:/Users/Michael/Desktop/Project/FPGA/image_data/CIFAR-10'
    X_rgb = load_cifar10(cifar10_dir)

    #mask = range(num)
    num = len(index)
    X_rgb = X_rgb[index]

    #计算灰度值:X_rgb是(n,32,32,3)->gray(n,32,32)
    gray = np.zeros([num,1024])
    r, g, b = X_rgb[:, :, :, 0], X_rgb[:, :, :, 1], X_rgb[:, :, :, 2]
    gray = 0.2989 * r + 0.5870 * g + 0.1140 * b

    #将二维矩阵转化为一维向量->gray(n,1024)
    gray = gray.reshape(num,-1)

    #标准化
    gray = gray / 255

    #转Q12定点数
    gray = np.around (gray*4096)
    gray = gray.astype(np.int)

    #保存到txt文件
    np.savetxt(name, gray, fmt='%.0f')  #加上fmt='%f'能去掉科学计数法

    return gray

def output_plot(name):
    a1 = np.loadtxt(name)
    # Q12小数转化为十进制数
    a2 = a1 / 4096
    # 反标准化
    a3 = a2 * 255
    # 对于越界数据清0
    # a4 = (a3 >= 0) * (a3 <= 255) * a3
    a4 = a3  #不需要对越界值处理也能够进行绘图
    # 转化成30*30图形
    a5 = a4.reshape([30, 30])
    # 绘图
    plt.imshow(a5, cmap=plt.cm.gray)
    plt.show()

def gray_plot(index_1):
    cifar10_dir = 'C:/Users/Michael/Desktop/Project/FPGA/image_data/CIFAR-10'
    X_rgb = load_cifar10(cifar10_dir)
    X_rgb = X_rgb[index_1,:,:,:]

    plt.subplot(1,2,1)

    img = np.zeros([3,32,32])
    img[0, :, :] = X_rgb[:, :, 0]
    img[1, :, :] = X_rgb[:, :, 1]
    img[2, :, :] = X_rgb[:, :, 2]
    img_2 = img.transpose([1, 2, 0])
    imshow_noax(img_2)

    gray = np.zeros([10000, 1024])
    r, g, b = X_rgb[ :, :, 0], X_rgb[:, :, 1], X_rgb[ :, :, 2]
    gray = 0.2989 * r + 0.5870 * g + 0.1140 * b
    plt.subplot(1,2,2)
    plt.imshow(gray, cmap=plt.cm.gray)

    plt.show()

    return

def imshow_noax(img, normalize=True):
    """ Tiny helper to show images as uint8 and remove axis labels """
    if normalize:
        img_max, img_min = np.max(img), np.min(img)
        img = 255.0 * (img - img_min) / (img_max - img_min)
    plt.imshow(img.astype('uint8'))
    plt.gca().axis('off')

def load_cifar_batch(filename):
    with open(filename,'rb') as f :
        datadict=pickle.load(f,encoding='bytes')
        x=datadict[b'data']
        x=x.reshape(10000,3,32,32).transpose(0,2,3,1).astype('float')
        return x

def load_cifar10(root):
    xs=[]
    ys=[]
    for b in range(1,2):
        f=os.path.join(root,'data_batch_%d' % (b,))
        x=load_cifar_batch(f)
        xs.append(x)
    Xtrain=np.concatenate(xs) #1
    del x
    return Xtrain
