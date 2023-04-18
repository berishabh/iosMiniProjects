import SwiftUI

struct StoryView: View {
    var body: some View {
        VStack {
            Text("My Story")
                .font(.title)
                .fontWeight(.heavy)
                .padding()
            
            ScrollView {
                Text(information.story)
                    .font(.system(size: 50))
                    .padding()
            }
        }
        .padding([.top, .bottom],50)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
