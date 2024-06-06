import router from '@ohos.router'
@Entry
@Component
struct register {
  @State userName: string = ''

  build() {
    Row() {
      Column() {
        Text("注册账号")
          .fontSize("50")
          .margin({top:50})
        TextInput({ placeholder: "输入账号" })
          .margin({ left: 20, right: 20, top: 50 })

        TextInput({ placeholder: "输入密码" })
          .margin({ left: 20, right: 20, top: 50 })

        Row() {
            Button('登录')
              .fontColor(Color.White)
              .width('100vp')
              .height('50vp')
              .fontSize(20)
              .margin({ right: 50 })
              .onClick(() => {
                router.pushUrl(({
                  url: 'pages/homePage'
                }))
              })


            Button('返回')
              .fontColor(Color.White)
              .width('100vp')
              .height('50vp')
              .fontSize(20)
              .onClick(() => {
                router.pushUrl(({
                  url: 'pages/Login'
                }))
              })

          }
        .margin({top:20})

        }
        .width('100%')
      }
      .height('100%')

    .backgroundImage($r("app.media.Login_Bg2"))
    .backgroundImageSize(ImageSize.Cover)

  }
}