import router from '@ohos.router'
import promptAction from '@ohos.promptAction'
import { Home } from '../view/mainPage/Home';
import { Setting } from '../view/mainPage/Setting';

@Entry
@Component
struct MainPage {
  controller: TabsController = new TabsController();
  currentIndex: number = 0;

  @Builder initTabBar(index: number, title: string, selectImage: Resource, normalImage: Resource) {
    //页签图片更换


    Column() {
      Image(this.currentIndex === index ? selectImage : normalImage) //TODO 修改图标 亮暗色
        .width('100%')
        .height('30vp')

      Text(title)
        .fontColor(this.currentIndex === index ? '#506de3' : '#9b9b9')
        .fontWeight(FontWeight.Bold)


    }
    .width('100%')
    .height('100%')

  }

  build() {
    Tabs({ barPosition: BarPosition.End, index: 0, controller: this.controller }) { //start end上下
      TabContent() {
        // Column().width('100%').height('100%').backgroundColor(Color.Yellow)
        Home()
      }
      .tabBar(this.initTabBar(0, '主页', $r('app.media.app_icon'), $r('app.media.app_icon')))

      TabContent() {

        // Column().width('100%').height('100%').backgroundColor(Color.Red)
        Setting()
      }
      .tabBar(this.initTabBar(1, '我的', $r('app.media.app_icon'), $r('app.media.app_icon')))
    }
    .barMode(BarMode.Fixed)
    .vertical(false) //ture false 左右
    .barWidth('90vp')
    .barHeight('7%')
    .width('100%')
    .height('100%')
    .onChange((index) => { //记录当前选择页面
      this.currentIndex = index;
      promptAction.showToast({ message: this.currentIndex.toString() })
    })


    /*Row(){
      Column(){
        Text('主页')


        Button('注销')
          .onClick(()=>{
            router.pushUrl({url:'pages/Login'})
              .then(()=>{
                promptAction.showToast({message:'注销成功'})
              })
          })

      }

    }*/
    // .backgroundColor(Color.Pink)
    .width('100%')
    .height('100%')
  }
}