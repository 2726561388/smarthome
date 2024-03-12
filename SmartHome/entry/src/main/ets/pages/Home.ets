@Entry
@Component
struct Home {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Column() {
        Tabs({ barPosition: BarPosition.End }) {
          TabContent()
            .tabBar({ icon: $r('app.media.home'), text: "首页" })
          TabContent() {
            Column() {
              Row() {
                Text("场景")
                  .width("80%")
                  .height("60%")
                  .margin({ left: "10vp" })
                  .fontSize("25fp")
                Image($r('app.media.add'))
                  .width("30vp")
                  .height("30vp")
                  .margin({ left: "0vp" })
              }
              .width("100%")
              .height("7%")
              .backgroundColor("#ffffff")
              Image($r('app.media.work'))
                .width("95%")
                .height("150vp")
                .borderRadius("20vp")
                .margin({ top: "10vp" })
              Row() {
                Text("上班模式")
                  .width("70%")
                  .height("100%")
                  .margin({ left: "10vp" })
                  .fontSize("20fp")
                Button("执行")
                  .width("25%")
                  .height("70%")
                  .backgroundColor("#8293e8")
                  .fontColor("#f7dd36")
                  .margin({ left: "5vp" })
                  .fontSize("20fp")
              }
              .width("100%")
              .height("40vp")
              .borderRadius("10vp")
              .backgroundColor("#ffffff")
              .margin({ top: "10vp" })

              Image($r("app.media.WorkDown"))
                .width("95%")
                .height("150vp")
                .borderRadius("20vp")
                .margin({ top: "10vp" })
              Row() {
                Text("下班模式")
                  .width("70%")
                  .height("100%")
                  .margin({ left: "10vp" })
                  .fontSize("20fp")
                Button("执行")
                  .width("25%")
                  .height("70%")
                  .backgroundColor("#8293e8")
                  .fontColor("#f7dd36")
                  .margin({ left: "5vp" })
                  .fontSize("20fp")
              }
              .width("100%")
              .height("40vp")
              .borderRadius("10vp")
              .backgroundColor("#ffffff")
              .margin({ top: "10vp" })

              Image($r('app.media.sleep'))
                .width("95%")
                .height("150vp")
                .borderRadius("20vp")
                .margin({ top: "10vp" })
              Row() {
                Text("睡眠模式")
                  .width("70%")
                  .height("100%")
                  .margin({ left: "10vp" })
                  .fontSize("20fp")
                Button("执行")
                  .width("25%")
                  .height("70%")
                  .backgroundColor("#8293e8")
                  .fontColor("#f7dd36")
                  .margin({ left: "5vp" })
                  .fontSize("20fp")
              }
              .width("100%")
              .height("40vp")
              .borderRadius("10vp")
              .backgroundColor("#ffffff")
              .margin({ top: "10vp" })
            }
            .width("100%")
            .height("100%")
            .backgroundColor("#e0dcdc")
          }
          .tabBar({ icon: $r('app.media.scene'), text: "场景" })
          TabContent()
            .offset({ x: "0vp", y: "0vp" })
            .tabBar({ icon: $r('app.media.shopping'), text: "商城" })
          TabContent()
            .tabBar({ icon: $r('app.media.mine'), text: "我的" })
        }
        .width("100%")
        .height("100%")
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)
    }
    .width("100%")
    .height("100%")
  }
}