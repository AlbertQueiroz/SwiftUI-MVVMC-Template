import DI

public final class DISetup {

    public init() {}

    public func setup() {
        DIContainer.appContainer.register(
            ___VARIABLE_sceneName___UseCasing.self
        ) { _ in
            ___VARIABLE_sceneName___UseCase()
        }

        DIContainer.appContainer.register(
            ___VARIABLE_sceneName___CoordinatorProtocol.self
        ) { resolver in
            ___VARIABLE_sceneName___Coordinator(
                configurator: ___VARIABLE_sceneName___SceneConfigurator(),
                useCase: resolver.get(),
                viewHierarchyAccessor: resolver.get()
            )
        }
    }

}
