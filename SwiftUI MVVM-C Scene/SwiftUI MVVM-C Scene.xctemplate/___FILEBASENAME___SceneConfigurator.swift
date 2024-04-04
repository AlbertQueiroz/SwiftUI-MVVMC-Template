import DI
import StrategyInterface

protocol ___VARIABLE_sceneName___SceneConfiguratorProtocol {
    func create() -> ___VARIABLE_sceneName___SceneProtocol
}

struct ___VARIABLE_sceneName___SceneConfigurator: ___VARIABLE_sceneName___SceneConfiguratorProtocol {

    func create() -> ___VARIABLE_sceneName___SceneProtocol {
        let container = DIContainer.appContainer
        let viewModel = ___VARIABLE_sceneName___ViewModel(
            presentationModel: .init(title: "Hello SwiftUI"),
            useCase: DIContainer.appContainer.get()
        )
        let scene = ___VARIABLE_sceneName___Scene(viewModel: viewModel)

        return scene
    }
}
