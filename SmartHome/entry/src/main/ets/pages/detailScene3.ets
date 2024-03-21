import router from '@ohos.router'

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
            .onClick(()=>{
              router.back()
            })
          Text("场景详情")
            .width("80%")
            .height("90%")
            .textAlign(TextAlign.Center)
            .fontSize("20fp")
        }
        .width("100%")
        .height("40vp")

        Column(){
          Image($r('app.media.play'))
            .width("90%")
            .height("150vp")
            .borderRadius({topLeft:20,topRight:20})
            .margin({ top: "20vp" })
          Row(){
            Text("休闲模式")
              .height("60vp")
              .margin({ top: "0vp",left:20})
              .fontSize("15fp")
              .fontWeight(FontWeight.Bolder)
          }
          .width("90%")
          .backgroundColor("#ffffff")
          Row(){
            Text("可一键开（关）灯，打开（关闭）窗帘、门窗传感器等，打开（关闭）空调等。")
              .height("40vp")
              .margin({bottom:20,left:20,right:20,})
              .fontSize("15vp")
          }
          .width("90%")
          .borderRadius({bottomLeft:20,bottomRight:20})
          .backgroundColor("#ffffff")
        }
        .backgroundColor("#ffcdcdcd")
        .width("100%")
        .height("40%")

        Row() {
          Image($r('app.media.light'))
            .width("10%")
            .height("35")
            .margin({ left: "30vp" })
          Text("灯光")
            .width("33%")
            .height("90%")
            .margin({ left: "20vp" })
            .fontSize("20fp")
          Toggle({ type: ToggleType.Switch })
            .width("55")
            .height("60%")
            .margin({ left: "65vp" })
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
                    },secondaryButton:{
                    value:'取消',
                    action:()=>{
                      console.info('关闭')
                    }
                  }
                  }
                )
              }else{
                AlertDialog.show(
                  {
                    title:'灯控提示',
                    message:'此时灯光处于关闭状态',
                    autoCancel:true,
                    alignment:DialogAlignment.Bottom,
                    gridCount:4,
                    offset:{dx:0,dy:-20},
                    primaryButton:{
                      value:'确定',
                      action:()=>{
                        console.info('关闭')
                      }
                    },secondaryButton:{
                    value:'取消',
                    action:()=>{
                      console.info('关闭')
                    }
                  }
                  }
                )
              }
            })
        }
        .width("100%")
        .height("60vp")
        .margin({ top: "10vp" })

        Divider()
          .strokeWidth("3px")
          .margin({top:5,bottom:5})

        Row() {
          Image($r('app.media.curtain'))
            .width("10%")
            .height("35")
            .margin({ left: "30vp" })
          Text("窗帘")
            .width("33%")
            .height("90%")
            .margin({ left: "20vp" })
            .fontSize("20fp")
          Toggle({ type: ToggleType.Switch })
            .width("55")
            .height("60%")
            .margin({ left: "65vp" })
            .onChange((isON:boolean)=>{
              if(isON==true){
                AlertDialog.show(
                  {
                    title:'窗帘提示',
                    message:'此时窗帘处于打开状态',
                    autoCancel:true,
                    alignment:DialogAlignment.Bottom,
                    gridCount:4,
                    offset:{dx:0,dy:-20},
                    primaryButton:{
                      value:'确定',
                      action:()=>{
                        console.info('打开')
                      }
                    },secondaryButton:{
                    value:'取消',
                    action:()=>{
                      console.info('关闭')
                    }
                  }
                  }
                )
              }else{
                AlertDialog.show(
                  {
                    title:'窗帘提示',
                    message:'此时窗帘处于关闭状态',
                    autoCancel:true,
                    alignment:DialogAlignment.Bottom,
                    gridCount:4,
                    offset:{dx:0,dy:-20},
                    primaryButton:{
                      value:'确定',
                      action:()=>{
                        console.info('关闭')
                      }
                    },secondaryButton:{
                    value:'取消',
                    action:()=>{
                      console.info('关闭')
                    }
                  }
                  }
                )
              }
            })
        }
        .width("100%")
        .height("60vp")
        .margin({ top: "10vp" })

        Divider()
          .strokeWidth("3px")
          .margin({top:5,bottom:5})

        Row() {
          Image($r('app.media.air_condition'))
            .width("10%")
            .height("35")
            .margin({ left: "30vp" })
          Text("空调")
            .width("33%")
            .height("90%")
            .margin({ left: "20vp" })
            .fontSize("20fp")
          Toggle({ type: ToggleType.Switch })
            .width("55")
            .height("60%")
            .margin({ left: "65vp" })
            .onChange((isON:boolean)=>{
              if(isON==true){
                AlertDialog.show(
                  {
                    title:'空调提示',
                    message:'此时空调处于打开状态',
                    autoCancel:true,
                    alignment:DialogAlignment.Bottom,
                    gridCount:4,
                    offset:{dx:0,dy:-20},
                    primaryButton:{
                      value:'确定',
                      action:()=>{
                        console.info('打开')
                      }
                    },secondaryButton:{
                    value:'取消',
                    action:()=>{
                      console.info('关闭')
                    }
                  }
                  }
                )
              }else{
                AlertDialog.show(
                  {
                    title:'空调提示',
                    message:'此时空调处于关闭状态',
                    autoCancel:true,
                    alignment:DialogAlignment.Bottom,
                    gridCount:4,
                    offset:{dx:0,dy:-20},
                    primaryButton:{
                      value:'确定',
                      action:()=>{
                        console.info('关闭')
                      }
                    },secondaryButton:{
                    value:'取消',
                    action:()=>{
                      console.info('关闭')
                    }
                  }
                  }
                )
              }
            })
        }
        .width("100%")
        .height("60vp")
        .margin({ top: "10vp" })

        Divider()
          .strokeWidth("3px")
          .margin({top:5,bottom:5})

        Row() {
          Image($r('app.media.sensor'))
            .width("10%")
            .height("35")
            .margin({ left: "30vp" })
          Text("门窗传感器")
            .width("33%")
            .height("90%")
            .margin({ left: "20vp" })
            .fontSize("20fp")
          Toggle({ type: ToggleType.Switch })
            .width("55")
            .height("60%")
            .margin({ left: "65vp" })
            .onChange((isON:boolean)=>{
              if(isON==true){
                AlertDialog.show(
                  {
                    title:'传感器提示',
                    message:'此时门窗传感器处于打开状态',
                    autoCancel:true,
                    alignment:DialogAlignment.Bottom,
                    gridCount:4,
                    offset:{dx:0,dy:-20},
                    primaryButton:{
                      value:'确定',
                      action:()=>{
                        console.info('打开')
                      }
                    },secondaryButton:{
                    value:'取消',
                    action:()=>{
                      console.info('关闭')
                    }
                  }
                  }
                )
              }else{
                AlertDialog.show(
                  {
                    title:'传感器提示',
                    message:'此时门窗传感器处于关闭状态',
                    autoCancel:true,
                    alignment:DialogAlignment.Bottom,
                    gridCount:4,
                    offset:{dx:0,dy:-20},
                    primaryButton:{
                      value:'确定',
                      action:()=>{
                        console.info('关闭')
                      }
                    },secondaryButton:{
                    value:'取消',
                    action:()=>{
                      console.info('关闭')
                    }
                  }
                  }
                )
              }
            })
        }
        .width("100%")
        .height("60vp")
        .margin({ top: "10vp" })

        Divider()
          .strokeWidth("3px")
          .margin({top:5,bottom:5})

        Button("创建我的场景")
          .width("70%")
          .height("40")
          .fontSize("20")
          .fontColor("#ff0000ff")
          .border({color:'#ff0068ff',width:2})
          .backgroundColor("#fffdfdfd")
          .margin({top:20})
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Start)
    }
    .width("100%")
    .height("100%")
  }
}