$NameCS = Get-ChildItem . -Include *.cs -Recurse | # переменной $NameCS присваивается путь к последнему изменённому файлу .cs

Sort-Object LastWriteTime -Descending | Select-Object Name -First 1 -exp fullname 

C:\Windows\Microsoft.NET\Framework64\v3.5\csc.exe $NameCS  # компиляция

$ProgramExecute = Get-ChildItem -Include *.exe -Recurse | Sort-Object LastWriteTime -Descending | Select-Object Name -First 1 -exp fullname     # переменная $ProgramExecute получает путь к недавно созданному .exe файлу 
 
Invoke-Item $ProgramExecute # запуск последнейскомпилированной программы 
