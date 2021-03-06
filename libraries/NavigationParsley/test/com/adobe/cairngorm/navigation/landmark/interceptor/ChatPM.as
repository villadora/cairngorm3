/**
 *  Copyright (c) 2007 - 2009 Adobe
 *  All rights reserved.
 *
 *  Permission is hereby granted, free of charge, to any person obtaining
 *  a copy of this software and associated documentation files (the "Software"),
 *  to deal in the Software without restriction, including without limitation
 *  the rights to use, copy, modify, merge, publish, distribute, sublicense,
 *  and/or sell copies of the Software, and to permit persons to whom the
 *  Software is furnished to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included
 *  in all copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 *  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 *  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 *  IN THE SOFTWARE.
 */
package com.adobe.cairngorm.navigation.landmark.interceptor
{
	import org.spicefactory.parsley.core.messaging.MessageProcessor;

	[Landmark(name="content.chat")]
	public class ChatPM
	{
		public var enterInterceptorFired:Boolean;
		public var exitInterceptorFired:Boolean;
		public var onEnterFired:Boolean;
		public var onExitFired:Boolean;
		
		[EnterInterceptor]
		public function onEnterInterceptor(processor:MessageProcessor):void
		{
			this.enterInterceptorFired = true;
			processor.resume();
		}
		
		[ExitInterceptor]
		public function onExitInterceptor(processor:MessageProcessor):void
		{
			this.exitInterceptorFired = true;
			processor.resume();
		}
		
		[Enter(time="every")]
		public function onEnter():void
		{
			this.onEnterFired = true;
		}
		
		[Exit]
		public function onExit():void
		{
			this.onExitFired = true;
		}		
	}
}