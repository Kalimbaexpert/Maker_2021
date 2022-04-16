import datetime as dt
import pandas as pd

a = "/workspace/LIS/WebProject/pressure.csv"
b = pd.read_csv(a)
c = b.iloc[0,1]

dateformat = "%y-%m-%d %H:%M:%S"
print(c)
now = dt.datetime.now()
print(now)
now1 = now.replace(microsecond=0)
print(now1)

now_convert = dt.datetime.strptime(now1,dateformat)
c_convert = dt.datetime.strptime(c,dateformat)

print ((now_convert - c_convert).seconds)