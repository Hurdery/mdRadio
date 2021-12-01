# md_radio

一款可以实现单选自定义radio效果的小组件

---
highlight: androidstudio
---

## 逃课椅子拆不，收米烤的：

![mdRadio.gif](https://p3-juejin.byteimg.com/tos-cn-i-k3u1fbpfcp/71550498632341cebb010728de69d71f~tplv-k3u1fbpfcp-watermark.image?)

### 服用方法

```
mdRadio(
  rTitle:"孟德",
  initialIndex: 0,
  selectIndex: this.selectIndex,
  callback: (value){
    setState(() {
      this.selectIndex = value;
    });
  },
),
```
### 主治症状
- 按钮单选
- icon与文字方向、间距
- icon、文字选中高亮效果

### 临床案例
[孟德中医实录](https://github.com/Hurdery/mdRadio)
