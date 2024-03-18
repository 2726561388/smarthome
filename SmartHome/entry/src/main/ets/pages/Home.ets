
import router from '@ohos.router'

@Entry
@Component
struct Home {

  build() {
    Column() {
      Column() {
        Tabs({ barPosition: BarPosition.End }) {

          //首页
          TabContent(){
            Column(){
              Column(){
                Row(){
                  Text("我的家")
                    .fontSize(25)
                    .width(80)
                    .height(50)
                    .margin({top:40,left:15})
                  Image($r('app.media.right'))
                    .width(30)
                    .height(30)
                    .margin({top:40})
                  Image($r('app.media.warn'))
                    .width(30)
                    .height(30)
                    .margin({top:40,left:150})
                  Image($r('app.media.whiteAdd'))
                    .width(30)
                    .height(30)
                    .margin({top:40,left:10})


                }.width("100%")
                .height("20%")

              }.height("20%")
              .backgroundColor("#fff6eded")
              .linearGradient({
                angle: 120,
                colors: [[0xffffff,0.0],[0xff1c1b1b,1.0]]
              })

              Column(){
                Row(){
                  Image($r('app.media.search'))
                    .width("25")
                    .height("25")
                    .margin({left:280})
                  Image($r('app.media.set'))
                    .width("25")
                    .height("25")
                    .margin({left:15})
                }.width("100%")
                .height("40")
                .backgroundColor("#ffddd8d8")
                  Tabs({barPosition:BarPosition.Start}){
                    TabContent()
                      .tabBar({text:"常用"})

                    TabContent()
                      .tabBar({text:"默认房间"})

                    TabContent()
                      .tabBar({text:"玄关"})

                    TabContent()
                      .tabBar({text:"客厅"})

                    TabContent()
                      .tabBar({text:"餐厅厨房"})

                    TabContent()
                      .tabBar({text:"主卧"})

                    TabContent()
                      .tabBar({text:"次卧"})

                    TabContent()
                      .tabBar({text:"阳台"})

                    TabContent()
                      .tabBar({text:"卫生间"})


                  }
                  .width("100%")
                  .barHeight(50)
                  .barMode(BarMode.Scrollable)



              }.backgroundColor("#ffd3d4d7")
              .height("100%")

            }.backgroundColor("#ffaca8a8")
            .width("100%")
            .height("100%")
          }
            .tabBar({ icon: $r('app.media.home'), text: "首页" })


          //场景页面
          TabContent() {
              Column() {
                Row() {
                  Text("场景")
                    .width("60%")
                    .height("60%")
                    .margin({ left: "10vp" })
                    .fontSize("25fp")
                  Image($r('app.media.diary'))
                    .width("30vp")
                    .height("30vp")
                    .margin({left:50})
                  Image($r('app.media.add'))
                    .width("30vp")
                    .height("30vp")
                    .margin({ left: "10vp" })
                }
                .width("100%")
                .height("6%")
                .backgroundColor("#ffffffff")

                Scroll(){
                  Column(){
                    Image($r('app.media.work'))
                      .width("95%")
                      .height("150vp")
                      .borderRadius("20vp")
                      .margin({ top: "10vp" })
                      .onClick(()=>{
                        router.pushUrl({
                          url:'pages/DetailScene'
                        })
                      })
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
                    .width("95%")
                    .height("40vp")
                    .borderRadius("10vp")
                    .backgroundColor("#ffffff")
                    .margin({ top: "10vp" })
                    .onClick(()=>{
                      router.pushUrl({
                        url:'pages/DetailScene'
                      })
                    })

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
                    .width("95%")
                    .height("40vp")
                    .borderRadius("10vp")
                    .backgroundColor("#ffffff")
                    .margin({ top: "10vp" })

                    Image($r('app.media.play'))
                      .width("95%")
                      .height("150vp")
                      .borderRadius("20vp")
                      .margin({ top: "10vp" })
                    Row() {
                      Text("休闲模式")
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
                    .width("95%")
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
                    .width("95%")
                    .height("40vp")
                    .borderRadius("10vp")
                    .backgroundColor("#ffffff")
                    .margin({ top: "10vp" })

                    Row(){

                    }
                    .width("100%")
                    .height("180px")
                  }
                }
                .width("100%")
                .edgeEffect(EdgeEffect.Spring)
                .scrollBar(BarState.Off)
                .height("100%")
                .scrollBarColor("#ff000000")


              }
              .width("100%")
              .backgroundColor("#ffacabab")

          }
          .tabBar({ icon: $r('app.media.scene'), text: "场景" })


          //商城页面
          TabContent()
            .tabBar({ icon: $r('app.media.shopping'), text: "商城" })


          //个人主页
          TabContent(){
            Scroll(){
              Column(){
                Blank().height("50")
                Row(){
                  Image($r('app.media.account'))
                    .width("50")
                    .height("50")
                    .margin({left:30})
                  Text("18779695809")
                    .fontSize("20")
                    .margin({left:30})
                  Image($r('app.media.right'))
                    .width("20")
                    .height("20")
                    .margin({left:70})
                }
                .width("100%")
                .height("40")
                .margin({top:0})

                Row(){
                  Image($r('app.media.wifi'))
                    .width("30")
                    .height("30")
                    .margin({left:20})
                  Text("网关管理")
                    .width("80")
                    .height("20")
                    .margin({left:10})

                  Divider()
                    .strokeWidth(2)
                    .vertical(true)
                    .height("50%")
                    .margin({left:30,right:30})

                  Image($r('app.media.familyManage'))
                    .width("30")
                    .height("30")
                    .margin({left:10})
                  Text("家庭管理")
                    .width("80")
                    .height("20")
                    .margin({left:10})
                }.width("95%")
                .height("60")
                .margin({top:50})
                .backgroundColor("#ffffff")
                .borderRadius(10)

                Column(){
                  Row({space:150}) {
                    Text("ezhome云云对接")
                      .fontSize(20)
                    Image($r('app.media.right'))
                      .width("20")
                      .height("20")
                  }
                  .margin({top:15})
                  .height("20")
                  List(){
                    ListItem(){
                      Column(){
                        Image($r('app.media.huawei'))
                          .width("40")
                          .height("40")
                          .margin({top:20,bottom:20,left:20,right:20})
                        Text("华为智慧生活")
                          .fontSize(15)
                      }
                    }
                    ListItem(){
                      Column(){
                        Image($r('app.media.baidu'))
                          .width("40")
                          .height("40")
                          .margin({top:20,bottom:20,left:20,right:20})
                        Text("小度小度")
                          .fontSize(15)
                      }
                    }
                    ListItem(){
                      Column(){
                        Image($r('app.media.mi'))
                          .width("40")
                          .height("40")
                          .margin({top:20,bottom:20,left:20,right:20})
                        Text("米家小爱")
                          .fontSize(15)
                      }
                    }
                    ListItem(){
                      Column(){
                        Image($r('app.media.TianMao'))
                          .width("40")
                          .height("40")
                          .margin({top:20,bottom:20,left:20,right:20})
                        Text("天猫精灵")
                          .fontSize(15)
                      }
                    }
                  }
                  .listDirection(Axis.Horizontal)
                  .scrollBar(BarState.Off)
                  .width("95%")
                }
                .width("95%")
                .height("150")
                .backgroundColor("#ffffff")
                .margin({top:20})
                .borderRadius(10)

                Column(){
                  List(){
                    ListItem(){
                      Row(){
                        Image($r('app.media.code'))
                          .width("20")
                          .height("20")
                        Text("我的二维码")
                          .width("80")
                          .margin({left:10})
                        Image($r('app.media.right'))
                          .width("20")
                          .height("20")
                          .margin({left:180})
                      }.margin({top:15,left:20,bottom:15})
                      .width("100%")
                    }
                    ListItem(){
                      Row(){
                        Image($r('app.media.wechat'))
                          .width("20")
                          .height("20")
                        Text("微信小程序")
                          .width("80")
                          .margin({left:10})
                        Image($r('app.media.right'))
                          .width("20")
                          .height("20")
                          .margin({left:180})
                      }.margin({top:15,left:20,bottom:15})
                      .width("100%")
                    }
                    ListItem(){
                      Row(){
                        Image($r('app.media.video'))
                          .width("20")
                          .height("20")
                        Text("视频学院")
                          .width("80")
                          .margin({left:10})
                        Image($r('app.media.right'))
                          .width("20")
                          .height("20")
                          .margin({left:180})
                      }.margin({top:15,left:20,bottom:15})
                      .width("100%")
                    }
                    ListItem(){
                      Row(){
                        Image($r('app.media.message'))
                          .width("20")
                          .height("20")
                        Text("消息中心")
                          .width("80")
                          .margin({left:10})
                        Image($r('app.media.right'))
                          .width("20")
                          .height("20")
                          .margin({left:180})
                      }.margin({top:15,left:20,bottom:15})
                      .width("100%")
                    }
                    ListItem(){
                      Row(){
                        Image($r('app.media.idea'))
                          .width("20")
                          .height("20")
                        Text("意见反馈")
                          .width("80")
                          .margin({left:10})
                        Image($r('app.media.right'))
                          .width("20")
                          .height("20")
                          .margin({left:180})
                      }.margin({top:15,left:20,bottom:15})
                      .width("100%")
                    }
                    ListItem(){
                      Row(){
                        Image($r('app.media.help'))
                          .width("20")
                          .height("20")
                        Text("帮助中心")
                          .width("80")
                          .margin({left:10})
                        Image($r('app.media.right'))
                          .width("20")
                          .height("20")
                          .margin({left:180})
                      }.margin({top:15,left:20,bottom:15})
                      .width("100%")
                    }
                  }
                  .divider({strokeWidth:2,startMargin:50,endMargin:10,color:'#ffc1c1c1'})
                }.backgroundColor("#ffffff")
                .width("95%")
                .height("310")
                .borderRadius(10)
                .margin({top:20})

                Column(){
                  List(){
                    ListItem(){
                      Row(){
                        Image($r('app.media.hide'))
                          .width("20")
                          .height("20")
                        Text("隐藏设备")
                          .width("80")
                          .margin({left:10})
                        Image($r('app.media.right'))
                          .width("20")
                          .height("20")
                          .margin({left:180})
                      }.margin({top:15,left:20,bottom:15})
                      .width("100%")
                    }
                    ListItem(){
                      Row(){
                        Image($r('app.media.change_account'))
                          .width("20")
                          .height("20")
                        Text("账号切换")
                          .width("80")
                          .margin({left:10})
                        Image($r('app.media.right'))
                          .width("20")
                          .height("20")
                          .margin({left:180})
                      }.margin({top:15,left:20,bottom:15})
                      .width("100%")
                    }
                    ListItem(){
                      Row(){
                        Image($r('app.media.help'))
                          .width("20")
                          .height("20")
                        Text("关于我们")
                          .width("80")
                          .margin({left:10})
                        Image($r('app.media.right'))
                          .width("20")
                          .height("20")
                          .margin({left:180})
                      }.margin({top:15,left:20,bottom:15})
                      .width("100%")
                    }
                  }
                  .divider({strokeWidth:2,startMargin:50,endMargin:10,color:'#ffc1c1c1'})
                }.backgroundColor("#ffffff")
                .width("95%")
                .height("155")
                .borderRadius(10)
                .margin({top:20})

                Blank()
                  .height("50")

              }.width("100%")

            }.width("100%")
            .edgeEffect(EdgeEffect.Spring)
            .scrollBar(BarState.Off)
            .height("100%")
            .backgroundColor("#ffe3e0e0")
          }
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
