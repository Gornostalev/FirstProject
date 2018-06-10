$NameCS = (Get-ChildItem . -Include *.cs -Recurse | Sort-Object LastWriteTime -Descending | Select-Object Name -First 1 -exp fullname)  # переменной $NameCS присваивается путь к последнему изменённому файлу .cs

C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe $NameCS  # компиляция

$ProgramExecute = Get-ChildItem -Include *.exe -Recurse | Sort-Object LastWriteTime -Descending | Select-Object Name -First 1 -exp fullname     # переменная $ProgramExecute получает путь к недавно созданному .exe файлу 
 
Invoke-Item $ProgramExecute # запуск последней скомпилированной программы 
