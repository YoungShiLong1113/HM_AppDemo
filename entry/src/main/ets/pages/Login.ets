import router from '@ohos.router'

@Entry
@Component
struct Login {
  build() {
    Column() {
      Image($r("app.media.icon"))
        .width('100vp')
        .height('100vp')
        .margin({ top: 100 })
        .borderRadius(60)

      Text('智慧家居')
        .margin({ top: 50 })
        .fontSize(40)


      Row() {
        Image($r("app.media.user"))
          .width("7%")
        TextInput({ placeholder: "账号" })
          .width('93%')
          .maxLength(18)
      }
      .margin({ left: 20, right: 20, top: 50 })

      Row() {
        Image($r("app.media.password"))
          .width("7%")
        TextInput({ placeholder: "密码" }).width('93%')
          .maxLength(18)
      }
      .margin({ left: 20, right: 20, top: 20 })


      Row() {
        Text("忘记密码")
          .fontColor(Color.Grey)
          .fontWeight(FontWeight.Medium)
          .onClick(() => {
            router.pushUrl({
              url: "" //TODO 忘记密码的超链接
            })
          })
      }
      .width('95%')
      .justifyContent(FlexAlign.End)
      .margin({ top: 30, right: 10 })


      Row({ space: '50vp' }) {
        Button("登录")
          .onClick(() => {
            router.pushUrl({
              url: "pages/homePage"
            })
          })
          .type(ButtonType.Normal)
          .width('150vp')
        Button("注册")
          .onClick(() => {
            router.pushUrl({
              url: "pages/register"
            })
          })
          .width('150vp')
          .type(ButtonType.Normal)
      }
      .margin({ top: 60 })

      Text("其他登录方式")
        .margin({ top: 50 })
      Divider()
        .margin({ top: 20 })


      Row() {
        Image($r("app.media.QQ"))
          .width('80vp')
          .onClick(() => {

          })

        Image($r("app.media.wechat"))
          .width('80vp')
          .margin({ left: 40 })
          .onClick(() => {

          })

        Image($r("app.media.weibo"))
          .width('80vp')
          .margin({ left: 40 })
          .onClick(() => {

          })
      }
      .width('90%')
      .height('110vp')

    }
    .width("100%")
    .height("100%")
    //.backgroundColor('#00fcfcfc')

    .backgroundImage($r("app.media.Login_Bg2"))
    .backgroundImageSize(ImageSize.Cover)
  }
}