package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_21:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_928:String;
      
      protected var var_442:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         var_442 = param1;
         var_928 = param2;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return var_442;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            var_21 = DisplayAsset(param1).var_21;
            var_442 = DisplayAsset(param1).var_442;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function get url() : String
      {
         return var_928;
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            var_21 = param1 as DisplayObject;
            if(var_21 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            var_21 = DisplayAsset(param1).var_21;
            var_442 = DisplayAsset(param1).var_442;
            if(var_21 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function get content() : Object
      {
         return var_21;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            if(false)
            {
               if(var_21.loaderInfo.loader != null)
               {
                  var_21.loaderInfo.loader.unload();
               }
            }
            var_21 = null;
            var_442 = null;
            _disposed = true;
            var_928 = null;
         }
      }
   }
}