class Card{
  image:string
  name:string
  text1:string
  text2:string

  constructor(image,name,t1,t2) {
    this.image = image
    this.name=name
    this.text1=t1
    this.text2=t2
  }
}


@Entry
@Component
struct Index {
  //   var care[] =[{Image:"/common/th11.png","侦察飞行器"}]
  @State cardarr:Card[] =[
    new Card("/common/th11.png","侦察飞行器","xxx","***"),
    new Card("/common/th12.png","AA飞行器","xxx","***"),
    new Card("/common/th11.png","侦察飞行器","xxx","***"),
    new Card("/common/th12.png","AA飞行器","xxx","***"),
    new Card("/common/th11.png","侦察飞行器","xxx","***"),
    new Card("/common/th12.png","AA飞行器","xxx","***")

  ]

  @Styles  textcss(){
    // .fontSize(30)
    .border({width:6})
    // .borderWidth(6)
    .borderColor(0x3a89b0)
    .padding({top:10,left:30,right:30,bottom:10})
    .margin({top:15,left:15,right:15,bottom:15})

  }
  @Styles color1(){

    .backgroundColor(0x3e3c3d)
  }
  @Styles color2(){
    .backgroundColor(0x3a89b0)
  }
  @State message: string = 'Hello World'

  build() {
    Column(){
      Column({}){
        // Column().width('100%').height(30).backgroundColor(0xAFEEEE)
        Text("丑小鸭")
          //0x7991d1  0x25386b
          .fontColor(0x25386b)
          .margin(10)
          .padding(10)
          .fontSize(40)
          .fontWeight(FontWeight.Bold)

      }
      // .backgroundColor(0x7991d1)
      .color2()
      .width('100%')

      Row(){

        Text("分组功能")
          .fontWeight(FontWeight.Bolder) .margin({top:10,left:15,right:15,bottom:0})
          .fontSize(30)

        Text("全部")
          .fontSize(30)
          .textcss()




        Text("情报")
          .textcss()
          .fontSize(30)


        Text("打击")
          .textcss()

          .fontSize(30)



        Text("保障")

          .textcss()

          .fontSize(30)


        Text("指挥")
          .textcss()

          .fontSize(30)



      }
      // .backgroundColor(0x546b83)
      .width('100%')
      // .height(82)s
      // .margin(10)
       Row(){


        GridRow({ columns: { sm: 1,md:2 ,lg: 3 }, breakpoints: { value: ['10vp', '300vp', '780vp', '300vp', '600vp'] } }) {
          // Row(){
          //   Image("https://pics6.baidu.com/feed/9f2f070828381f3045158440218ce6046f06f061.jpeg@f_auto?token=1f8638275e14771c5b46e5fec2aebcbf")
          //     .width(50).height(50).margin(10)
          //
          //   Text("图片A")
          //     .margin(10)
          //     .padding(20)
          // }
          // .margin(10)
          // .padding(10)

          ForEach(this.cardarr, (item: Card) => {
            GridCol() {
              Row() {


                Image(item.image).width(110).height(110).margin(15)
                Column() {
                  Text(item.name)
                    .textAlign(TextAlign.Center)
                    .fontSize(25)

                    .height(30)
                  Text(item.text1)
                    .textAlign(TextAlign.Start)
                    .fontSize(25)
                    .margin({ left: 5 })
                    .height(30)
                  Text(item.text2)
                    .margin({ left: 5 })
                    .height(30)
                    .textAlign(TextAlign.Start)
                    .fontSize(25)

                }.alignItems(HorizontalAlign.Start)
              }.padding(20).height(150).margin(15).backgroundColor('#ccc')
              .width(300)
            }


            // .margin({top :2})
            // .padding({bottom:5})
            .width('100%')
            // .height('200')
          })


        }
        .margin({ top: 1 })
        // .padding({ top: 10, bottom: 30, left: 10, right: 10 })


       }.height('60%')
      .margin(30)
       .backgroundColor(Color.Red)
        // .color2()
        // .height('65%')

      // .margin({top:5,right:40,left:40})
      // .padding(50)
      // .padding({top:1,bottom:50})

    }
    .backgroundColor(0x546b83)
    .height('100%')


  }

}