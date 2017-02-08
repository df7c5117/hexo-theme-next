# NexT 
### modified by df7c5117

> 精于心，简于形

NexT 主旨在于简洁优雅且易于使用，所以首先要尽量确保 NexT 的简洁易用性。

NexT is built for easily use with elegant appearance. First things first, always keep things simple.

<a href="https://df7c5117.github.io" target="_blank">在线预览 Preview</a> | <a href="http://theme-next.iissnan.com" target="_blank">NexT 使用文档</a> 

## 修改简介 Introduction

这个修改的版本移除了侧栏，增加了题图，同时移除一些模块与第三方插件，包括但不限于`canvas-nest`,`fancybox`,`font-awesome`等，力求精简。

## 更新日志 Log

**17-2-8**

* 修改后的搜索界面重新上线。仅支持本地搜索。请在使用本地搜索前使用安装本地搜索插件。

 `$ npm install hexo-generator-search --save` 
 
 `$ npm install hexo-generator-searchdb --save`

 并在hexo目录的 `_config.yml` 文件中加入以下字段：
 
 `search:
  path: search.xml
  field: post
  format: html
  limit: 10000`
  

* 新增了每次刷新更换banner背景图功能。（默认开启）

 在主题目录的 `_config.yml` 文件中修改以下字段：
 
 `#banner
	switch_banner: true
	banner_count: 9`
  
 其中，`banner_count`是你需要更换图片的总数量。默认为9张
 
 之后请在 `主题目录\source\images\banner` 下将你想要更换的jpg格式图片命名为阿拉伯数字，从1开始。
 
 如果不想使用更换图片功能而只想展示单张图片，请把 `switch_banner` 改成 `false` ，并将 `主题目录\source\images\banner`里的 `banner.jpg` 替换为你想要使用的jpg图片。

* 新增了防盗图插件，默认启用。（贡献者：[@CRH380A-2722](https://github.com/CRH380A-2722/jQuery-picopyright)）

 调用方式：为需要保护版权的图片添加id值或者class值.
 
 `<img class="protected" src="./timg.jpg">`

**17-2-5**

* 初代版本，添加banner图片功能，移除第三方模块与侧栏，更改配色。

## 安装 Installation 

请将本repo下的文件覆盖`hexo/themes/next`文件夹下的同名文件。

Please overwrite the file under this repo with `hexo/themes/next` folder under the same name file.

[![hexo-image]][hexo-url]
[![bower-image]][bower-url]
[![jquery-image]][jquery-url]
[![velocity-image]][velocity-url]

[hexo-image]: http://img.shields.io/badge/Hexo-2.4+-2BAF2B.svg?style=flat-square
[hexo-url]: http://hexo.io
[bower-image]: http://img.shields.io/badge/Bower-*-2BAF2B.svg?style=flat-square
[bower-url]: http://bower.io
[jquery-image]: https://img.shields.io/badge/jquery-2.1-2BAF2B.svg?style=flat-square
[jquery-url]: http://jquery.com/
[velocity-image]: https://img.shields.io/badge/Velocity-1.2-2BAF2B.svg?style=flat-square
[velocity-url]: http://julian.com/research/velocity/
