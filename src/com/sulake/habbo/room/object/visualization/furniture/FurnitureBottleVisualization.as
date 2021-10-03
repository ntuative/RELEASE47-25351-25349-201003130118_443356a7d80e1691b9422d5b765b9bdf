package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1031:int = -1;
      
      private static const const_748:int = 20;
      
      private static const const_488:int = 9;
       
      
      private var var_557:Boolean = false;
      
      private var var_219:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_219 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_557 = true;
            var_219 = new Array();
            var_219.push(const_1031);
            return;
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_557)
            {
               var_557 = false;
               var_219 = new Array();
               var_219.push(const_748);
               var_219.push(const_488 + param1);
               var_219.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
         {
            if(false)
            {
               super.setAnimation(var_219.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
