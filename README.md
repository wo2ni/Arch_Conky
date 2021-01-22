# 基于Arch Linux的conky,系统资源监视

### 自己的Conky配置;
[![2021-01-22-01-16-12.png](https://i.postimg.cc/qMWnYDQ9/2021-01-22-01-16-12.png)](https://postimg.cc/HV4V82q2)

### system-monitoring
[![2021-01-22-12-29-06.png](https://i.postimg.cc/wBLk0Ypf/2021-01-22-12-29-06.png)](https://postimg.cc/Ty2m3Shg)

### parrot-monitoring
[![2021-01-22-12-30-28.png](https://i.postimg.cc/QtS1yXnb/2021-01-22-12-30-28.png)](https://postimg.cc/k662VdC6)

## 最新版本的conky配置语法已改变,使用lua;  
为了激进,此页面将提供所需的所有工具;

## 安装教程;
### Arch Linux  
- [→必须先安装AUR中的conky-lua-nv](https://aur.archlinux.org/packages/conky-lua-nv/)
```
pacman -Syy git ksh lsof   #必须的依赖;
git clone https://github.com/wo2ni/Arch_Conky.git
cd Arch_Conky && ./install.sh
```

### Debian/Ubuntu
```
apt-get update && apt-get install git conky conky-all
git clone https://github.com/wo2ni/Arch_Conky.git
cd Arch_Conky && ./install.sh
```

### 字体的问题;
#### 若为正确安装字体,conky将不能正常运行,  
最简单那的方法,下载并安装本人提供的字体包;
- [→ 本人的子字体包,单击下载](https://github.com/wo2ni/Arch_Conky/releases/download/V0.1/fonts.tar.bz2)

- [→ Google noto字体,大陆需代理](https://github.com/wo2ni/Arch_Conky/releases/download/V0.1/fonts.tar.bz2)
### 旧版conky配置格式转换
```
git clone https://github.com/wo2ni/Arch_Conky.git
chmod 700 convert.lua && cd Arch_Conky 
./convert.lua 旧版配置文件 新版配置文件
```

#### 须知这些炫酷的配置经过自己几个月的努力;  
你可以随意修改在发布,但请注明我的GitHub地址;  
请不要将这些用于任何商业用途,以及营销手段;


- [→ 本人永久的Github地址](https://github.com/wo2ni)
- [→ Lua教程网址](http://www.runoob.com/lua/)
