# Script: tong_hop.ps1
# Tac gia: Pham Thi Thu Ha
# Ngay tao: 10/11/2026
Write-Host "Dang tao bao cao..."
"=== BAO CAO SU CO WEBSITE ===" > ./logs/tong_hop.txt
Get-Content ./logs/server.log | Select-String "WARNING" >> ./logs/tong_hop.txt
Get-Content ./logs/server.log | Select-String "ERROR" | Measure-Object >> ./logs/tong_hop.txt

Write-Host "Hoan thanh!"