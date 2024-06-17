# Step 1: 定义当前日期的变量
$currentDate = Get-Date -Format "yyyy-MM-dd"

# 输出当前日期变量以供检查
Write-Output "当前日期是: $currentDate"

# Step 2: 使用 echo 命令生成当前日期的文件
# 在 PowerShell 中直接使用 echo 命令创建文件
$cmdCommand = "echo This is a file created on $currentDate > $currentDate.txt"

# 执行 CMD 命令
Invoke-Expression $cmdCommand

# 验证文件是否创建成功并输出结果
if (Test-Path -Path "$currentDate.txt") {
    Write-Output "文件 $currentDate.txt 已成功创建。"
} else {
    Write-Output "文件 $currentDate.txt 创建失败。"
}
