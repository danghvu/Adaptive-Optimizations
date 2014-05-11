#!/usr/bin/python

import os
import time
import re
from decimal import Decimal

# data tuple:
#  (name, passed?, native-time, lli-time, our-time)
data = []

# (t1, t2, avg_best)
best = []
# (t1, t2, avg_worst)
worst = []
# (t1. t2. avg_total)
total = []

def main():
  t1_start = 100
  t1_end   = 100
  t2_start = 100
  t2_end   = 100
  step     = 10

  remove_output()

  for i in range(t1_start, t1_end+1, step):
    for j in range(t2_start, t2_end+1, step):
      print(str(i) + " - " + str(j))
      del data[0:len(data)]
      cmd = 'make -j 8 TEST=nightly EXTRA_LLIFLAGS="-enable-online-profile -t1 ' + str(i) + ' -t2 ' + str(j) + '" DISABLE_LLC=1 report.html'
      print(cmd)
      os.system(cmd)
      t = int(round(time.time()))
      parse_results(i, j, t)
      output_data(i, j, t)
      remove_output()

  best.sort(key=lambda tup: -tup[2])
  worst.sort(key=lambda tup: -tup[2])
  total.sort(key=lambda tup: -tup[2])

  top = 5
  if (len(best) < 5):
    top = len(best)

  print("*** Completed tests ***")
  print(">>> Top configs [best avg] for (t1: " + str(t1_start) + ", t2: " + str(t2_start) + ") to (t1: " + str(t1_end) + ", t2: " + str(t2_end) + ")")
  for i in range(0, top):
    print("t1: " + str(best[i][0]) + " t2: " + str(best[i][1]) + "[" + str(best[i][2]) + "]")
  print(">>> Top configs [worst avg] for (t1: " + str(t1_start) + ", t2: " + str(t2_start) + ") to (t1: " + str(t1_end) + ", t2: " + str(t2_end) + ")")
  for i in range(0, top):
    print("t1: " + str(worst[i][0]) + " t2: " + str(worst[i][1]) + "[" + str(worst[i][2]) + "]")
  print(">>> Top configs [total avg] for (t1: " + str(t1_start) + ", t2: " + str(t2_start) + ") to (t1: " + str(t1_end) + ", t2: " + str(t2_end) + ")")
  for i in range(0, top):
    print("t1: " + str(total[i][0]) + " t2: " + str(total[i][1]) + "[" + str(total[i][2]) + "]")

  with open("final_res.txt", "a") as myfile:
    myfile.write("*** Completed tests ***\n")
    myfile.write(">>> Top configs [best avg] for (t1: " + str(t1_start) + ", t2: " + str(t2_start) + ") to (t1: " + str(t1_end) + ", t2: " + str(t2_end) + ")\n")
    for i in range(0, top):
      myfile.write("t1: " + str(best[i][0]) + " t2: " + str(best[i][1]) + "[" + str(best[i][2]) + "]\n")
    myfile.write(">>> Top configs [worst avg] for (t1: " + str(t1_start) + ", t2: " + str(t2_start) + ") to (t1: " + str(t1_end) + ", t2: " + str(t2_end) + ")\n")
    for i in range(0, top):
      myfile.write("t1: " + str(worst[i][0]) + " t2: " + str(worst[i][1]) + "[" + str(worst[i][2]) + "]\n")
    myfile.write(">>> Top configs [total avg] for (t1: " + str(t1_start) + ", t2: " + str(t2_start) + ") to (t1: " + str(t1_end) + ", t2: " + str(t2_end) + ")\n")
    for i in range(0, top):
      myfile.write("t1: " + str(total[i][0]) + " t2: " + str(total[i][1]) + "[" + str(total[i][2]) + "]\n")


def parse_results(t1, t2, t):
  f = open('report.nightly.raw.out', 'r')

  while (get_next(f)):
    continue

  os.system("mv report.nightly.html results/report" + str(t1) + "_" + str(t2) + "_" + str(t) + ".html")
  os.system("mv report.nightly.raw.out results/report" + str(t1) + "_" + str(t2) + "_" + str(t) + ".raw.out")
  f.close()

def remove_output():
  os.system("find . -name *.out-jit | xargs -n 1 rm")
  os.system("find . -name *.out-jit-origin | xargs -n 1 rm")

