import TokamakDOM

@main
struct TokamakApp: App {
    var body: some Scene {
        WindowGroup("Tokamak App") {
            ContentView()
        }
    }
}

struct ContentView: View {
    @State private var isOpened = false

    var body: some View {
        VStack {
            Button {
                withAnimation {
                    isOpened.toggle()
                }
            } label: {
                Text("Switch")
                    .padding()
                    .background(
                        Color.purple.opacity(0.2)
                    )
            }
            .buttonStyle(PlainButtonStyle())
            .cornerRadius(8)
            .zIndex(2)

            Color.red
                .frame(width: 80, height: 80)
                .cornerRadius(isOpened ? 40 : 0)
                .animation(.default, value: isOpened)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(height: 300)
    }
}
