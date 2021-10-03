package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1968:int;
      
      private var var_1967:int;
      
      private var var_2011:Boolean;
      
      private var var_2010:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2009:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1967 = param1;
         var_1968 = param2;
         var_2010 = param3;
         var_2009 = param4;
         var_2011 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1967,var_1968,var_2010,var_2009,int(var_2011)];
      }
      
      public function dispose() : void
      {
      }
   }
}
