import SwiftUI

struct Account : View {
    
    var body : some View{
        
        VStack(spacing: 20){
            
            HStack(spacing: 15){
                
                Image("apic").renderingMode(.original)
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Emma")
                    
                    Text("@emma_18")
                }
                
                Spacer()
            }
            
            
            HStack(spacing: 15){
                
                HStack{
                    
                    VStack(alignment: .leading){
                        
                        Text("Followers").fontWeight(.bold)
                        
                        Text("128").fontWeight(.bold).font(.system(size: 22))
                    }
                    
                    Spacer(minLength: 0)
                    
                }.padding()
                .frame(width: (UIScreen.main.bounds.width - 45) / 2)
                .background(Color.blue)
                .cornerRadius(15)
                
                HStack{
                    
                    VStack(alignment: .leading){
                        
                        Text("Following").fontWeight(.bold)
                        
                        Text("228").fontWeight(.bold).font(.system(size: 22))
                    }
                    
                    Spacer(minLength: 0)
                    
                }.padding()
                .frame(width: (UIScreen.main.bounds.width - 45) / 2)
                .background(Color.pink)
                .cornerRadius(15)
                
            }.foregroundColor(.white)
             .padding(.top)
            
            Button(action: {
                
            }) {
                
                HStack(spacing: 15){
                    
                    Image("map")
                        .renderingMode(.original)
                        .padding()
                        .background(Color("Color1"))
                        .clipShape(Circle())
                    
                    Text("Address")
                    
                    Spacer()
                    
                    Image("arrow").renderingMode(.original)
                    
                }.padding()
                .background(Color.white)
                .foregroundColor(.black)
                
            }.cornerRadius(15)
            .padding(.top)
            
            Button(action: {
                
            }) {
                
                HStack(spacing: 15){
                    
                    Image("world")
                        .renderingMode(.original)
                        .padding()
                        .background(Color("Color1"))
                        .clipShape(Circle())
                    
                    Text("Language")
                    
                    Spacer()
                    
                    Image("arrow").renderingMode(.original)
                    
                }.padding()
                .background(Color.white)
                .foregroundColor(.black)
                
            }.cornerRadius(15)
            
            Button(action: {
                
            }) {
                
                HStack(spacing: 15){
                    
                    Image("log")
                        .renderingMode(.original)
                        .padding()
                        .background(Color("Color1"))
                        .clipShape(Circle())
                    
                    Text("Logout")
                    
                    Spacer()
                    
                    Image("arrow").renderingMode(.original)
                    
                }.padding()
                .background(Color.white)
                .foregroundColor(.black)
                
            }.cornerRadius(15)
            
            Spacer()
            
        }.padding()
        .padding(.top)
    }
}

struct Account_Previews: PreviewProvider {
    static var previews: some View {
            Account()
    }
}
