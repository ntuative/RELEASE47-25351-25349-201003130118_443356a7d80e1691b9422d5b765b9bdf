package com.sulake.core.utils
{
   import deng.fzip.FZip;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   
   public class ZipLoader extends LibraryLoader
   {
       
      
      private var var_419:FZip;
      
      private var var_1298:Array;
      
      private var var_2084:uint = 0;
      
      private var var_873:int = 0;
      
      private var var_2380:Array;
      
      public function ZipLoader(param1:Boolean)
      {
         super(param1);
         var_1298 = new Array();
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log(param1.text);
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,0));
      }
      
      public function get resources() : Array
      {
         return var_1298;
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.target as LoaderInfo;
         var _loc3_:String = getQualifiedClassName(var_17.content);
         var_1298.push(var_17.contentLoaderInfo.applicationDomain.getDefinition(_loc3_));
         ++var_873;
         if(var_1298.length == var_2084)
         {
            var_17.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoaderComplete);
            var_17.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,0));
         }
         else
         {
            var_17.loadBytes(var_419.getFileAt(var_873).content);
         }
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null, param3:int = 1) : void
      {
         var_322 = param1;
         if(var_419)
         {
            var_419.close();
         }
         var_419 = new FZip();
         var_419.addEventListener(Event.COMPLETE,onComplete);
         var_419.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_419.addEventListener(ProgressEvent.PROGRESS,onProgress);
         var_419.load(var_322);
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,0));
      }
      
      private function onComplete(param1:Event) : void
      {
         var_873 = 0;
         var_2084 = var_419.getFileCount();
         removeEventListeners();
         var_17.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoaderComplete);
         var_17.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_17.loadBytes(var_419.getFileAt(var_873).content);
      }
   }
}
