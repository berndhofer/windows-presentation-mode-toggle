Add-Type -AssemblyName System.Windows.Forms

# Create the main form
$form = New-Object System.Windows.Forms.Form
$form.Text = 'Presentation Mode Toggler'
$form.Size = New-Object System.Drawing.Size(300,150)
$form.StartPosition = 'CenterScreen'

# Function to detect and toggle the Presentation Mode
function Toggle-PresentationMode {
    $presentationMode = Get-Process | Where-Object { $_.Name -eq "PresentationSettings" }

    if (-not $presentationMode) {
        # If PresentationSettings process is not running, turn on Presentation Mode
        Start-Process PresentationSettings -ArgumentList "/start"
        $global:button.Text = "Stop Presentation Mode"
    } else {
        # If PresentationSettings process is running, turn off Presentation Mode
        Start-Process PresentationSettings -ArgumentList "/stop"
        $global:button.Text = "Start Presentation Mode"
    }
}

# Check initial state of Presentation Mode
$presentationModeInitial = Get-Process | Where-Object { $_.Name -eq "PresentationSettings" }
if (-not $presentationModeInitial) {
    $buttonText = "Start Presentation Mode"
} else {
    $buttonText = "Stop Presentation Mode"
}

# Create a button
$global:button = New-Object System.Windows.Forms.Button
$global:button.Location = New-Object System.Drawing.Point(50,40)
$global:button.Size = New-Object System.Drawing.Size(200,40)
$global:button.Text = $buttonText
$global:button.Add_Click({
    Toggle-PresentationMode
})

# Add the button to the main form
$form.Controls.Add($global:button)

# Close the PowerShell process when the form is closed
$form.Add_FormClosed({
    [System.Environment]::Exit(0)
})

# Show the main form
$form.ShowDialog()
