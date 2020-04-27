import SwiftUI

struct ContentView: View {
    
    @State var selected = 0
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
        VStack(spacing: 8){
            Topbar(selected: self.$selected).padding(.top)
            Spacer()
            if self.selected == 0{
                Text("수신전용 전화서비스 App")
                .frame(width: 360, height: 80)
            }
            else {
                Home()
            }
        }.background(Color(.white).edgesIgnoringSafeArea(.all))
        }
    }
}

struct Topbar : View {
    
    @Binding var selected : Int
    
    var body : some View{
        HStack{
            Button(action: {
                self.selected = 0
            }) {
                Text("홈")
//                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding(.vertical,12)
                    .padding(.horizontal,30)
                    .background(self.selected == 0 ? Color.white : Color.clear)
                    .clipShape(Capsule())
            }
            .foregroundColor(self.selected == 0 ? .pink : .gray)
            
            Button(action: {
                self.selected = 1
            }) {
                
                Text("통화목록")
//                .resizable()
                .frame(width: 90, height: 25)
                .padding(.vertical,12)
                .padding(.horizontal,30)
                .background(self.selected == 1 ? Color.white : Color.clear)
                .clipShape(Capsule())
            }
            .foregroundColor(self.selected == 1 ? .pink : .gray)
            
            }.padding(8)
            .background(Color("Color2"))
            .clipShape(Capsule())
            .animation(.default)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
