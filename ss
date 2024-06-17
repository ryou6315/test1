# Step 1: 使用 CMD 命令定义当前日期的变量
$cmdGetDate = 'cmd.exe /c "set currentDate=%date:~0,4%-%date:~5,2%-%date:~8,2%"'
Invoke-Expression $cmdGetDate

# 获取 CMD 环境变量 currentDate
$currentDate = (cmd.exe /c echo %currentDate%).Trim()

# Step 2: 使用 CMD 命令生成当前日期的文件
$cmdCreateFile = "cmd.exe /c echo. > $currentDate.txt"
Invoke-Expression $cmdCreateFile

# 验证文件是否创建成功并输出结果
if (Test-Path -Path "$currentDate.txt") {
    Write-Output "文件 $currentDate.txt 已成功创建。"
} else {
    Write-Output "文件 $currentDate.txt 创建失败。"
}
