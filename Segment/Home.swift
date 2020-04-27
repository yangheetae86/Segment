import SwiftUI

struct Home : View {
    
    var body : some View{
       
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(spacing: 0){
                
                ForEach(1...2,id: \.self){i in
                    
                    HStack(spacing: 15){
                        
                        Image("call")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 40, height: 40)
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            
                            Text("3월 24일 오후 12:11")
                                .frame(width: 200, height: 160)
                            Text("00:00:00")
                            
                        }
                        
                        Spacer(minLength: 0)
                        
                    }.padding()
                    .background(Color.white)
                }
                
            }.padding()
        }
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
            Home()
    }
}
