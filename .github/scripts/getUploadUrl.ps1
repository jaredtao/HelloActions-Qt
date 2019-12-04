function Usage {
    Write-Host ("Usage: getUploadUrl.ps1 githubUrl uploadUrl ref")
    Write-Host ("Example: getUploadUrl.ps1 jaredtao/HelloActions-Qt '' refs/tags/0.2.0")
}
function Main {
    param([string]$githubUrl, [string]$upUrl, [string]$ref)

    if ($upUrl.Length -gt 0) {
        echo "::set-env name=uploadUrl::$upUrl"
        return
    } 
    if (!$ref.StartsWith('refs/tags/')){
        Write-Error 'ref is not tag'
    }
    [string]$tag = $ref.Substring($ref.LastIndexOf('/') + 1)
    [string]$url = 'https://api.github.com/repos/' + $githubUrl + '/releases/tags/' + $tag
    $response = Invoke-RestMethod -Uri $url -Method Get
    [string]$latestUpUrl = $response.upload_url
    Write-Host 'latestUpUrl:'$latestUpUrl
    echo "::set-env name=uploadUrl::$latestUpUrl"
    Write-Host 'env uploadUrl:'$env:uploadUrl
}
[string]$githubUrl=""
[string]$upUrl=""
[string]$ref=""
if ( $args.Count -ne 3) {
    Usage
    return 
}
$githubUrl = $args[0]
$upUrl = $args[1]
$ref = $args[2]

#调用主函数
Main $githubUrl $upUrl $ref







# $url = ${env:upUrl}
# echo "::set-env name=uploadUrl::$url"
# Write-Host 'uploadUrl:'${env:uploadUrl}