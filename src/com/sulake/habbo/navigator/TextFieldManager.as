package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var var_2288:Boolean;
      
      private var var_1388:int;
      
      private var var_2286:String = "";
      
      private var var_68:ITextFieldWindow;
      
      private var var_2287:uint;
      
      private var _orgTextBackgroundColor:uint;
      
      private var _navigator:HabboNavigator;
      
      private var var_1285:String = "";
      
      private var var_146:IWindowContainer;
      
      private var var_289:Boolean;
      
      private var var_1127:Function;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         _navigator = param1;
         var_68 = param2;
         var_1388 = param3;
         var_1127 = param4;
         if(param5 != null)
         {
            var_289 = true;
            var_1285 = param5;
            var_68.text = param5;
         }
         Util.setProcDirectly(var_68,onInputClick);
         var_68.addEventListener(WindowKeyboardEvent.const_138,checkEnterPress);
         var_68.addEventListener(WindowEvent.const_151,checkMaxLen);
         this.var_2288 = var_68.textBackground;
         this._orgTextBackgroundColor = var_68.textBackgroundColor;
         this.var_2287 = var_68.textColor;
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(var_1127 != null)
            {
               var_1127();
            }
         }
      }
      
      public function goBackToInitialState() : void
      {
         clearErrors();
         if(var_1285 != null)
         {
            var_68.text = var_1285;
            var_289 = true;
         }
         else
         {
            var_68.text = "";
            var_289 = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return var_68;
      }
      
      public function restoreBackground() : void
      {
         var_68.textBackground = this.var_2288;
         var_68.textBackgroundColor = this._orgTextBackgroundColor;
         var_68.textColor = this.var_2287;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_196)
         {
            return;
         }
         if(!var_289)
         {
            return;
         }
         var_68.text = var_2286;
         var_289 = false;
         this.restoreBackground();
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_146 != null)
         {
            var_146.visible = false;
         }
      }
      
      public function displayError(param1:String) : void
      {
         var_68.textBackground = true;
         var_68.textBackgroundColor = 4294021019;
         var_68.textColor = 4278190080;
         if(this.var_146 == null)
         {
            this.var_146 = IWindowContainer(_navigator.getXmlWindow("nav_error_popup"));
            _navigator.refreshButton(this.var_146,"popup_arrow_down",true,null,0);
            IWindowContainer(var_68.parent).addChild(this.var_146);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_146.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         var_146.findChildByName("border").width = _loc2_.width + 15;
         var_146.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         var_68.getLocalPosition(_loc3_);
         this.var_146.x = _loc3_.x;
         this.var_146.y = _loc3_.y - this.var_146.height + 3;
         var _loc4_:IWindow = var_146.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_146.width / 2 - _loc4_.width / 2;
         var_146.x += (0 - 0) / 2;
         this.var_146.visible = true;
      }
      
      public function getText() : String
      {
         if(var_289)
         {
            return var_2286;
         }
         return var_68.text;
      }
      
      private function isInputValid() : Boolean
      {
         return !var_289 && Util.trim(getText()).length > 2;
      }
      
      public function setText(param1:String) : void
      {
         var_289 = false;
         var_68.text = param1;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!isInputValid())
         {
            displayError(param1);
            return false;
         }
         restoreBackground();
         return true;
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = "null";
         if(_loc2_.length > var_1388)
         {
            var_68.text = _loc2_.substring(0,var_1388);
         }
      }
   }
}
