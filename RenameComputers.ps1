$Computers = import-csv .\RenameComputers.csv

foreach ($Computer in $Computers){
    Rename-Computer -NewName $Computer.NewName -ComputerName $Computer.OldName
}