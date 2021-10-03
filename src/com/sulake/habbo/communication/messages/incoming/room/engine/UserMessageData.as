package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1171:String = "F";
      
      public static const const_956:String = "M";
       
      
      private var var_83:Number = 0;
      
      private var var_541:String = "";
      
      private var var_2219:int = 0;
      
      private var var_1725:String = "";
      
      private var var_1726:int = 0;
      
      private var var_1724:int = 0;
      
      private var var_1723:String = "";
      
      private var var_1215:String = "";
      
      private var _id:int = 0;
      
      private var var_205:Boolean = false;
      
      private var var_239:int = 0;
      
      private var var_2218:String = "";
      
      private var _name:String = "";
      
      private var var_1727:int = 0;
      
      private var _y:Number = 0;
      
      private var var_82:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_82;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_239;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_205)
         {
            var_239 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_205)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2219;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_205)
         {
            var_1726 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2218;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_205)
         {
            var_1723 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_205)
         {
            var_2218 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_205)
         {
            var_1724 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_205)
         {
            var_541 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_205)
         {
            var_2219 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_205)
         {
            var_1215 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1726;
      }
      
      public function get groupID() : String
      {
         return var_1723;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_205)
         {
            var_1727 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_205)
         {
            var_1725 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_205 = true;
      }
      
      public function get sex() : String
      {
         return var_1215;
      }
      
      public function get figure() : String
      {
         return var_541;
      }
      
      public function get webID() : int
      {
         return var_1727;
      }
      
      public function get custom() : String
      {
         return var_1725;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_205)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_205)
         {
            var_82 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_205)
         {
            var_83 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_83;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1724;
      }
   }
}
