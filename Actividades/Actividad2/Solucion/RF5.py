import external_provider1  # fictitious library
import external_provider2  # fictitious library


class AdapterExternal1:
    def use(self):
        # wrap external_provider1
        return 'sucess'


class AdapterExternal2:
    def use(self):
        # wrap external_provider2
        return 'sucess'


adapters = [AdapterExternal1(), AdapterExternal2()]
for adapter in adapters:
    print(adapter.use())
