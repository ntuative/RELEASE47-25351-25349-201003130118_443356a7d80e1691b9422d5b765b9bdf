package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1163:int;
      
      private var var_1444:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1163 = param1;
         var_1444 = param2;
         Logger.log("READ NODE: " + var_1163 + ", " + var_1444);
      }
      
      public function get nodeName() : String
      {
         return var_1444;
      }
      
      public function get nodeId() : int
      {
         return var_1163;
      }
   }
}
