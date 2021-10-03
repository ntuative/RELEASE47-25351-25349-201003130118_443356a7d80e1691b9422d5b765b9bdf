package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var var_468:ToolbarIconGroup;
      
      private var var_987:Boolean = false;
      
      private var var_1804:String;
      
      private var var_907:Number;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_989:String = "-1";
      
      private var _window:IBitmapWrapperWindow;
      
      private var var_35:String = "-1";
      
      private var var_96:IRegionWindow;
      
      private var _bitmapData:BitmapData;
      
      private var var_658:String;
      
      private var var_1806:int;
      
      private var var_657:Timer;
      
      private var var_1441:Array;
      
      private var var_990:ToolbarIconBouncer;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _events:IEventDispatcher;
      
      private var var_2296:Array;
      
      private var var_254:ToolbarBarMenuAnimator;
      
      private var var_397:ToolbarIconAnimator;
      
      private var var_567:Array;
      
      private var var_807:Array;
      
      private var var_806:String = "-1";
      
      private var var_2366:Boolean = true;
      
      private var var_988:Array;
      
      private var var_1193:Timer;
      
      private var var_1805:int;
      
      private var var_83:Number = 0;
      
      private var _y:Number = 0;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         var_567 = new Array();
         var_807 = new Array();
         var_2296 = new Array();
         var_990 = new ToolbarIconBouncer(0.8,1);
         super();
         var_468 = param1;
         _windowManager = param2;
         _assetLibrary = param3;
         var_658 = param4;
         _events = param5;
         var_254 = param6;
         var_1193 = new Timer(40,40);
         var_1193.addEventListener(TimerEvent.TIMER,updateBouncer);
         var_96 = param2.createWindow("TOOLBAR_ICON_" + param4 + "_REGION","",WindowType.const_467,HabboWindowStyle.const_41,HabboWindowParam.const_40,new Rectangle(0,0,1,1),onMouseEvent) as IRegionWindow;
         var_96.background = true;
         var_96.alphaTreshold = 0;
         var_96.visible = false;
         _window = IBitmapWrapperWindow(param2.createWindow("TOOLBAR_ICON_" + param4,"",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_41,HabboWindowParam.const_41,new Rectangle(0,0,1,1),onMouseEvent,0));
         var_96.addChild(_window);
         _window.addEventListener(WindowEvent.const_45,onWindowResized);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return var_1441[var_988.indexOf(param1)];
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return var_1805;
      }
      
      public function get iconId() : String
      {
         return var_658;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         updateRegion();
      }
      
      public function changePosition(param1:Number) : void
      {
         var_907 = param1;
         updateRegion();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         exists = param1;
         setAnimator();
      }
      
      public function set state(param1:String) : void
      {
         var_35 = param1;
         exists = true;
         setAnimator();
         setTooltip();
      }
      
      private function updateRegion() : void
      {
         if(var_96 == null || _window == null)
         {
            return;
         }
         var_96.width = _window.width;
         var_96.height = _window.height;
         var _loc1_:Boolean = false;
         if(_loc1_)
         {
            var_83 = (0 - 0) / 2;
            _y = var_907 + (0 - 0) / 2;
         }
         else
         {
            var_83 = var_907 + (0 - 0) / 2;
            _y = (0 - 0) / 2;
         }
         var_96.x = var_83;
         var_96.y = _y;
      }
      
      public function dispose() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_96 != null)
         {
            var_96.dispose();
            var_96 = null;
         }
         var_567 = null;
         var_807 = null;
         exists = false;
         _windowManager = null;
         _events = null;
         var_254 = null;
         var_397 = null;
         _bitmapData = null;
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(var_567.indexOf(param1) < 0)
         {
            var_567.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            var_807.push(_loc4_);
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!var_987)
         {
            return;
         }
         var _loc3_:StateItem = getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(var_254)
               {
                  var_254.repositionWindow(var_658,true);
               }
               if(_events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_57);
                  _loc4_.iconId = var_658;
                  _events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(false)
               {
                  if(_loc3_.hasStateOver)
                  {
                     state = _loc3_.stateOver;
                  }
                  else
                  {
                     state = var_989;
                  }
               }
               break;
            case WindowMouseEvent.const_29:
               if(false)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     state = _loc3_.defaultState;
                  }
                  else
                  {
                     state = var_806;
                  }
               }
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return var_567.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = var_807[var_567.indexOf(param1)];
         return _loc2_.lockToIcon;
      }
      
      public function set exists(param1:Boolean) : void
      {
         var_987 = param1;
         if(var_96 != null)
         {
            var_96.visible = var_987;
         }
      }
      
      private function setTooltip() : void
      {
         if(var_96 == null)
         {
            return;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            var_96.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            var_96.toolTipCaption = "${toolbar.icon.tooltip." + var_1804.toLowerCase() + "}";
         }
         var_96.toolTipDelay = 100;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(var_254 != null)
         {
            var_254.animateWindowIn(this,param1,param2,var_658,param3,param4,getMenuYieldList(param1));
         }
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(var_397 != null && _window != null)
         {
            var_397.update(_window);
            if(var_397.hasNextState())
            {
               state = var_397.nextState;
            }
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_1441 = new Array();
         var_988 = new Array();
         var_1804 = param1.@id;
         var_1805 = int(param1.@window_offset_from_icon);
         var_1806 = int(param1.@window_margin);
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               var_989 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               var_806 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               var_988.push(_loc5_.id);
               var_1441.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(var_989 == "-1")
                  {
                     var_989 = _loc5_.id;
                  }
                  if(var_806 == "-1")
                  {
                     var_806 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         var_35 = var_806;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         exists = true;
         _bitmapData = param1;
         setAnimator();
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_254 != null)
         {
            var_254.hideWindow(param1,param2,var_658,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_254 != null)
         {
            var_254.positionWindow(this,param1,param2,var_658,param3,getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(var_254 != null)
         {
            var_254.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get exists() : Boolean
      {
         return var_987;
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(var_990 != null && _window != null)
         {
            var_990.update();
            _window.y = var_990.location;
         }
      }
      
      private function setAnimator() : void
      {
         if(var_657 != null)
         {
            var_657.stop();
            var_657 = null;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && var_987)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            var_397 = new ToolbarIconAnimator(_loc1_,_assetLibrary,_window,var_83,_y,_bitmapData);
            if(false)
            {
               var_657 = new Timer(_loc1_.timer);
               var_657.addEventListener(TimerEvent.TIMER,updateAnimator);
               var_657.start();
            }
            if(_loc1_.bounce)
            {
               var_990.reset(-7);
               var_1193.reset();
               var_1193.start();
            }
         }
         else
         {
            var_397 = null;
            _window.bitmap = null;
         }
      }
      
      public function get windowMargin() : Number
      {
         return var_1806 + var_468.windowMargin;
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return getStateObject(var_35);
      }
      
      public function get window() : IWindow
      {
         return var_96;
      }
      
      public function get x() : Number
      {
         return var_83;
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = var_807[var_567.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return var_468;
      }
   }
}
