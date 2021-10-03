package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1262:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_854:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1262 = param1;
         var_854 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_854;
      }
      
      public function get identifier() : IID
      {
         return var_1262;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1262 = null;
            while(false)
            {
               var_854.pop();
            }
            var_854 = null;
         }
      }
   }
}
