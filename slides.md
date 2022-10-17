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

<img src="/img/timeline01.png" class="auto-img" >

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

第一阶段算是计算机的发展，但也同时也为日后的云计算出现作了铺垫：

- 用于管理物理计算资源的操作系统

- 用于把资源分给多人同时使用的 “虚拟化技术” 概念产生

- 用于远程接入的互联网

---

## Stage 2

<img src="/img/timeline02.png" class="auto-img" >

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
- 虚拟化技术继续发展 （Hypervisor）

<img src="https://assets-global.website-files.com/60494527fea68422687bfcf1/60620c3038c7591706fb8381_what-is-a-hypervisor-1024x695.png" class="auto-img" >

<style>
.auto-img{
  position: absolute;
  width: 40%;
  right: 10%;
  top: 50%;
  transform: translateY(-50%);
}
</style>
---

## Stage 3

<br>

- 亚马逊 2006 年 3 月推出弹性云服务
- 谷歌 2006 年 8 月提出“云计算” 概念

<img src="https://www.nfx.com/_next/image?url=https%3A%2F%2Fcontent.nfx.com%2Fwp-content%2Fuploads%2F2021%2F07%2FOG-V3-COMPRESSED.jpg&w=640&q=75" class="auto-img" >

<style>
.auto-img{
  position: absolute;
  width: 40%;
  right: 10%;
}
</style>
---

这个时期也是 PC 、互联网的快速发展时期，随着人们上网的需求越来越多，传统的服务器难以承载大型业务，或者想对硬件进行扩容很麻烦。

于是越来越多的企业把应用部署到了云服务器，用租用的形式来获取计算机资源。

云计算资源其实就是在物理资源的基础上，通过虚拟化平台实现计算机资源更好地管理（CPU、内存、硬盘、网络等资源），每个用户租用的资源都是相互隔离的。

---

而且，这种资源是可以按量收费的，太多了可以减少资源，太少了可以增加资源，这种就是大家常听到的 “弹性伸缩” ，这些都要得益于前面提到的虚拟化技术的发展。

<img src="/img/vm.png" class="auto-img" >

<style>
.auto-img{
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
  width: 30%;
}
</style>

---

## So，虚拟化技术到底是什么？

虚拟化技术是一种**将计算机物理资源进行抽象、转换为虚拟的计算机资源提供给程序使用的技术**。主要是有**硬件虚拟化**和**软件虚拟化**两大类别。

硬件虚拟化：举个例子来说，某个平台的 CPU，能够将另外一个平台的指令集转换为自身的指令集执行，并给程序完全运行在那个平台上的感觉。

软件虚拟化：应用程序向操作系统或者物理硬件发出的指令不是当前硬件平台所支持的指令，这个实现虚拟化的软件也会将之转换为当前硬件平台所能识别的。

---

## 虚拟化技术带来了什么优势？

<br>

- 跨平台。虚拟化技术在操作系统层面通过适配不同硬件平台对外提供统一接口，来达到跨平台的功能。
- 提高计算机资源的利用率。有了虚拟化，可以很好的提高资源利用率，把空闲的资源给其他程序，也不会出现资源竞争的情况。
- 让云计算行业蓬勃发展。

---

云计算的和虚拟化技术的发展是虽然是相辅相成的，但虚拟化技术并不是云计算底层唯一的依赖，因为容器技术出现了，这感觉就像单车变摩托！

<img v-if="$slidev.nav.currentPage === 13" src="https://nimg.ws.126.net/?url=http%3A%2F%2Fdingyue.ws.126.net%2F2022%2F0613%2F9dfd2829j00rdf103000vd000dw00csp.jpg&thumbnail=660x2147483647&quality=80&type=jpg" class="auto-img" v-motion :initial="{ x: -1000 }"
  :enter="{ x: 0 }">

<style>

.auto-img {
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
  width: 30%;
}

img {
  flex: 1;
}
</style>

---

# 虚拟化技术与容器技术的 “博弈”

<br>

2013 年，以 Cloud Foundry 为代表的开源 PaaS 项目进入市场，开启了 PaaS 化时代 （AWS 、OpenStack 之前是 IaaS 平台），而 “容器” 概念最先在此出现。

