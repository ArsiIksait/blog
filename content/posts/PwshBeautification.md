---
title: "PowerShell美化" #标题
date: 2022-03-14T21:18:38+08:00 #发布时间
tags: [ "powershell","美化","教程" ] #tags
keywords: [ "powershell", "美化" ] #关键字
image: "http://drive.233.pink/Picture/1000chan_collection_006_1920x1200.jpg" #封面

draft: false #false代表草稿模式，不会显示在网站里
---

# powershell美化

## 效果

![最终效果](/posts/pic/WindowsTerminal_yHb2JTB5ix.png)



## 终端

### WindowsTerminal & PowerShell

首先下载 Windows Terminal 和 [PowerShell](https://docs.microsoft.com/zh-cn/powershell/scripting/install/installing-powershell-on-windows)最新版本

#### windows terminal美化

编辑profiles->defaults节点

``` json
"backgroundImage": "test.png", //背景图片路径
"backgroundImageOpacity": 0.15, //背景透明度
"font": {
    "face": "Cascadia Code PL", //字体
    "size": 12
}
```

#### pwsh配置

输入`$PROFILE`查看pwsh的配置文件路径  
编辑`$PROFILE` 添加以下代码启用历史记录和智能提示高亮

``` Powershell
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -ShowToolTips
```

#### pwsh快捷键

`Ctrl+空格` 显示候选命令
![效果](/posts/pic/WindowsTerminal_epoxvJdX7d.png)

### scoop

和winget差不多的包管理工具  

``` PowerShell
#到pwsh里输入以下代码安装scoop
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
```

编辑`$PROFILE` 添加以下代码每次自动启动Starship  

`Invoke-Expression (&starship init powershell)`


### Starship
安装: `scoop install starship`  
自定义命令提示符  
输入`Starship config`打开配置文件

``` toml
#starship配置
format = """$username$hostname$directory$git_branch$time$status
$character"""
command_timeout = 100
add_newline = true

[username]
style_user = "blue bold"
style_root = "red bold"
format = "[$user]($style) "
disabled = false
show_always = true

[hostname]
format =  "@ [$hostname](bold green) "
disabled = false
ssh_only = false

[directory]
truncation_length = 1024
truncate_to_repo = false
style = "yellow bold"
format = "in [$path]($style) "

[git_branch]
style = "cyan"
symbol = ""
format = "on git:[$symbol$branch]($style) "

[status]
format = "$symbol[$status]($style) "
disabled = false
style = "red"
symbol = "C:"

[time]
disabled = false
format = '[\[$time\]]($style) '
time_format = "%T"
utc_time_offset = "+8"
style = "white"

[character]
success_symbol = "[>](bold green)"
error_symbol = "[>](bold red)"
```

![效果](/posts/pic/WindowsTerminal_eRMTPOMGij.png)

## 一些工具

### gsudo
安装: `scoop install gsudo`  
和linux的sudo一样可以申请管理员权限  
再也不用担心申请管理员权限要重新打开终端啦  

### busybox
安装: `scoop install busybox`  
一个集成了一百多个最常用linux命令和工具  
比如可以在cmd里使用ls等命令  

### vim
安装: `scoop install vim`  
可以在powershell或者cmd里使用vim  
"启动速度快"
