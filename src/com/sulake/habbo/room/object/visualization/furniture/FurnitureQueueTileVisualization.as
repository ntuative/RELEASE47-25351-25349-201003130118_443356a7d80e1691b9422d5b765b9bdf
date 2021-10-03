package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1126:int = 1;
      
      private static const const_1031:int = 3;
      
      private static const const_1127:int = 2;
      
      private static const const_1125:int = 15;
       
      
      private var var_910:int;
      
      private var var_219:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_219 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1127)
         {
            var_219 = new Array();
            var_219.push(const_1126);
            var_910 = const_1125;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_910 > 0)
         {
            --var_910;
         }
         if(var_910 == 0)
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
