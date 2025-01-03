@echo off

start cmd /c pip install pyautogui -i https://pypi.douban.com/simple
choice /t 3 /d y
start cmd /c pip install PyQt5 -i https://pypi.douban.com/simple
choice /t 3 /d y
start cmd /c pip install numpy -i https://pypi.douban.com/simple
choice /t 3 /d y
start cmd /c pip install torch -i https://pypi.douban.com/simple
choice /t 3 /d y
start cmd /c pip install opencv-python -i https://pypi.douban.com/simple
choice /t 3 /d y
start cmd /c pip install git-python -i https://pypi.douban.com/simple
choice /t 3 /d y
start cmd /c pip install pillow