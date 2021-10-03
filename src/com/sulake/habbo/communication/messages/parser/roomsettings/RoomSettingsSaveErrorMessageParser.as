package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1543:int = 9;
      
      public static const const_1545:int = 4;
      
      public static const const_1456:int = 1;
      
      public static const const_1142:int = 10;
      
      public static const const_1486:int = 2;
      
      public static const const_1166:int = 7;
      
      public static const const_1326:int = 11;
      
      public static const const_1468:int = 3;
      
      public static const const_1376:int = 8;
      
      public static const const_1192:int = 5;
      
      public static const const_1597:int = 6;
      
      public static const const_1319:int = 12;
       
      
      private var var_2242:String;
      
      private var _roomId:int;
      
      private var var_1185:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2242;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1185 = param1.readInteger();
         var_2242 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1185;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