> 以一个应用程序为例，应用程序部署可能需要数据库、中间件、Nginx、网络、内存、CPU 等软硬件资源，而 PaaS 平台就是提供这些的，应用就像被 “托管” 在 PaaS 平台上。

Cloud Foundry 在虚拟机上部署之后，可能需要启动来自不同用户的应用，所以它调用了 Linux 内核里面的 Cgroups 和 Namespace 机制来为每个应用创建隔离环境。

这种像沙盒一样的机制就叫容器。

---

## Docker 的出现开启了 “CaaS” 的时代

Cloud Foundry 这类 PaaS 项目虽然给应用提供了 “托管” 的能力，但是要把本地的配置和云端的配置同步还是比较麻烦。

于是一个叫 dotCloud 的公司在同年推出了一款叫 “Docker” 的产品，顿时火爆了整个世界！

它与 PaaS 平台的底层依赖是一样的，也是 Cgroups 和 Namespace 机制 来创建隔离环境，但是提出了别人想不到的 “镜像” 概念，解决了应用环境依赖的问题。

---

## 应用部署的发展过程

<br>

<img src="https://d33wubrfki0l68.cloudfront.net/26a177ede4d7b032362289c6fccd448fc4a91174/eb693/images/docs/container_evolution.svg" class="auto-img" >

<style>
.auto-img{
  position: absolute;
  left: 50%;
  top: 30%;
  transform: translateX(-50%);
  width: 80%;
}
</style>
---

## Docker 架构

<img src="/img/docker_architecture.png" class="auto-img" >

<style>
.auto-img{
  position: absolute;
  left: 50%;
  top: 20%;
  transform: translateX(-50%);
  width: 500px;
}
</style>

---

## 容器实现的原理

从 Docker 架构图中我们可以看到，容器的实现，它是依赖 Linux 内核中的 Cgroups 、Namespace 、Union FS 等技术的。

Namespace 的出现主要实现容器隔离，比如容器内某个进程 ID 是 1，而宿主机可能是 30828。

<div class="img-container">
  <img src="/img/namespace01.png" class="auto-img" >
  <img src="/img/namespace02.png" class="auto-img" >
</div>

<style>
.img-container {
  display: flex;
}

img {
  width: 50%;
}
</style>
---

容器虽然实现了隔离，但是对于操作系统来说无非就是一个进程罢了，而进程就一定会存在资源竞争的情况，如果不加限制的话，可以把系统资源吃光光。

Cgroups 就是解决这个问题的，它可以为每个容器的计算机资源进行控制。比如以下命令可以限制 cpu 资源：

```bash
$ docker run -it --cpu-period=100000 --cpu-quota=20000 ubuntu /bin/bash
```
<br>
<br>
<br>
除此之外，UniFS 也是 Docker 的核心技术之一。
---

UniFS 则是提供了一个分层式的文件系统，它就是实现 Docker 镜像功能的一个核心技术，因为应用依赖的每个环境都可以通过这个 “层” 去写入，与应用打包捆绑在一起，有了它之后根本不需要操心本地环境与云端环境的同步问题了。

你可能再也听不到：我电脑上是好的啊，怎么在这就不行了呢？
<img src="https://pic2.zhimg.com/v2-c7142b9919676f3e557705b79d3f75bb_1440w.jpg?source=172ae18b" class="auto-img" >

<style>
.auto-img{
  position: absolute;
  left: 50%;
  bottom: 10%;
  transform: translateX(-50%);
  width: 500px;
}
</style>
---

# 容器编排的 “百花齐放”

2013-2014 年这个时期可谓是群雄并起，但随着业务系统的扩大，部署的容器也越来越多，它们之间的创建、删除、相互通信也越来越难维护，对自动化管理容器的需求越来越大，于是就出现了很多容器编排的产品。

> 容器编排：容器编排是指自动化容器的部署、管理、扩展和联网。 容器编排可以为需要部署和管理成百上千个 Linux® 容器和主机的企业提供便利。

当时最火的就是 Fig （Compose 前身，后被 Docker 收购）、Docker Swarm 这些产品。

---

