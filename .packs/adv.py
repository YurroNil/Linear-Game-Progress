import json
import os

path = os.getcwd()
path = path + '\\data\\lgp\\advancements'
print(path)

testd = {
    "a": {},
    "b": {},
    "c": {}
}

testl = ["e", "f"]

for i in range(len(testl)):
    testd[testl[i]] = {}
print(testd)

adv = []

step = 0
dirt_count = 0
for root, dirs, files in os.walk(path):
    step += 1
    if (step == 1):
        for i in range(len(dirs)):
            adv.append(dirs[i])
    if (step >= 2):
        for i in range(len(files)):





