package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_207:String = "RWUIUE_PEER";
      
      public static const const_203:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1385:String = "BOT";
      
      public static const const_921:int = 2;
      
      public static const const_1340:int = 0;
      
      public static const const_973:int = 3;
       
      
      private var var_1358:String = "";
      
      private var var_2172:Boolean = false;
      
      private var var_1724:int = 0;
      
      private var var_1900:int = 0;
      
      private var var_2170:Boolean = false;
      
      private var var_1356:String = "";
      
      private var var_2174:Boolean = false;
      
      private var var_864:int = 0;
      
      private var var_2178:Boolean = true;
      
      private var var_1002:int = 0;
      
      private var var_2175:Boolean = false;
      
      private var var_1263:Boolean = false;
      
      private var var_2173:Boolean = false;
      
      private var var_1899:int = 0;
      
      private var var_2171:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_243:Array;
      
      private var var_1265:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1727:int = 0;
      
      private var var_2176:Boolean = false;
      
      private var var_2177:int = 0;
      
      private var var_1901:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_243 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1900;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1900 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_2172;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_2178;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_2178 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_2174 = param1;
      }
      
      public function get motto() : String
      {
         return var_1358;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_2175 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1263;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1358 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_2176;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1901;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1263 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_2171;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1899 = param1;
      }
      
      public function get badges() : Array
      {
         return var_243;
      }
      
      public function get amIController() : Boolean
      {
         return var_2170;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_2170 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_2176 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_2177 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1901 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1356 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_2174;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_2175;
      }
      
      public function get carryItem() : int
      {
         return var_1899;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1265;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1265 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_864 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_2177;
      }
      
      public function get realName() : String
      {
         return var_1356;
      }
      
      public function set webID(param1:int) : void
      {
         var_1727 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_243 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_2173 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_2171 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_864;
      }
      
      public function get webID() : int
      {
         return var_1727;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1002 = param1;
      }
      
      public function get xp() : int
      {
         return var_1724;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_2172 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1002;
      }
      
      public function get canTrade() : Boolean
      {
         return var_2173;
      }
      
      public function set xp(param1:int) : void
      {
         var_1724 = param1;
      }
   }
}
