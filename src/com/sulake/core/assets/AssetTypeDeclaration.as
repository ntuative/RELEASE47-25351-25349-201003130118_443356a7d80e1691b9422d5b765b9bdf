package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1887:Class;
      
      private var var_1886:Class;
      
      private var var_1885:String;
      
      private var var_1225:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1885 = param1;
         var_1886 = param2;
         var_1887 = param3;
         if(rest == null)
         {
            var_1225 = new Array();
         }
         else
         {
            var_1225 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1887;
      }
      
      public function get assetClass() : Class
      {
         return var_1886;
      }
      
      public function get mimeType() : String
      {
         return var_1885;
      }
      
      public function get fileTypes() : Array
      {
         return var_1225;
      }
   }
}
