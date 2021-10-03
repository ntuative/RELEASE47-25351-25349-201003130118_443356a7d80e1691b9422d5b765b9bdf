package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_293:String = "WE_CHILD_RESIZED";
      
      public static const const_1174:String = "WE_CLOSE";
      
      public static const const_1240:String = "WE_DESTROY";
      
      public static const const_151:String = "WE_CHANGE";
      
      public static const const_1217:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1496:String = "WE_PARENT_RESIZE";
      
      public static const const_94:String = "WE_UPDATE";
      
      public static const const_1208:String = "WE_MAXIMIZE";
      
      public static const const_387:String = "WE_DESTROYED";
      
      public static const const_1017:String = "WE_UNSELECT";
      
      public static const const_1207:String = "WE_MAXIMIZED";
      
      public static const const_1562:String = "WE_UNLOCKED";
      
      public static const const_362:String = "WE_CHILD_REMOVED";
      
      public static const const_159:String = "WE_OK";
      
      public static const const_45:String = "WE_RESIZED";
      
      public static const const_1256:String = "WE_ACTIVATE";
      
      public static const const_252:String = "WE_ENABLED";
      
      public static const const_456:String = "WE_CHILD_RELOCATED";
      
      public static const const_1235:String = "WE_CREATE";
      
      public static const const_705:String = "WE_SELECT";
      
      public static const const_176:String = "";
      
      public static const const_1499:String = "WE_LOCKED";
      
      public static const const_1550:String = "WE_PARENT_RELOCATE";
      
      public static const const_1607:String = "WE_CHILD_REMOVE";
      
      public static const const_1494:String = "WE_CHILD_RELOCATE";
      
      public static const const_1575:String = "WE_LOCK";
      
      public static const const_196:String = "WE_FOCUSED";
      
      public static const const_720:String = "WE_UNSELECTED";
      
      public static const const_996:String = "WE_DEACTIVATED";
      
      public static const const_1329:String = "WE_MINIMIZED";
      
      public static const const_1592:String = "WE_ARRANGED";
      
      public static const const_1595:String = "WE_UNLOCK";
      
      public static const const_1599:String = "WE_ATTACH";
      
      public static const const_1176:String = "WE_OPEN";
      
      public static const const_1270:String = "WE_RESTORE";
      
      public static const const_1559:String = "WE_PARENT_RELOCATED";
      
      public static const const_1158:String = "WE_RELOCATE";
      
      public static const const_1497:String = "WE_CHILD_RESIZE";
      
      public static const const_1580:String = "WE_ARRANGE";
      
      public static const const_1156:String = "WE_OPENED";
      
      public static const const_1337:String = "WE_CLOSED";
      
      public static const const_1598:String = "WE_DETACHED";
      
      public static const const_1482:String = "WE_UPDATED";
      
      public static const const_1330:String = "WE_UNFOCUSED";
      
      public static const const_430:String = "WE_RELOCATED";
      
      public static const const_1139:String = "WE_DEACTIVATE";
      
      public static const const_219:String = "WE_DISABLED";
      
      public static const const_526:String = "WE_CANCEL";
      
      public static const const_710:String = "WE_ENABLE";
      
      public static const const_1191:String = "WE_ACTIVATED";
      
      public static const const_1381:String = "WE_FOCUS";
      
      public static const const_1555:String = "WE_DETACH";
      
      public static const const_1280:String = "WE_RESTORED";
      
      public static const const_1284:String = "WE_UNFOCUS";
      
      public static const const_53:String = "WE_SELECTED";
      
      public static const const_1215:String = "WE_PARENT_RESIZED";
      
      public static const const_1163:String = "WE_CREATED";
      
      public static const const_1500:String = "WE_ATTACHED";
      
      public static const const_1334:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1601:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1378:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1601 = param3;
         var_1378 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1378;
      }
      
      public function get related() : IWindow
      {
         return var_1601;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1378 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
