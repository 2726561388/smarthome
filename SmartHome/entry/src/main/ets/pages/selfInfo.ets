@Entry
@Component
struct SelfInfo {

  build() {
    Column(){
      Row(){
        Image($r('app.media.back'))
          .width("40")
          .height("30")
          .margin({left:20})
        Text("个人中心")
          .textAlign(TextAlign.Center)
          .fontSize("30")
          .width("250")
          .height("50")
      }
      .width("100%")
      .height("80")

      

    }
  }
}