package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPollMessage extends RoomWidgetMessage
   {
      
      public static const const_616:String = "RWPM_START";
      
      public static const ANSWER:String = "RWPM_ANSWER";
      
      public static const const_354:String = "RWPM_REJECT";
       
      
      private var var_1191:int = 0;
      
      private var var_1683:Array = null;
      
      private var _id:int = -1;
      
      public function RoomWidgetPollMessage(param1:String, param2:int)
      {
         _id = param2;
         super(param1);
      }
      
      public function get questionId() : int
      {
         return var_1191;
      }
      
      public function set questionId(param1:int) : void
      {
         var_1191 = param1;
      }
      
      public function set answers(param1:Array) : void
      {
         var_1683 = param1;
      }
      
      public function get answers() : Array
      {
         return var_1683;
      }
      
      public function get id() : int
      {
         return _id;
      }
   }
}
