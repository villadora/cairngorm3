cairngorm3
==========

cairngorm3 for parsley-spicelib 3.0


changes in parsley-spicelib 3
----------------------------------

1. MessageProcessor: the message() property's type changed from Object to Message

    public interface MessageProcessor {
    
        /**
	  * The message instance.
	  */
	function get message () : Message;
    
        ....
    }

2. ObjectDefinitionBuilder: