$url = "git@github.com:c1138/firstrun.git"
git clone $url copytest
Set-Location ((Split-Path $url -Leaf) -replace ".git","")

$desc = git describe --tags
Write-Host "$desc"

if ($desc.Contains("-")) {
    $version = $desc.Split("-")[0]
    $parts = $version.Split(".")
    $major = [int]$parts[0]
    $minor = [int]$parts[1]
    $patch = [int]$parts[2] + 1
    $newTag = "$major.$minor.$patch"


    git tag -a $newTag -m "Обновляет версию патча"
    git push origin $newTag
} else {
    Write-Host "Без изменений"
}

Set-Location ..
Remove-Item -Recurse -Force ((Split-Path $url -Leaf) -replace ".git","")