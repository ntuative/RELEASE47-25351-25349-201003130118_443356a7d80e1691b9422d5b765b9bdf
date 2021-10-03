package com.sulake.habbo.widget.messages
{
   public class RoomWidgetLetUserInMessage extends RoomWidgetMessage
   {
      
      public static const const_500:String = "RWLUIM_LET_USER_IN";
       
      
      private var _userName:String;
      
      private var var_2014:Boolean;
      
      public function RoomWidgetLetUserInMessage(param1:String, param2:Boolean)
      {
         super(const_500);
         _userName = param1;
         var_2014 = param2;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
      
      public function get canEnter() : Boolean
      {
         return var_2014;
      }
   }
}
