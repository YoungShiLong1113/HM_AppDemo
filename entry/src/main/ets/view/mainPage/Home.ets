@Entry
@Component
export struct Home {
  build() {

    Column() {
      Text('主页')
        .margin({left:'20vp',top:'20vp'})
        .fontWeight(FontWeight.Bold)
        .fontSize(30)
    }
    .width('100%')
    .height('100%')
    .alignItems(HorizontalAlign.Start)
  }
}