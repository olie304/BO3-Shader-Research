"""
    Renames every shader in the folder to be processable by the decompiler/disassembler
"""


import os 

for filename in os.listdir():
    if not filename.endswith('.hlsl') and not filename.endswith('.py') and not filename.endswith('.compiled') and not filename.endswith('.fx'):
        name,ext = filename.split('.')
        ftype = ext.split('_')[0]
        os.rename(filename, name + ext[len(ftype):] + '_' + ftype + '.compiled')
