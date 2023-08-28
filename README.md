# Windows Presentation Mode Toggle

A simple GUI tool to toggle the Windows Presentation Mode. Created by Bernd Hofer.

## Prerequisites

- **PowerShell**: Ensure you have PowerShell installed.
- **PS2EXE**: Required to compile the PowerShell script to an executable. You can find it [here](https://github.com/MScholtes/PS2EXE).
- **Icon**: The icon used in this project was authored by [capriccola on Iconfinder](https://www.iconfinder.com/capriccola). Please ensure you have the right to use the icon in your projects.

## How to Compile

1. **Clone the Repository**:
   
   ```bash
   git clone https://github.com/berndhofer/windows-presentation-mode-toggle.git
   ```

2. **Compile with PS2EXE**:
   
   Navigate to the directory containing the `presentation.ps1` script. Use the following command to compile:

   ```powershell
   ps2exe .\presentation.ps1 .\presentation.exe -noConsole -icon "presentation.ico"
   ```

## License

This project is licensed under the MIT License. Please see the included LICENSE file for more information.

## Acknowledgments

- Icon used in the project is credited to [capriccola on Iconfinder](https://www.iconfinder.com/capriccola).
- Compilation uses [PS2EXE](https://github.com/MScholtes/PS2EXE).
