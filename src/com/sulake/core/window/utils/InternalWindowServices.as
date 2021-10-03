package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_118:DisplayObject;
      
      private var var_2333:uint;
      
      private var var_892:IWindowToolTipAgentService;
      
      private var var_893:IWindowMouseScalingService;
      
      private var var_235:IWindowContext;
      
      private var var_891:IWindowFocusManagerService;
      
      private var var_894:IWindowMouseListenerService;
      
      private var var_890:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2333 = 0;
         var_118 = param2;
         var_235 = param1;
         var_890 = new WindowMouseDragger(param2);
         var_893 = new WindowMouseScaler(param2);
         var_894 = new WindowMouseListener(param2);
         var_891 = new FocusManager(param2);
         var_892 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_893;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_891;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_892;
      }
      
      public function dispose() : void
      {
         if(var_890 != null)
         {
            var_890.dispose();
            var_890 = null;
         }
         if(var_893 != null)
         {
            var_893.dispose();
            var_893 = null;
         }
         if(var_894 != null)
         {
            var_894.dispose();
            var_894 = null;
         }
         if(var_891 != null)
         {
            var_891.dispose();
            var_891 = null;
         }
         if(var_892 != null)
         {
            var_892.dispose();
            var_892 = null;
         }
         var_235 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_894;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_890;
      }
   }
}
