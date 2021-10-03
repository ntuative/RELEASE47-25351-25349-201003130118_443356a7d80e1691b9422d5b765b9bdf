package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1250:String = "WN_CREATED";
      
      public static const const_798:String = "WN_DISABLE";
      
      public static const const_887:String = "WN_DEACTIVATED";
      
      public static const const_1011:String = "WN_OPENED";
      
      public static const const_816:String = "WN_CLOSED";
      
      public static const const_975:String = "WN_DESTROY";
      
      public static const const_1542:String = "WN_ARRANGED";
      
      public static const const_436:String = "WN_PARENT_RESIZED";
      
      public static const const_915:String = "WN_ENABLE";
      
      public static const const_900:String = "WN_RELOCATE";
      
      public static const const_1004:String = "WN_FOCUS";
      
      public static const const_912:String = "WN_PARENT_RELOCATED";
      
      public static const const_369:String = "WN_PARAM_UPDATED";
      
      public static const const_546:String = "WN_PARENT_ACTIVATED";
      
      public static const const_204:String = "WN_RESIZED";
      
      public static const const_937:String = "WN_CLOSE";
      
      public static const const_870:String = "WN_PARENT_REMOVED";
      
      public static const const_241:String = "WN_CHILD_RELOCATED";
      
      public static const const_593:String = "WN_ENABLED";
      
      public static const const_268:String = "WN_CHILD_RESIZED";
      
      public static const const_920:String = "WN_MINIMIZED";
      
      public static const const_679:String = "WN_DISABLED";
      
      public static const const_195:String = "WN_CHILD_ACTIVATED";
      
      public static const const_435:String = "WN_STATE_UPDATED";
      
      public static const const_518:String = "WN_UNSELECTED";
      
      public static const const_393:String = "WN_STYLE_UPDATED";
      
      public static const const_1511:String = "WN_UPDATE";
      
      public static const const_407:String = "WN_PARENT_ADDED";
      
      public static const const_638:String = "WN_RESIZE";
      
      public static const const_633:String = "WN_CHILD_REMOVED";
      
      public static const const_1474:String = "";
      
      public static const const_1005:String = "WN_RESTORED";
      
      public static const const_327:String = "WN_SELECTED";
      
      public static const const_810:String = "WN_MINIMIZE";
      
      public static const const_890:String = "WN_FOCUSED";
      
      public static const const_1242:String = "WN_LOCK";
      
      public static const const_317:String = "WN_CHILD_ADDED";
      
      public static const const_891:String = "WN_UNFOCUSED";
      
      public static const const_360:String = "WN_RELOCATED";
      
      public static const const_827:String = "WN_DEACTIVATE";
      
      public static const const_1310:String = "WN_CRETAE";
      
      public static const const_815:String = "WN_RESTORE";
      
      public static const const_304:String = "WN_ACTVATED";
      
      public static const const_1366:String = "WN_LOCKED";
      
      public static const const_377:String = "WN_SELECT";
      
      public static const const_845:String = "WN_MAXIMIZE";
      
      public static const const_1003:String = "WN_OPEN";
      
      public static const const_707:String = "WN_UNSELECT";
      
      public static const const_1446:String = "WN_ARRANGE";
      
      public static const const_1167:String = "WN_UNLOCKED";
      
      public static const const_1455:String = "WN_UPDATED";
      
      public static const const_938:String = "WN_ACTIVATE";
      
      public static const const_1391:String = "WN_UNLOCK";
      
      public static const const_909:String = "WN_MAXIMIZED";
      
      public static const const_788:String = "WN_DESTROYED";
      
      public static const const_838:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1601,cancelable);
      }
   }
}
