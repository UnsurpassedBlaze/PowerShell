Import-Module ActiveDirectory
$PCs = Import-Csv computernames.csv -Header Name
Foreach ( $PC in $PCs )
{
    $daPC = Get-ADComputer $PC.Name
    Disable-ADAccount -Identity $daPC
    Move-ADObject -Identity $daPC -TargetPath 'OU=Workstations,DC=Com,DC=Viamonstra,DC=Corp'
    Write-Host $PC.Name "has been disabled and moved."
}
