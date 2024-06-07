@Entry
@Component
export struct Home {
  private swiperController = new SwiperController()

  build() {
    Scroll() {
      Column({space:'20vp'}) {
        Row() {
          Text('主页')
            .margin({ left: '20vp', top: '20vp' })
            .fontWeight(FontWeight.Bold)
            .fontSize(30)
        }
        .width('100%')

        Swiper(this.swiperController) { //TODO 找四张轮播照片，并修改地址，图片尺寸保持一致
          Image($r("app.media.QQ"))
          Image($r("app.media.wechat"))
          Image($r("app.media.weibo"))
        }
        .autoPlay(true)
        .width('50%')
        //.height('10%')
        //.borderRadius(20)
      }
      .width('100%')
      .height('100%')
      .margin({ top: '40vp' })
      // .alignItems(HorizontalAlign.Start)

      Grid() { //TODO 不显示？？？
        GridItem() {
          Column(){

            Image($r("app.media.app_icon")).width('25vp')
            Text('我的设备')
          }.height('30vp')
          .backgroundColor(Color.Black)
        }
        GridItem() {
          Text('消息')
        }

        GridItem() {
          Text('购物车')
        }
      }
      .columnsTemplate('1fr,1fr,1fr,1fr,1fr')
      .rowsTemplate('1fr,1fr,1fr,1fr,1fr')
      .width('100%')
      .height('30%')
      .backgroundColor(Color.Red)

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#0c334455')

  }
}