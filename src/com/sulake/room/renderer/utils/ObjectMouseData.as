package com.sulake.room.renderer.utils
{
   public class ObjectMouseData
   {
       
      
      private var var_1860:String = "";
      
      private var var_151:String = "";
      
      public function ObjectMouseData()
      {
         super();
      }
      
      public function set spriteTag(param1:String) : void
      {
         var_1860 = param1;
      }
      
      public function set objectId(param1:String) : void
      {
         var_151 = param1;
      }
      
      public function get spriteTag() : String
      {
         return var_1860;
      }
      
      public function get objectId() : String
      {
         return var_151;
      }
   }
}
