import web_webview from '@ohos.web.webview';
@Entry
@Component
struct Doing {
  @State message: string = ''
  webviewController: web_webview.WebviewController = new web_webview.WebviewController();


  build() {
    Row() {
      Column() {
        Web({src:'https://s.taobao.com/search?commend=all&ie=utf8&initiative_id=tbindexz_20170306&page=1&q=%E6%99%BA%E8%83%BD%E5%AE%B6%E5%B1%85&search_type=item&sourceId=tb.index&spm=a21bo.jianhua.201856-taobao-item.2&ssid=s5-e&tab=all',controller:this.webviewController})
          .zoomAccess(true)
      }
      .width('100%')
    }
    .height('100%')
  }
}