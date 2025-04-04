import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ImagesViewModel = ImagesViewModel()

    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    ForEach(viewModel.images) { model in
                        model.image
                            .resizable()
                            .scaledToFit()
                            .frame(height: 150)

                    }
                }
            }
            .scrollIndicators(.hidden)

            Button("Get 5 Images") {
                viewModel.getImages()
            }
            .buttonStyle(.bordered)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    ContentView(viewModel: ImagesViewModel())
}

