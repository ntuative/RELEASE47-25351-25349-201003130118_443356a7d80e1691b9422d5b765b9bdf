package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_2263:Boolean;
      
      protected var var_1439:Number;
      
      protected var var_2262:Boolean;
      
      protected var _type:int;
      
      protected var var_2264:Boolean;
      
      protected var var_1903:int;
      
      protected var var_2265:Boolean;
      
      protected var var_1379:String;
      
      protected var var_1793:int;
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var var_1957:String;
      
      protected var var_1788:Boolean;
      
      protected var _category:int;
      
      protected var var_1790:int;
      
      protected var var_2261:int;
      
      protected var var_1791:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         _id = param1;
         _type = param2;
         _ref = param3;
         _category = param4;
         var_1788 = param5;
         var_2265 = param6;
         var_2263 = param7;
         var_2262 = param8;
         var_1379 = param9;
         var_1439 = param10;
         var_2261 = param11;
         var_1791 = param12;
         var_1790 = param13;
         var_1793 = param14;
         var_1957 = param15;
         var_1903 = param16;
      }
      
      public function get locked() : Boolean
      {
         return var_2264;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get extra() : Number
      {
         return var_1439;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2264 = param1;
      }
      
      public function get ref() : int
      {
         return _ref;
      }
      
      public function get songId() : int
      {
         return var_1903;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get sellable() : Boolean
      {
         return var_2262;
      }
      
      public function get slotId() : String
      {
         return var_1957;
      }
      
      public function get expires() : int
      {
         return var_2261;
      }
      
      public function get creationYear() : int
      {
         return var_1793;
      }
      
      public function get creationDay() : int
      {
         return var_1791;
      }
      
      public function get stuffData() : String
      {
         return var_1379;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2265;
      }
      
      public function get groupable() : Boolean
      {
         return var_1788;
      }
      
      public function get creationMonth() : int
      {
         return var_1790;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2263;
      }
   }
}
