import router from '@ohos.router'
import promptAction from '@ohos.promptAction'
@Entry
@Component
struct Login {
  private   userName:string ='';
  private   passWorld:string='';
@State  showLoading:boolean=false;

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
          .onChange((value)=>{
            this.userName=value;
          })
          .backgroundColor(Color.White)
      }
      .margin({ left: 20, right: 20, top: 50 })

      Row() {
        Image($r("app.media.password"))
          .width("7%")
        TextInput({ placeholder: "密码" }).width('93%')
          .maxLength(18)
          .type(InputType.Password)
        .onChange((value)=>{
          this.passWorld=value;
        })
          .backgroundColor(Color.White)
      }
      .margin({ left: 20, right: 20, top: 20 })


      Row() {
        Text("忘记密码")
          .fontColor(Color.Black)
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
            if(this.userName===''||this.passWorld===''){
              promptAction.showToast({message:'用户名或密码错误'})
            }else{
              this.showLoading=true;
              setTimeout(()=>{
                this.showLoading=false;
                promptAction.showToast({message:'登录成功'})
                router.pushUrl({url:'pages/MainPage'})
              },3000)

            }
          })
          .type(ButtonType.Normal)
          .width('150vp')
        Button("注册")
          .onClick(() => {
            router.pushUrl({
              url: "pages/RegisterPage"
            })
          })
          .width('150vp')
          .type(ButtonType.Normal)
      }
      .margin({ top: 60 })
      if(this.showLoading){
        LoadingProgress()
          .color(Color.Blue)
          .width('50vp')
          .height('50vp')
      }
      Blank()
      Text("其他登录方式")
        .margin({ top: 50 })

      Divider()
        .margin({ top: 20 })


      Row() {
        Image($r("app.media.QQ"))
          .width('80vp')
          .onClick(() => {
            promptAction.showToast({message:"功能未开放"})
          })

        Image($r("app.media.wechat"))
          .width('80vp')
          .margin({ left: 40 })
          .onClick(() => {
            promptAction.showToast({message:"功能未开放"})

          })

        Image($r("app.media.weibo"))
          .width('80vp')
          .margin({ left: 40 })
          .onClick(() => {
            promptAction.showToast({message:"功能未开放"})
          })
      }
      .width('90%')
      .height('110vp')

    }
    .width("100%")
    .height("100%")

    .backgroundImage($r("app.media.Login_BG3"))
    .backgroundImageSize(ImageSize.Cover)
  }
}