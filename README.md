cairngorm3
==========

In cairngorm3, there are libraries which depended on spicelib-parsley framework, for example: 

    - Module 0.17 : swc-flex4 (Requires Parsley 2.4)
    - NavigationParsley 1.7 : swc-flex4 (Requires Parsley 2.4)
    - IntegrationParsley 0.17 : swc-flex4 (Requires Parsley 2.4)

But in Feb 6th, 2012, Parsley 3.0.0 got its final release, there are many changes in parsley3.
This project is going to migrate those libraries from parsley2.4 to parsley3 to utilize the power of new features in parsley3.

project environment:

* Flex 4.6 SDK
* Parsley 3.0.0 Final Release
* Cairngorm3.0.21



changes in parsley-spicelib 3, which can be found in their document&source code.
----------------------------------

1. `interface MessageProcessor`: the message() property's type changed from Object to Message	
```
	public interface MessageProcessor {
		/**
	 	  * The message instance.
	 	  */
		function get message () : Message;
		...
	}
```

2. `interface ObjectDefinitionBuilder`: the ObjectDefinitionBuilder  builder API has chagned
```
   

```
3. 
4.
