package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1055:int = 31;
      
      private static const const_1031:int = 32;
      
      private static const const_487:int = 30;
      
      private static const const_748:int = 20;
      
      private static const const_488:int = 10;
       
      
      private var var_557:Boolean = false;
      
      private var var_219:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_219 = new Array();
         super();
         super.setAnimation(const_487);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_557 = true;
            var_219 = new Array();
            var_219.push(const_1055);
            var_219.push(const_1031);
            return;
         }
         if(param1 > 0 && param1 <= const_488)
         {
            if(var_557)
            {
               var_557 = false;
               var_219 = new Array();
               if(_direction == 2)
               {
                  var_219.push(const_748 + 5 - param1);
                  var_219.push(const_488 + 5 - param1);
               }
               else
               {
                  var_219.push(const_748 + param1);
                  var_219.push(const_488 + param1);
               }
               var_219.push(const_487);
               return;
            }
            super.setAnimation(const_487);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
