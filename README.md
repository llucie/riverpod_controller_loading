# riverpod_controller_loading

A Flutter project which uses Riverpod to load a controller.

Problem statement: we have usecases where we have a page, relying on a controller which makes asynchronous work to load data, which are used in the page.
We want a way to easily (and ideally, automatically) load the controller once, before accessing its members or methods.

3 solutions here:


## 1. Calling load() in the build method
We use the riverpod_generator to generate our Providers.
The Controller Provider has an inherited build method, to get the controller.

pros:
   - the `load` method is called once, the first time the app gets the controller provider

cons:
   - if the `load` methode requires parameters, the controller provider is a Family, thus the app shall provide the parameters everytimes it needs the controller, which
   if not always possible

The code can be found in the `first_try` folder.


## 2. Calling load() manually, in the initState of the page.
Here, we call the load() method in the `initState` of our page. If the controller needs parameters (i.e. `myRequiredString` here), they shall be set prior to calling `load`.
If the `load` modifies the controller state, it shall be called in a post frame.

pros:
   - the controller provider is not a family, the parameters are set manually only once, and won't be needed everytime we need the controller

cons:
   - the `load` is called manually
   - the `load` is called in a post frame, since it can modify the controller parameters

The code can be found in the `second_try` folder.


## 3. Put load() outside the Controller class, and make it a FutureProvider
In this third option, the `load` function it outside the Controller class, and we use the `@riverpod` annotation to build a FutureProvider.
The page can access this provider and get an `AsyncValue`. 

This `load` function can update the controller if needed with the Ref parameter.

pros:
   - we can call a .when on it to build the widget when loaded, without setting manually a "loaded" boolean
   - the load is a Family provider, but the Controller provider is not. The controller can be retrieved with a `read` or a `watch` without parameters, contrary to first try

cons:
   - the load shall be called before accessing to the controller `resultString` parameter, otherwise it will raise a LateInitializationError

The code can be found in the `third_try` folder.
