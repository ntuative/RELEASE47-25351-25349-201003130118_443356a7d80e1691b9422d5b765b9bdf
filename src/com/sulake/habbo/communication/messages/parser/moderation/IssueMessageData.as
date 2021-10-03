package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_153:int = 1;
      
      public static const const_1271:int = 3;
      
      public static const const_381:int = 2;
       
      
      private var var_2015:int;
      
      private var var_1980:int;
      
      private var var_2020:int;
      
      private var var_1815:int;
      
      private var var_35:int;
      
      private var var_427:int;
      
      private var var_1294:int;
      
      private var var_2017:int;
      
      private var var_1011:int;
      
      private var _roomResources:String;
      
      private var var_2022:int;
      
      private var var_2023:int;
      
      private var var_2024:String;
      
      private var var_2019:String;
      
      private var var_2021:int = 0;
      
      private var var_1217:String;
      
      private var _message:String;
      
      private var var_1620:int;
      
      private var var_2018:String;
      
      private var var_1235:int;
      
      private var var_631:String;
      
      private var var_2016:String;
      
      private var var_1485:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1011 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2021 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2023;
      }
      
      public function set roomName(param1:String) : void
      {
         var_631 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_2022 = param1;
      }
      
      public function get state() : int
      {
         return var_35;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_631;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1815 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_35 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1980;
      }
      
      public function get priority() : int
      {
         return var_2015 + var_2021;
      }
      
      public function set issueId(param1:int) : void
      {
         var_2017 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_2019;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1485) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1235;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2023 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1294;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2024 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_2022;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1815;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2016 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1217 = param1;
      }
      
      public function get issueId() : int
      {
         return var_2017;
      }
      
      public function set priority(param1:int) : void
      {
         var_2015 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1980 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2024;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2020 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_2019 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1620 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1217;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1294 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2020;
      }
      
      public function set flatId(param1:int) : void
      {
         var_427 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1235 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1485 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1620;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2018 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1485;
      }
      
      public function get reportedUserId() : int
      {
         return var_1011;
      }
      
      public function get flatId() : int
      {
         return var_427;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2016;
      }
      
      public function get reporterUserName() : String
      {
         return var_2018;
      }
   }
}
