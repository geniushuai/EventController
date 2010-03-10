﻿/**
 * VERSION: 1.2.01
 * DATE: 04/09/2009
 * AS3 (AS2 version is also available)
 * UPDATES AND DOCUMENTATION AT: http://fla.as/ec
 * ...
 * @author Ben Fhala with support by Core ASS team @Everything Nice inc.
 * @site http://fla.as/ec
 * @date 03/01/2009
 * Copyright (c) 2009-2010 Everything Nice Inc.
 * Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php 
 **/ 
package _as.fla.events{
/**
 * EC class is a shorthand shortcut to the EventController class. why type so much when you can type less. 
 * It doesn't do more it actually does nothing, All it does is hides the long paths.<br/><br/>
 *
 * instead of typing EventController.addEventListener wouldn't it be nicer if you could type EC.add ? well you can !<br/>
 * instead of typing EventController.removeEventListener wouldn't it be so much sweeter to just type EC.rem ? <br/>
 * well event if you don't think so you can ;)<br/>
 *
 * and the fun and loving EventController.log why type all that when you can just type EC.log 
 * so that's all this class is the documentation doubles up so its best to read the documentation on the EventController 
 * and then pick your way into working with the EC to cut down your typing.
 *
 *  You can:
 *  <li> stop worrying about events and memory leaks </li>
 *  <li> manage events without extra code and without changing your style of coding. </li>
 *  <li> create cluster names to events for quicker monitoring and removal </li>
 *  <li> remove and add single events the same old and good way without worries if the event has been added already.
 *          the manager will validate that you can not add the same event more then once with the same prams. </li>
 *  <li> remove all events of an object with one simple line of code </li>
 *  <li> remove all events of a cluster of objects with one simple line of code </li>
 * @see _as.fla.events.EventController#addEventListener() EventController.addEventListener() - alias EC.add
 * @see _as.fla.events.EventController#removeEventListener() EventController.removeEventListener() - alias EC.rem
 * @see _as.fla.events.EventController#log() EventController.log() - alias EC.log
    **/
	public class EC{
		/**
         *
		 * alias to EventController.addEventListener().
         * @copy _as.fla.events.EventController#addEventListener() 
		 * @see _as.fla.events.EventController#addEventListener() EventController.addEventListener() - alias EC.add
		 * @see _as.fla.events.EventController#UNCLUSTERED
		 * @see http://help.adobe.com/en_US/AS3LCR/Flash_10.0/flash/events/EventDispatcher.html#addEventListener() EventDispatcher.addEventListener()
         *
         */	
		public static const add:Function = EventController.addEventListener; //shortcut
		/**
		 * alias to EventController.removeEventListener().
         * @copy _as.fla.events.EventController#removeEventListener() 
		 * @see _as.fla.events.EventController#removeEventListener() EventController.removeEventListener() - alias EC.rem
		 * @see _as.fla.events.EventController#removeObjEvents()
		 * @see _as.fla.events.EventController#removeClusterEvents()
		 * @see http://help.adobe.com/en_US/AS3LCR/Flash_10.0/flash/events/EventDispatcher.html#removeEventListener() EventDispatcher.removeEventListener()
         *
         */
		public static const rem:Function = EventController.removeEventListener; 
		/**
       	 * alias to EventController.log().
		 * @copy _as.fla.events.EventController#log() 
         * @see _as.fla.events.EventController#log() EventController.log() - alias EC.log
		 *
         */		
		public static const log:Function = EventController.log; 
		
	}
	
}