package com.sulake.habbo.moderation
{
   public class BanDefinition
   {
       
      
      private var var_1997:int;
      
      private var _name:String;
      
      public function BanDefinition(param1:String, param2:int)
      {
         super();
         _name = param1;
         var_1997 = param2;
      }
      
      public function get banLengthHours() : int
      {
         return var_1997;
      }
      
      public function get name() : String
      {
         return _name;
      }
   }
}
