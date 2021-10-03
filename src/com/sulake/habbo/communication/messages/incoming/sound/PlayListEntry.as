package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1903:int;
      
      private var var_1906:int = 0;
      
      private var var_1904:String;
      
      private var var_1905:int;
      
      private var var_1902:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1903 = param1;
         var_1905 = param2;
         var_1902 = param3;
         var_1904 = param4;
      }
      
      public function get length() : int
      {
         return var_1905;
      }
      
      public function get name() : String
      {
         return var_1902;
      }
      
      public function get creator() : String
      {
         return var_1904;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1906;
      }
      
      public function get id() : int
      {
         return var_1903;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1906 = param1;
      }
   }
}
