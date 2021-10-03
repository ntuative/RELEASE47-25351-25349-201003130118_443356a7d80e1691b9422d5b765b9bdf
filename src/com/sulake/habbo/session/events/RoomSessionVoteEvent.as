package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_108:String = "RSPE_VOTE_RESULT";
      
      public static const const_112:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1139:int = 0;
      
      private var var_964:String = "";
      
      private var var_647:Array;
      
      private var var_952:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_952 = [];
         var_647 = [];
         super(param1,param2,param7,param8);
         var_964 = param3;
         var_952 = param4;
         var_647 = param5;
         if(var_647 == null)
         {
            var_647 = [];
         }
         var_1139 = param6;
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
