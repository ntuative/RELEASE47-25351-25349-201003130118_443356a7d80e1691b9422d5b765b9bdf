package com.sulake.core.window.utils
{
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class MouseEventQueue extends GenericEventQueue
   {
       
      
      protected var var_1372:Point;
      
      public function MouseEventQueue(param1:IEventDispatcher)
      {
         super(param1);
         var_1372 = new Point();
         _eventDispatcher.addEventListener(MouseEvent.CLICK,method_2,false);
         _eventDispatcher.addEventListener(MouseEvent.DOUBLE_CLICK,method_2,false);
         _eventDispatcher.addEventListener(MouseEvent.MOUSE_DOWN,method_2,false);
         _eventDispatcher.addEventListener(MouseEvent.MOUSE_MOVE,method_2,false);
         _eventDispatcher.addEventListener(MouseEvent.MOUSE_UP,method_2,false);
         _eventDispatcher.addEventListener(MouseEvent.MOUSE_WHEEL,method_2,false);
      }
      
      public function get mousePosition() : Point
      {
         return var_1372;
      }
      
      private function method_2(param1:MouseEvent) : void
      {
         var_1372.x = param1.stageX;
         var_1372.y = param1.stageY;
         var_288.push(param1);
      }
      
      override public function dispose() : void
      {
         if(!_disposed)
         {
            _eventDispatcher.removeEventListener(MouseEvent.CLICK,method_2,false);
            _eventDispatcher.removeEventListener(MouseEvent.DOUBLE_CLICK,method_2,false);
            _eventDispatcher.removeEventListener(MouseEvent.MOUSE_DOWN,method_2,false);
            _eventDispatcher.removeEventListener(MouseEvent.MOUSE_MOVE,method_2,false);
            _eventDispatcher.removeEventListener(MouseEvent.MOUSE_UP,method_2,false);
            _eventDispatcher.removeEventListener(MouseEvent.MOUSE_WHEEL,method_2,false);
            super.dispose();
         }
      }
   }
}
