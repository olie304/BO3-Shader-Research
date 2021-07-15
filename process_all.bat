for /R %%f in (*.compiled) do ("cmd_Decompiler.exe" -D "%%f" & "cmd_Decompiler.exe" -d "%%f")
