# WBWaitngAni
**1、为表感谢在此列出[原文地址](http://www.jianshu.com/p/4c34b42cf84f)**

**2、这个是我自己封装控件的Git地址[WBWaitngAni](https://github.com/ulovebin/WBWaitngAni)**

**3、动画效果图**

![Waiting.gif](http://upload-images.jianshu.io/upload_images/1728983-a8432f4eb39f21c0.gif?imageMogr2/auto-orient/strip)

**4、打开工程找到类库的文件，可以直接拖到自己工程使用**

![类库文件.png](http://upload-images.jianshu.io/upload_images/1728983-9e03f8044698a270.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

**5、在这里可以看代码实例**

![代码示例.png](http://upload-images.jianshu.io/upload_images/1728983-be83dd0346f865ed.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

**6、代码**
```
- (void)viewDidLoad {
    [super viewDidLoad];
    
    WBWaitingView *waiting=[[WBWaitingView alloc]init];
    waiting.backViewColor=[UIColor blackColor];
    waiting.alpha=0.6;
    waiting.dotColor=[UIColor orangeColor];
    [waiting showInView:self.view];
    
}
```
我们可以通过.backViewColor来设置提示框背景色，通过.dotColor来设置提示符的颜色。使用的话直接调用showInView:即可，参数是要呈现提示窗的视图。
