package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_1821:Number = 0;
      
      private var var_1824:Number = 0;
      
      private var var_1823:Number = 0;
      
      private var var_1822:Number = 0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1824 = param1;
         var_1823 = param2;
         var_1821 = param3;
         var_1822 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1824;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1821;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1823;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1822;
      }
   }
}
