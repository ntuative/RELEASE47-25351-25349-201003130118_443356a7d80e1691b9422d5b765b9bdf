package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_812:int;
      
      private var _right:int;
      
      private var var_811:int;
      
      private var var_813:int;
      
      private var var_180:Function;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         var_811 = param1;
         var_813 = param2;
         _right = param3;
         var_812 = param4;
         var_180 = param5 != null ? param5 : nullCallback;
      }
      
      public function set bottom(param1:int) : void
      {
         var_812 = param1;
         var_180(this);
      }
      
      public function get left() : int
      {
         return var_811;
      }
      
      public function get isZeroes() : Boolean
      {
         return var_811 == 0 && _right == 0 && var_813 == 0 && var_812 == 0;
      }
      
      public function get right() : int
      {
         return _right;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set top(param1:int) : void
      {
         var_813 = param1;
         var_180(this);
      }
      
      public function get top() : int
      {
         return var_813;
      }
      
      public function set left(param1:int) : void
      {
         var_811 = param1;
         var_180(this);
      }
      
      public function get bottom() : int
      {
         return var_812;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(var_811,var_813,_right,var_812,param1);
      }
      
      public function dispose() : void
      {
         var_180 = null;
         _disposed = true;
      }
      
      public function set right(param1:int) : void
      {
         _right = param1;
         var_180(this);
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
