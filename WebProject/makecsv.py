import csv
import numpy as np

def Add_Line(pressure_value,daytime):
    file = open('pressure.csv','a',newline='')
    realv = pressure_value
    write = csv.writer(file)
    write.writerow([realv,daytime])

    file.close()

def Add_Line1(pressure_value,daytime):
    file = open('pressure1.csv','a',newline='')
    realv = pressure_value
    write = csv.writer(file)
    write.writerow([realv,daytime])

    file.close()
    
def Abstract_Latest_pressure():
    with open('pressure.csv') as csv_file:
        csv_reader = csv_file.readline()
        latest_set = csv.reader(csv_file, delimiter=',')
        latest_one = list(latest_set)[-1][0]
        return latest_one
    
def Abstract_Latest_pressure1():
    with open('pressure1.csv') as csv_file:
        csv_reader = csv_file.readline()
        latest_set = csv.reader(csv_file, delimiter=',')
        latest_one = list(latest_set)[-1][0]
        return latest_one

def Abstract_Latest_daytime():
    with open('pressure.csv') as csv_file:
        csv_reader = csv_file.readline()
        latest_set = csv.reader(csv_file, delimiter=',')
        latest_one = list(latest_set)[-1][1]
        return latest_one
    
def Merge_Csv(location_now):
    path_w = "weather.csv"
    file_w = open(path_w,'r')
    w = np.array([])

    read_w = csv.reader(file_w)

    for line_w in read_w:
        for word_w in line_w:
            w = np.append(w, np.array([word_w]))


    tupleToint = np.where(w == location_now)
    k = tupleToint[0][0]

    file_w.close()

    path_p = "pressure.csv"
    file_p = open(path_p,'r')
    p  = np.array([])

    read_p = csv.reader(file_p)

    for line_p in read_p:
        for word_p in line_p:
            p = np.append(p, int(float(np.array([word_p]))))

    file_p.close()

    path_p1 = "pressure1.csv"
    file_p1 = open(path_p1,'r')
    p1  = np.array([])

    read_p1 = csv.reader(file_p1)

    for line_p1 in read_p1:
        for word_p1 in line_p1:
            p1 = np.append(p1, np.array([word_p1]))

    file_p1.close()
    
    file = open('summation.csv','w',newline='')
    write = csv.writer(file)
    array_size = np.size(p)
    numofrow = int(array_size/2)
    write.writerow(['지역','기온','습도','시간','압력','압력1'])
    i = 0
    while i < numofrow :
        write.writerow([w[k], w[k+1], w[k+2], p[i+1]-1630023483, int(p[i]), p1[i]])
        i = i + 2
    file.close()
    
