package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _password:String;
      
      private var var_1940:int;
      
      private var var_1673:int;
      
      private var var_1941:Boolean;
      
      private var var_1939:Boolean;
      
      private var var_1938:Array;
      
      private var var_1679:Boolean;
      
      private var var_1235:int;
      
      private var _name:String;
      
      private var _roomId:int;
      
      private var var_621:Array;
      
      private var var_1205:String;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get doorMode() : int
      {
         return var_1673;
      }
      
      public function get description() : String
      {
         return var_1205;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1939;
      }
      
      public function get maximumVisitors() : int
      {
         return var_1940;
      }
      
      public function set description(param1:String) : void
      {
         var_1205 = param1;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1679 = param1;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1940 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get categoryId() : int
      {
         return var_1235;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1938;
      }
      
      public function get tags() : Array
      {
         return var_621;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1679;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1673 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1941 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_621 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1938 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1235 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1941;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1939 = param1;
      }
   }
}
