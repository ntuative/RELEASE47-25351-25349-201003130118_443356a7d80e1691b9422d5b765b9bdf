package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_541:String = "";
      
      private var var_1725:String = "";
      
      private var var_1726:int = 0;
      
      private var var_1724:int = 0;
      
      private var _type:int = 0;
      
      private var var_1723:String = "";
      
      private var var_1215:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1727:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1726 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1723 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_541 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_1215 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1726;
      }
      
      public function set webID(param1:int) : void
      {
         var_1727 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1723;
      }
      
      public function set custom(param1:String) : void
      {
         var_1725 = param1;
      }
      
      public function get figure() : String
      {
         return var_541;
      }
      
      public function get sex() : String
      {
         return var_1215;
      }
      
      public function get custom() : String
      {
         return var_1725;
      }
      
      public function get webID() : int
      {
         return var_1727;
      }
      
      public function set xp(param1:int) : void
      {
         var_1724 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1724;
      }
   }
}
