@Entry
@Component
struct DetailScene {

  build() {
    Column() {
      Column() {
        Row() {
          Image($r('app.media.back'))
            .width("37vp")
            .height("73%")
            .margin({ left: "10vp" })
          Text("场景详情")
            .width("80%")
            .height("90%")
            .textAlign(TextAlign.Center)
            .fontSize("20fp")
        }
        .width("100%")
        .height("40vp")
        Image($r('app.media.work'))
          .width("90%")
          .height("150vp")
          .borderRadius("20vp")
          .margin({ top: "10vp" })
        Text("上班模式：关闭所有灯光，监控家里状态，关闭窗帘，实时家里的温湿度！")
          .width("90%")
          .height("50vp")
          .margin({ top: "10vp", bottom: "0vp", left: "0vp", right: "0vp" })
          .fontSize("15fp")
        Row() {
          Image($r('app.media.light'))
            .width("10%")
            .height("69%")
            .margin({ left: "20vp" })
          Text("灯光")
            .width("33%")
            .height("90%")
            .margin({ left: "31vp" })
            .fontSize("20fp")
          Toggle({ type: ToggleType.Switch })
            .width("50%")
            .height("60%")
            .margin({ left: "7vp" })
            .onChange((isON:boolean)=>{
              if(isON==true){
                AlertDialog.show(
                  {
                    title:'灯控提示',
                    message:'此时灯光处于打开状态',
                    autoCancel:true,
                    alignment:DialogAlignment.Bottom,
                    gridCount:4,
                    offset:{dx:0,dy:-20},
                    primaryButton:{
                      value:'确定',
                      action:()=>{
                        console.info('打开')
                      }
                    },
                  }
                )
              }else{

              }
            })

        }
        .width("100%")
        .height("60vp")
        .margin({ top: "20vp", bottom: "0vp", left: "0vp", right: "0vp" })
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Start)
    }
    .width("100%")
    .height("100%")
  }
}