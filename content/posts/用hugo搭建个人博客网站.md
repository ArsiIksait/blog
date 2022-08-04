---
title: "用hugo搭建个人博客网站" #标题
date: 2022-03-19T20:28:00+08:00 #发布时间
tags: [ "hugo","博客","教程" ] #tags
keywords: [ "hugo", "博客","用hugo搭建个人博客网站" ] #关键字
image: "http://drive.233.pink/Picture/29835339_p0.jpg" #封面

draft: false #false代表草稿模式，不会显示在网站里
---

# 用Hugo搭建个人博客网站

## 效果

![最终效果](/posts/pic/hugo_build_own_blog_website.png)

## 下载&安装Hugo
### 下载Hugo
首先我们需要下载Hugo, 去这里下载最新版的Hugo:&nbsp;&nbsp;[[Hugo Github Relase]](https://github.com/gohugoio/hugo/releases)

### 安装Hugo
我下载的版本是：`hugo_extended_0.95.0_Windows-64bit.zip`，解压后会有一个`hugo.exe`和两个证书，把`hugo.exe`找个位置放起来，然后给他加在`Path变量`里面。
![我放到了C:\Program Files\Hugo里面](/posts/pic/hugo_setup_step_1.png)
![添加环境变量Path](/posts/pic/hugo_setup_step_2.png)

现在我们已经安装好了Hugo啦！之后按`WIN+R`键，输入`cmd`后回车，打开CMD，在里面输入命令`hugo version`，如果没有错误，则会显示当前安装的hugo的版本。`(hugo v0.95.0-9F2E76AF+extended windows/amd64 BuildDate=2022-03-16T14:20:19Z VendorInfo=gohugoio)`