import SwiftUI

struct ___VARIABLE_sceneName___View<ViewModel>: View where ViewModel: ___VARIABLE_sceneName___ViewModelProtocol {

    @Environment(\.presentationMode) private var presentationMode
    @ObservedObject private var viewModel: ViewModel

    private var presentationModel: ___VARIABLE_sceneName___PresentationModel {
        viewModel.presentationModel
    }

    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        // Define your view body
        Text(presentationModel.title)
    }
}

#Preview {
    TestSceneConfigurator().create().view
}
