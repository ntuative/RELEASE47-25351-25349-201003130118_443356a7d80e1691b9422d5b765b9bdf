package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_119:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1248:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_119);
         var_1248 = param1;
      }
      
      public function get vote() : int
      {
         return var_1248;
      }
   }
}
