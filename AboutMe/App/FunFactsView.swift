import SwiftUI

struct FunFactsView: View {

    @State private var funFact = ""
    var body: some View {
        VStack {
            Text("Fun Facts")
                .font(.largeTitle)
                .fontWeight(.heavy)
                        
            Text(funFact)
                .font(.title)
                .frame(minHeight: 200)
                .background(Color.secondary)
                .padding()
            
            Button("Show Random Fact") {
                funFact = information.funFacts.randomElement()!
            }
            .padding(20)
            .background(Color.gray)
            .cornerRadius(50)
        }
        .padding()
    }
}

struct FunFactsView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactsView()
    }
}
