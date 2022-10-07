---
# try also 'default' to start simple
theme: seriph
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
background: https://source.unsplash.com/collection/94734566/1920x1080
# apply any windi css classes to the current slide
class: 'text-center'
# https://sli.dev/custom/highlighters.html
highlighter: shiki
# show line numbers in code blocks
lineNumbers: false
# some information about the slides, markdown enabled
info: |
  ## Slidev Starter Template
  Presentation slides for developers.

  Learn more at [Sli.dev](https://sli.dev)
# persist drawings in exports and build
drawings:
  persist: false
# use UnoCSS
css: unocss
---

# 容器技术的发展

K8S 系列分享第一篇

---

# 目录

|            |                               |
| ---------- | ----------------------------- |
| Chapter 01 | 云计算的起源与发展            |
| Chapter 02 | 虚拟化技术与容器技术的 “博弈” |
| Chapter 03 | 容器编排的 “百花齐放”         |
| Chapter 04 | 了解 K8S 对前端有什么好处     |

---

# 云计算的起源与发展

- Stage 1: 公共计算概念（Utility Computing）的诞生
- Stage 2: 网格计算
- Stage 3: AWS/Google 正式提出云计算

---

## Stage 1

<img src="/img/云计算底层的核心技术依赖.png" class="auto-img" >

<style>
.auto-img{
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  max-width: 100%;
  max-height: 100%;
  cursor: pointer;
}
</style>

---

第一阶段之后主要产生了三个核心依赖的技术：

- 用于管理物理计算资源的操作系统

- 用于把资源分给多人同时使用的虚拟化技术

- 用于远程接入的互联网

---

## Stage 2

<img src="/img/网格计算概念.png" class="auto-img" >

<style>
.auto-img{
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  max-width: 100%;
  max-height: 100%;
  cursor: pointer;
}
</style>

---

阶段二的发展主要带来的影响：

- 计算机的算力的提升
- 分布式计算带来的便利
- 虚拟化技术继续发展

---

## Stage 3

<br>

- 亚马逊 2006 年 3 月推出弹性云服务
- 谷歌 2006 年 8 月提出“云计算” 概念

---

这个时期也是 PC 、互联网的快速发展时期，随着人们上网的需求越来越多，传统的服务器难以承载大型业务，或者想对硬件进行扩容很麻烦，于是越来越多的企业把应用部署到了云服务器，用租用的形式来获取计算机资源。

云计算资源其实就是在物理资源的基础上，通过虚拟化平台实现计算机资源更好地管理（CPU、内存、硬盘、网络等资源），每个用户租用的资源都是相互隔离的。

而且，这种资源是可以按量收费的，太多了可以减少资源，太少了可以增加资源，这种就叫 “弹性伸缩” 。

<img src="/img/虚拟机.png" class="auto-img" >

<style>
.auto-img{
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
  width: 200px;
}
</style>

---

# 虚拟化技术与容器技术的 “博弈”

---

# 容器编排的 “百花齐放”

---

# 了解 K8S 对前端有什么好处

---

# 参考

- [云计算到底是谁发明的？](https://m.huxiu.com/article/376454.html?f=member_article)
- [一篇漫画，看懂云计算！](https://mp.weixin.qq.com/s/1_h9J1HTDVFwP_IT1LByRA)

---
