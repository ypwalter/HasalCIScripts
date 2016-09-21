import os
import shutil
import json

full_path = os.environ['OUTPUTLOC']
tmp = dict(os.environ)

if os.path.exists(full_path):
    os.remove(full_path)

with open("hasal.json", "w+") as f:
    json.dump(tmp, f)

shutil.copy("hasal.json", "/home/hasal/Hasal/agent/")
