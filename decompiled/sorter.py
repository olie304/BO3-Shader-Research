"""
    Sorts shaders into smaller directories
"""


import os
from pathlib import Path

for root, dirs, files in os.walk("."):
    path = root.split(os.sep)
    for filename in files:
        if '_' in filename and (filename.endswith('.hlsl') or filename.endswith('.fx') or filename.endswith('.asm')):
            name_path = filename.split('_')
            name_end = (len(name_path) - 1 - name_path[::-1].index('main'))
            #print(root + '\\' + filename + "   -->   " + '.\\' + '\\'.join(name_path[:name_end]) + '\\' + filename)
            Path('.\\' + '\\'.join(name_path[:name_end])).mkdir(parents=True, exist_ok=True)
            os.rename(root + '\\' + filename, '.\\' + '\\'.join(name_path[:name_end]) + '\\' + filename)
