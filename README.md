# WatchKitDemo
WatchKitDemo--基于WatchKit框架，用Swift语言写的一个猜数游戏的Demo
现在Apple尚不允许开发者创建原生Watch app，目前你可以构建的三种Apple Watch 
用户体验分别是WatchKit app，Glance和可操作式通知（actionable notification）
首先，Watch app不是独立的应用，也就是说在用户iPhone上运行的配对App必不可少，
我们要构建的Watch app只是iPhone app的扩展，Watch app的安装和管理由iPhone app负责。
  另外，iPhone app与Watch app可以相互沟通。
![cocimg](http://cc.cocimg.com/api/uploads/20150202/1422846308960070.jpg)

Apple Watch有38mm和42mm两种屏幕尺寸，但不必分别设计用户界面，Xcode会自动调整布局，适应屏幕尺寸。不过这里用的不是Auto Layout，而是WatchKit独有的布局系统。
![image](https://github.com/spring0924/WatchKitDemo/raw/master/WatchKitDemo.gif)


[我的博客](http://www.cnblogs.com/spring286)  
