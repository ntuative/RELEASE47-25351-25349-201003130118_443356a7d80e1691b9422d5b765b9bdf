package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_388:uint;
      
      private var var_971:IUnknown;
      
      private var var_1164:String;
      
      private var var_970:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_970 = param1;
         var_1164 = getQualifiedClassName(var_970);
         var_971 = param2;
         var_388 = 0;
      }
      
      public function get iid() : IID
      {
         return var_970;
      }
      
      public function get disposed() : Boolean
      {
         return var_971 == null;
      }
      
      public function get references() : uint
      {
         return var_388;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_388) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_971;
      }
      
      public function get iis() : String
      {
         return var_1164;
      }
      
      public function reserve() : uint
      {
         return ++var_388;
      }
      
      public function dispose() : void
      {
         var_970 = null;
         var_1164 = null;
         var_971 = null;
         var_388 = 0;
      }
   }
}
