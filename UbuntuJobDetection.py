import os
import sys
import time


if os.environ.has_key("OUTPUTLOC"):
    full_path = os.environ['OUTPUTLOC']
    conf_path = "/home/hasal/Hasal/agent/hasal.json"

    eot = False
    while True:
        if os.path.exists(full_path):
            break
        if not os.path.exists(conf_path):
            print "Detection of job finished."
            sys.exit(0)
        time.sleep(1)

    lines = 0
    while True:
        with open(full_path, "r") as f:
            current_file = f.readlines()
            current_lines = len(current_file)
            if current_lines > lines:
                for i in range(lines, current_lines):
                    print current_file[i].strip()
                lines = current_lines
            
            if eot == True:
                break
            
            if not os.path.exists(conf_path):
                print "Detection of job finished."
                eot = True
                time.sleep(60)

            time.sleep(2)
