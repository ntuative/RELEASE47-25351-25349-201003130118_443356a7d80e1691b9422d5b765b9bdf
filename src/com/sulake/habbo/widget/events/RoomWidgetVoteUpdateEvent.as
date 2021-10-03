package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_108:String = "RWPUE_VOTE_RESULT";
      
      public static const const_112:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1139:int;
      
      private var var_964:String;
      
      private var var_647:Array;
      
      private var var_952:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_964 = param2;
         var_952 = param3;
         var_647 = param4;
         if(var_647 == null)
         {
            var_647 = [];
         }
         var_1139 = param5;
      }
      
      public function get votes() : Array
      {
         return var_647.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1139;
      }
      
      public function get question() : String
      {
         return var_964;
      }
      
      public function get choices() : Array
      {
         return var_952.slice();
      }
   }
}