以 Fig 为例，如果要同时管理一个数据库容器、负载均衡容器、应用容器，则只需要将三个容器定义在一个配置文件中，可以很方便的去管理容器。再配合 Swarm 集群管理的能力，Docker 彻底火爆了！

> Swarm 的最大亮点，则是它完全使用 Docker 项目原本的容器管理 API 来完成集群管理。

但也就在同年，Google 发布了一款重量级项目，它叫 Kubernetes，它的出现又一次改变了市场的格局，同时把云原生这个概念带火了起来。

> 云原生(Clou Native)：云原生是在云计算环境中构建、部署和管理现代应用程序的**软件方法**。如果你对定义不清晰，没关系，一般应用的架构一开始就考虑上云，并底层使用 k8s + Docker 的云原生堆栈，使用了 DevOps 来管理应用，基本上就是说的云原生。

炒概念嘛，懂的都懂！

---

## K8S 是如何站稳脚跟的？

Docker 随着 Swarm、Compose 等技术的发布，Docker 已成为事实上商业化产品，而在开源上甚至保持着绝对的权威和发言权，这下就把很多 “玩家” 惹毛了！

Google 在 Docker 开源没多久后也开源了内部使用多年的 Linux 容器：Imctfy。但是 Docker 还是太火了，于是 Google 想要谋求合作，共同搞一个容器运行时（Container Runtime）作为 Docker 项目的依赖。

但是，Docker 拒绝合作！（年轻气盛中）

随后，Docker 发布了一个容器运行时库 Libcontainer（后改名为 RunC），这个库发布是比较仓促的，主要是为了战略性（我不用合作也能搞出来），结果被社区打脸（shit code）。

这下彻底把大家搞毛了，容器领域决定对 Docker 下手了。

---

## OCI 规范的诞生

Docker 惹怒大家后，它们迫不得已和 Google、CoreOS、RedHat 等公司合作搞了一套容器和镜像的标准和规范，叫 OCI （Open Container Initiative），这意味着想搞容器平台底层的依赖可以不用是 Docker 了，可以是任何遵循 OCI 规范的容器。

OCI 成立后，Docker 也没心思花时间搞技术推进，让 OCI 组织效率持续低下，但就这么完事了么 ？

---

## CNCF 基金会成立

Google、CoreOS、RedHat 这些 "玩家" 心里肯定是不舒服的，想着在 Pass 平台发力，它们可是在这个领域可比 Docker 有话语权了，于是共同成立了一个 CNCF（Cloud Native Computing Foundation） 基金会。

> CNCF 基金会主要以 Kubernetes 项目为基础，建立一个由开源基础设施领域厂商主导的、按照独立基金会方式运营的平台级社区，来对抗以 Docker 公司为核心的容器商业生态。

而 Docker 在平台层只有 Swarm ，这下被 “吊打” 了，当然除了 Swarm ，K8S 还有一个竞争对手是 Mesos（擅长超大规模集群调度管理），但后者在编排领域创新能力不够，所以基本上不是 Google 的对手。

RedHat 也没闲着，当时 K8S 团队规模很小，工程能力有限，而这恰巧是 RedHat 的强处，RedHat 是世界上为数不多的、能真正理解开源社区运作和项目研发真谛的合作伙伴。

---

## 新的时代

这下 Docker 玩不下去了，随后有两个事情：

- 2017 年 10 月，Docker 公司出人意料地宣布，将在自己的主打产品 Docker 企业版中内置 Kubernetes 项目
- 2018 年 3 月 28 日，Docker 的 CTO 宣布辞职。

K8S 开始称王！

---

# 参考

- [鲜枣课堂：云计算到底是谁发明的？](https://m.huxiu.com/article/376454.html?f=member_article)
- [鲜枣课堂：一篇漫画，看懂云计算！](https://mp.weixin.qq.com/s/1_h9J1HTDVFwP_IT1LByRA)
- [RedHat：了解虚拟化](https://www.redhat.com/zh/topics/virtualization)
- [维基百科：虚拟化](https://zh.m.wikipedia.org/zh-cn/%E8%99%9B%E6%93%AC%E5%8C%96)
- [极客时间：深入 Kubernetes](https://time.geekbang.org/column/intro/100015201?tab=catalog)
