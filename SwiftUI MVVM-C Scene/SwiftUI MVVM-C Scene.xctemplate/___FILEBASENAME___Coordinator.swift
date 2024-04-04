import StrategyInterface
import SwiftUI

protocol ___VARIABLE_sceneName___CoordinatorProtocol {
    func present()
}

final class ___VARIABLE_sceneName___Coordinator: ___VARIABLE_sceneName___CoordinatorProtocol {

    private let configurator: ___VARIABLE_sceneName___SceneConfiguratorProtocol
    private let viewHierarchyAccessor: ViewHierarchyAccessorProtocol
    private let useCase: ___VARIABLE_sceneName___UseCasing

    init(
        configurator: ___VARIABLE_sceneName___SceneConfiguratorProtocol,
        useCase: ___VARIABLE_sceneName___UseCasing,
        viewHierarchyAccessor: ViewHierarchyAccessorProtocol
    ) {
        self.configurator = configurator
        self.useCase = useCase
        self.viewHierarchyAccessor = viewHierarchyAccessor
    }

    @MainActor
    private func present() {
        guard let presentingController = viewHierarchyAccessor.getTopViewController() else {
            return nil
        }
        let scene = configurator.create()
        let hostingController = UIHostingController(rootView: scene.view)
        hostingController.isModalInPresentation = true

        presentingController.present(
            hostingController,
            animated: true
        )
        return await scene.didLoad()
    }

}
