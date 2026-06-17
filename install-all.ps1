# ai-career-toolkit 安装脚本
# 用法：powershell -ExecutionPolicy Bypass .\install-all.ps1

$ErrorActionPreference = "Stop"
$script = "$env:USERPROFILE\.codex\skills\.system\skill-installer\scripts\install-skill-from-github.py"
$repo = "June-PJ/ai-career-toolkit"

$skills = @(
    "interview-griller",
    "job-hunter",
    "resume-builder"
)

Write-Host "正在安装 ai-career-toolkit skills..." -ForegroundColor Cyan
foreach ($skill in $skills) {
    Write-Host "  -> $skill" -ForegroundColor Yellow
    python $script --repo $repo --path $skill
}

Write-Host "安装完成！请重启 Codex 生效" -ForegroundColor Green
