# 라이브러리 사용
import tensorflow as tf
import pandas as pd
import numpy as np

def Learn_Model():

       # 데이터를 준비합니다.
    path = "summation_all.csv"
    read = pd.read_csv(path)
    read.head()

        # 종속변수, 독립변수
    IDP = read[['기온','습도','시간']]
    DP = read[['압력','압력1']]
    print(IDP.shape, DP.shape)



        # 모델을 만듭니다.
    X = tf.keras.layers.Input(shape=[3])
    H = tf.keras.layers.Dense(8)(X)
    H = tf.keras.layers.BatchNormalization()(H)
    H = tf.keras.layers.Activation('swish')(H)

    H = tf.keras.layers.Dense(8)(H)
    H = tf.keras.layers.BatchNormalization()(H)
    H = tf.keras.layers.Activation('swish')(H)

    H = tf.keras.layers.Dense(8)(H)
    H = tf.keras.layers.BatchNormalization()(H)
    H = tf.keras.layers.Activation('swish')(H)
    Y = tf.keras.layers.Dense(2)(X)
    model = tf.keras.models.Model(X, Y)
    model.compile(loss='mse', optimizer='adam', metrics=['accuracy'])



        # 모델을 학습시킵니다.
    model.fit(IDP, DP, epochs=2000, verbose=0)
    model.fit(IDP, DP, epochs=2000)


def Predict_time(prs):
    while prs>50:
        time = 0
        prs = model.predict([15,60,time])
        if (prs>=55):
            time = time + 8760
        elif (prs>51) & (prs<55):
            time = time + 720
        else:
            time = time + 24
    return prs


Learn_Model()
print(Predict_time(100))