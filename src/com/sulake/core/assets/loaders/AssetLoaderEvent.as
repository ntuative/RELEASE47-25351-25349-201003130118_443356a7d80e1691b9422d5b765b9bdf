package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_831:String = "AssetLoaderEventUnload";
      
      public static const const_44:String = "AssetLoaderEventError";
      
      public static const const_805:String = "AssetLoaderEventOpen";
      
      public static const const_993:String = "AssetLoaderEventProgress";
      
      public static const const_864:String = "AssetLoaderEventStatus";
      
      public static const const_33:String = "AssetLoaderEventComplete";
       
      
      private var var_368:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_368 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_368;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_368);
      }
   }
}
