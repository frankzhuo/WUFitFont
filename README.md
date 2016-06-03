# WUFitFont
根据不同尺寸的iPhone对显示的字体大小进行适配

如果需要iPhone6P显示的字体要比其他iPhone大的话
则可以通过Category为UIFont增加一个方法 systemFontWithSize: ,每次在用代码设置字体的时候，使用该方法设置字体即可

+ (UIFont *)systemFontWithSize:(CGFloat)fontSize {
    if (IS_IPHONE_6P) {
        return [UIFont systemFontOfSize:fontSize*1.5];
    }else {
        return [UIFont systemFontOfSize:fontSize];
    }
}

当控件是在xib 或storyBoard中的时候，则需要通过使该控件继承自定义类来适配字体大小
- (void)awakeFromNib {
    
    [self setFont:[UIFont systemFontWithSize:self.font.pointSize]];
}
UILable,UIButton,UITextField,UITextView都可以展示文字，所以如果想在xib或storyBoard中进行字体大小适配,分别继承项目中的WULabel,WUButton,WUTextField,WUTextView即可。
![image](https://github.com/wqhiOS/WUFitFont/raw/master/WUFitFont.png)