def output_data(t1, t2, t):
  failed = []
  better = []
  worse  = []

  better_avg = 0.0
  worse_avg  = 0.0
  total_avg  = 0.0

  for d in data:
    if (not d[1]):
      failed.append(d)
    else:
      if (d[3] >= d[4]):
        better.append(d)
        better_avg += float(d[3] - d[4])
      else:
        worse.append(d)
        worse_avg  += float(d[3] - d[4])
      total_avg += float(d[3] - d[4])

  better_avg = better_avg / len(better)
  worse_avg  = worse_avg / len(worse)
  total_avg  = total_avg / len(data)

  worse.sort(key=lambda tup: tup[3] - tup[4])
  better.sort(key=lambda tup: tup[4] - tup[3])

  file_name = "results/data_" + str(t1) + "_" + str(t2) + "_" + str(t) + ".txt"
  with open(file_name, "a") as myfile:
    myfile.write("Better: " + str(better_avg) + "[" + str(len(better)) + "]\n")
    myfile.write("Worse:  " + str(worse_avg)  + "[" + str(len(worse))  + "]\n")
    myfile.write("Total:  " + str(total_avg)  + "[" + str(len(data))   + "]\n")

    myfile.write("*** Failed tests ***\n")
    for fail in failed:
      myfile.write(fail[0] + "\n")

    myfile.write("*** Better tests ***\n")
    for b in better:
      myfile.write(b[0] + " [" + str(b[2]) + ", " + str(b[3]) + ", " + str(b[4]) + "]\n")

    myfile.write("*** Worse tests ***\n")
    for w in worse:
      myfile.write(w[0] + " [" + str(w[2]) + ", " + str(w[3]) + ", " + str(w[4]) + "]\n")

    best.append((t1, t2, better_avg))
    worst.append((t1, t2, worse_avg))
    total.append((t1, t2, total_avg))

#---------------------------------------------------------------
#>>> ========= '/home/brooks8/LLVM/llvm-build/projects/test-suite/MultiSource/Applications/lua/lua' Program
#---------------------------------------------------------------
#
#TEST-RESULT-nat-time: user       16.3785
#
#TEST-PASS: jit /home/brooks8/LLVM/llvm-build/projects/test-suite/MultiSource/Applications/lua/lua
#TEST-RESULT-jit-time: user       26.6090
#
#TEST-RESULT-jit-origin-time: user       26.6547
#
#TEST-RESULT-jit-comptime:   Total Execution Time: 0.2220 seconds (0.2219 wall clock)
#
#
#TEST-PASS: compile /home/brooks8/LLVM/llvm-build/projects/test-suite/MultiSource/Applications/lua/lua
#TEST-RESULT-compile:   Total Execution Time: 0.0410 seconds (0.0408 wall clock)
#
#TEST-RESULT-compile: 714216 Output/lua.llvm.bc
#

#---------------------------------------------------------------
#>>> ========= '/home/brooks8/LLVM/llvm-build/projects/test-suite/MultiSource/Applications/minisat/minisat' Program
#---------------------------------------------------------------
#
#TEST-RESULT-nat-time: user       4.7203
#
#TEST-FAIL: jit /home/brooks8/LLVM/llvm-build/projects/test-suite/MultiSource/Applications/minisat/minisat
#
#TEST-PASS: compile /home/brooks8/LLVM/llvm-build/projects/test-suite/MultiSource/Applications/minisat/minisat
#TEST-RESULT-compile:   Total Execution Time: 0.0110 seconds (0.0116 wall clock)
#
#TEST-RESULT-compile: 82056 Output/minisat.llvm.bc
#


def get_next(f):
  line = f.readline()
  # if there is nothing on this line, then we are done reading the file
  if (line == ''):
    return False

  match = re.search(r'\'([^&>]+)\'', f.readline())
  name = match.group(1)
  f.readline()
  f.readline()
  nat_time = Decimal(f.readline()[26:])
  f.readline()
  if (f.readline()[:9] == "TEST-PASS"):
    our_time = Decimal(f.readline()[26:])
    f.readline()
    lli_time = Decimal(f.readline()[33:])
    dat = (name, True, nat_time, lli_time, our_time)
    for _ in range(9):
      f.readline()
  else:
    dat = (name, False, nat_time, -1, -1)
    for _ in range(6):
      f.readline()

  data.append(dat)
  return True

if __name__ == "__main__":
  main()
