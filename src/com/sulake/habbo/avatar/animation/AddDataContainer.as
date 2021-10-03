package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1464:String;
      
      private var var_1529:String;
      
      private var var_1050:String;
      
      private var var_423:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1464 = String(param1.@align);
         var_1050 = String(param1.@base);
         var_1529 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_423 = Number(_loc2_);
            if(var_423 > 1)
            {
               var_423 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1464;
      }
      
      public function get ink() : String
      {
         return var_1529;
      }
      
      public function get base() : String
      {
         return var_1050;
      }
      
      public function get isBlended() : Boolean
      {
         return var_423 != 1;
      }
      
      public function get blend() : Number
      {
         return var_423;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
