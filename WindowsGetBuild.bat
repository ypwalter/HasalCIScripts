move "C:\Program Files (x86)\Mozilla Firefox" "C:\Program Files (x86)\Mozilla Firefox Backup"

"C:\Program Files (x86)\GnuWin32\bin\wget" --no-check-certificate -O get_build.py https://raw.githubusercontent.com/Mozilla-TWQA/Hasal/master/tools/get_build.py

pip install treeherder-client==3.0.0
pip install docopt

python get_build.py %Email% %Platform%

"C:\Program Files\7-Zip\7z" x *.zip
move "firefox" "C:\Program Files (x86)\Mozilla Firefox"

