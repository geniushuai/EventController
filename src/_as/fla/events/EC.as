﻿/** * VERSION: 1.2.11 * DATE: 04/09/2009 * MOD: 03/11/2010 * UPDATES AND DOCUMENTATION AT: http://fla.as/ec * ... * @author Ben Fhala  * contributors: Corban Baxter * @site http://fla.as/ec * @date 03/01/2009 * Copyright (c) 2009-2010 Everything Nice Inc. * Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php  **/ package _as.fla.events{/** * EventController Shorthand global manager. why type so much when you can type less.  * It doesn't do more it actually does nothing, All it does is hides the long paths.<br/><br/> * * instead of typing EventController.addEventListener wouldn't it be nicer if you could type EC.add ? well you can !<br/> * instead of typing EventController.removeEventListener wouldn't it be so much sweeter to just type EC.rem ? <br/> * well event if you don't think so you can ;)<br/> * * and the fun and loving EventController.log why type all that when you can just type EC.log  * so that's all this class is the documentation doubles up so its best to read the documentation on the EventController  * and then pick your way into working with the EC to cut down your typing. * *  You can: *  <li> stop worrying about events and memory leaks </li> *  <li> manage events without extra code and without changing your style of coding. </li> *  <li> create cluster names to events for quicker monitoring and removal </li> *  <li> remove and add single events the same old and good way without worries if the event has been added already. *          the manager will validate that you can not add the same event more then once with the same prams. </li> *  <li> remove all events of an object with one simple line of code </li> *  <li> remove all events of a cluster of objects with one simple line of code </li> * @see _as.fla.events.EventController#addEventListener() EventController.addEventListener() - alias EC.add * @see _as.fla.events.EventController#removeEventListener() EventController.removeEventListener() - alias EC.rem * @see _as.fla.events.EventController#log() EventController.log() - alias EC.log    **/	public class EC{		/**         *		 * alias to EventController.addEventListener().         * @copy _as.fla.events.EventController#addEventListener() 		 * @see _as.fla.events.EventController#addEventListener() EventController.addEventListener() - alias EC.add		 * @see _as.fla.events.EventController#UNCLUSTERED		 * @see http://help.adobe.com/en_US/AS3LCR/Flash_10.0/flash/events/EventDispatcher.html#addEventListener() EventDispatcher.addEventListener()         *         */			private static var _lec:LEC;				/**		* @private		*/		public static var rem:Function=remove;				/**		* @private		*/		public function EC():void{			throw("do not insantiate the EC");		}				 		public static function add(_obj:Object,type:String, listener:Function, useCapture:* = false, priority:int = 0, useWeakReference:Boolean = false,clusterID:String=null):Boolean{			return getLEC().add(_obj,type,listener,useCapture,priority,useWeakReference,clusterID);		}		/**		 * alias to EventController.removeEventListener().         * @copy _as.fla.events.EventController#removeEventListener() 		 * @see _as.fla.events.EventController#removeEventListener() EventController.removeEventListener() - alias EC.rem		 * @see _as.fla.events.EventController#removeObjEvents()		 * @see _as.fla.events.EventController#removeClusterEvents()		 * @see http://help.adobe.com/en_US/AS3LCR/Flash_10.0/flash/events/EventDispatcher.html#removeEventListener() EventDispatcher.removeEventListener()         *         */		public static function remove(_obj:*,type:String=null, listener:Function=null, useCapture:Boolean = false):Boolean{			return getLEC().remove(_obj,type,listener,useCapture);		}				/**       	 * alias to EventController.log().		 * @copy _as.fla.events.EventController#log()          * @see _as.fla.events.EventController#log() EventController.log() - alias EC.log		 *         */				public static function log(clustID:*="clusters"):void{			getLEC().log(clustID);		}				internal static function getLEC():LEC{			if(!_lec) _lec = new LEC();						return _lec;		}			}	}