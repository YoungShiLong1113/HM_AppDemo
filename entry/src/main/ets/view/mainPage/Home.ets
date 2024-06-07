@Entry
@Component
export  struct Home {
  private swiperController = new SwiperController()

  build() {
    Scroll() {
      Column() {
        Row() {
          Text('主页')
            .fontWeight(FontWeight.Bold)
            .fontSize(30)
            .margin({ left: '30vo', top: '40vp' })
        }.width('100%')

        Swiper(this.swiperController) { //TODO 进行图片轮播
          Image($r('app.media.QQ'))

          Image($r('app.media.wechat'))
          Image($r('app.media.weibo'))
        }
        .borderRadius(20)
        .width('90%')
        .autoPlay(true)
        .margin({ top: '40vp' })

        Grid() {
          GridItem() {
            Column() {
              Image($r('app.media.app_icon')).width('25vp')
              Text('我的设备')
            }
            .margin({ left: '5vp', top: '5vp' })
            .height('50vp')
          }

          GridItem() {
            Column() {
              Image($r('app.media.app_icon')).width('25vp')
              Text('历史记录')
            }
            .margin({ left: '5vp', top: '5vp' })
            .height('50vp')
          }

          GridItem() {
            Column() {
              Image($r('app.media.app_icon')).width('25vp')
              Text('消息')
            }
            .margin({ left: '5vp', top: '5vp' })
            .height('50vp')
          }

        }
        .columnsTemplate('1fr,1fr,1fr,1fr,1fr')
        .rowsTemplate('1fr,1fr,1fr,1fr,1fr')
        .width('90%')
        .height('15%')
        .borderRadius(20)
        .backgroundColor(Color.White)


        Row() {
          Text('设备')
            .fontWeight(FontWeight.Bold)
            .fontSize(20)
            .margin({ left: '30vo', top: '40vp' })
        }.width('100%')
      }
      Grid() {
        GridItem() {
          Column() {
            Text('我的设备')
          }
          .margin({ left: '5vp', top: '5vp' })
          .height('50vp')
        }
      }
      .width('100%')
      .height('100%')
      .backgroundColor('#36335f65')
      // .alignItems(HorizontalAlign.Start)




    }
  }
}