import StrategyInterface
import SwiftUI

protocol ___VARIABLE_sceneName___SceneProtocol: SceneProtocol {
    func didLoad() async -> String?
}

final class ___VARIABLE_sceneName___Scene: ___VARIABLE_sceneName___SceneProtocol {

    var view: AnyView?
    private let viewModel: ___VARIABLE_sceneName___ViewModel

    init(viewModel: ___VARIABLE_sceneName___ViewModel) {
        self.viewModel = viewModel
        let view = ___VARIABLE_sceneName___View(viewModel: viewModel)
        self.view = AnyView(view)
    }

    func didLoad() {
        // Do something when load
    }

}
