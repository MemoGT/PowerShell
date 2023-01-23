function Read-MultiLineInputBoxDialog([string]$Message, [string]$WindowTitle, [string]$DefaultText) {
    Add-Type -AssemblyName System.Drawing
    Add-Type -AssemblyName System.Windows.Forms
    $label = New-Object System.Windows.Forms.Label
    $label.Location = New-Object System.Drawing.Size(10,10)
    $label.Size = New-Object System.Drawing.Size(280,20)
    $label.AutoSize = $true
    $label.Text = $Message
    $textBox = New-Object System.Windows.Forms.TextBox
    $textBox.Location = New-Object System.Drawing.Size(10,40)
    $textBox.Size = New-Object System.Drawing.Size(280,200)
    $textBox.AcceptsReturn = $true
    $textBox.AcceptsTab = $false
    $textBox.Multiline = $true
    $textBox.ScrollBars = 'Both'
    $textBox.Text = $DefaultText
    $okButton = New-Object System.Windows.Forms.Button
    $okButton.Location = New-Object System.Drawing.Size(25,250)
    $okButton.Size = New-Object System.Drawing.Size(75,25)
    $okButton.Text = "OK"
    $okButton.Add_Click({ $form.Tag = $textBox.Text; $form.Close() })
    $cancelButton = New-Object System.Windows.Forms.Button
    $cancelButton.Location = New-Object System.Drawing.Size(120,250)
    $cancelButton.Size = New-Object System.Drawing.Size(75,25)
    $cancelButton.Text = "Cancel"
    $cancelButton.Add_Click({ $form.Tag = $null; $form.Close() })
    $form = New-Object System.Windows.Forms.Form
    $form.Text = $WindowTitle
    $form.Size = New-Object System.Drawing.Size(310,320)
    $form.FormBorderStyle = 'FixedSingle'
    $form.StartPosition = "CenterScreen"
    $form.AutoSizeMode = 'GrowAndShrink'
    $form.Topmost = $True
    $form.AcceptButton = $okButton
    $form.CancelButton = $cancelButton
    $form.ShowInTaskbar = $true
    $form.Controls.Add($label)
    $form.Controls.Add($textBox)
    $form.Controls.Add($okButton)
    $form.Controls.Add($cancelButton)
    $form.Add_Shown({$form.Activate()})
    $form.ShowDialog() > $null
    return $form.Tag
}
Clear-Host
    $serverlist = (Read-MultiLineInputBoxDialog -Message "Enter the list of servers" -WindowTitle "Check python Installed" -DefaultText $path).Trim()
    $servers = $serverlist.Split([Environment]::NewLine, [StringSplitOptions]::RemoveEmptyEntries)
    $i = 0
    $Object= @()
    $Obj = @()
    $total = $servers.length
Foreach ($server in $servers){
    $i++
    Write-Progress -Activity "Running $i/$total" -status $server -percentComplete ($i / ($total)*100)
    # Get the list of installed programs
    #$programs = Get-WmiObject -Class Win32_Product -ComputerName $server | Select-Object Name, Version| Sort-Object Name 
    #programs | OGV -Title "Programs inventory of $server" 
    $programs = Get-WmiObject -Class Win32_Product | Where-Object {$_.Name -eq "Python"}
    if ($program) {
        Write-Host "Python is installed."
    } else {
        Write-Host "Python is not installed."
    }
    ForEach ($program in $programs){
        $Object = New-Object -TypeName PSObject
        $Object | Add-Member Noteproperty "Server" -Value $Server
        $Object | Add-Member Noteproperty "Program Name"  -Value $programs
        $Obj+=$Object
    }
}
$Obj | OGV -Title "Python Installed"