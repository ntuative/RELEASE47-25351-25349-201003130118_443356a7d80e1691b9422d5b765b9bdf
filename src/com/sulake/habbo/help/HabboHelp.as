package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_1988:UserRegistry;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_134:TutorialUI;
      
      private var var_699:IHabboLocalizationManager;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_58:HelpUI;
      
      private var var_698:IHabboConfigurationManager;
      
      private var var_182:IHabboToolbar;
      
      private var var_585:HotelMergeUI;
      
      private var var_297:IHabboCommunicationManager;
      
      private var var_847:FaqIndex;
      
      private var var_1891:String = "";
      
      private var var_1036:IncomingMessages;
      
      private var var_1258:CallForHelpData;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_1258 = new CallForHelpData();
         var_1988 = new UserRegistry();
         super(param1,param2,param3);
         _assetLibrary = param3;
         var_847 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),onWindowManagerReady);
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return var_182;
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(var_58 != null)
         {
            var_58.tellUI(param1,param2);
         }
      }
      
      private function toggleHelpUI() : void
      {
         if(var_58 == null)
         {
            if(!createHelpUI())
            {
               return;
            }
         }
         var_58.toggleUI();
      }
      
      private function removeTutorialUI() : void
      {
         if(var_134 != null)
         {
            var_134.dispose();
            var_134 = null;
         }
      }
      
      public function get ownUserName() : String
      {
         return var_1891;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return _windowManager;
      }
      
      override public function dispose() : void
      {
         if(var_58 != null)
         {
            var_58.dispose();
            var_58 = null;
         }
         if(var_134 != null)
         {
            var_134.dispose();
            var_134 = null;
         }
         if(var_585)
         {
            var_585.dispose();
            var_585 = null;
         }
         if(var_847 != null)
         {
            var_847.dispose();
            var_847 = null;
         }
         var_1036 = null;
         if(var_182)
         {
            var_182.release(new IIDHabboToolbar());
            var_182 = null;
         }
         if(var_699)
         {
            var_699.release(new IIDHabboLocalizationManager());
            var_699 = null;
         }
         if(var_297)
         {
            var_297.release(new IIDHabboCommunicationManager());
            var_297 = null;
         }
         if(var_698)
         {
            var_698.release(new IIDHabboConfigurationManager());
            var_698 = null;
         }
         if(_windowManager)
         {
            _windowManager.release(new IIDHabboWindowManager());
            _windowManager = null;
         }
         super.dispose();
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return var_699;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_90:
               if(var_58 != null)
               {
                  var_58.setRoomSessionStatus(true);
               }
               if(var_134 != null)
               {
                  var_134.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_105:
               if(var_58 != null)
               {
                  var_58.setRoomSessionStatus(false);
               }
               if(var_134 != null)
               {
                  var_134.setRoomSessionStatus(false);
               }
               userRegistry.unregisterRoom();
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(var_58 != null)
         {
            var_58.updateCallForGuideBotUI(true);
         }
      }
      
      public function get userRegistry() : UserRegistry
      {
         return var_1988;
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(var_58 != null)
         {
            var_58.showCallForHelpResult(param1);
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!var_585)
         {
            var_585 = new HotelMergeUI(this);
         }
         var_585.startNameChange();
      }
      
      private function createTutorialUI() : Boolean
      {
         if(var_134 == null && _assetLibrary != null && _windowManager != null)
         {
            var_134 = new TutorialUI(this);
         }
         return var_134 != null;
      }
      
      private function createHelpUI() : Boolean
      {
         if(var_58 == null && _assetLibrary != null && _windowManager != null)
         {
            var_58 = new HelpUI(this,_assetLibrary,_windowManager,var_699,var_182);
         }
         return var_58 != null;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return var_1258;
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         var_1258.reportedUserId = param1;
         var_1258.reportedUserName = param2;
         var_58.showUI(HabboHelpViewEnum.const_310);
      }
      
      public function set ownUserName(param1:String) : void
      {
         var_1891 = param1;
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(var_182 != null)
         {
            var_182.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_124,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         _windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),onCommunicationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_699 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),onConfigurationManagerReady);
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            removeTutorialUI();
            return;
         }
         if(var_134 == null)
         {
            if(!createTutorialUI())
            {
               return;
            }
         }
         var_134.update(param1,param2,param3);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_297 = IHabboCommunicationManager(param2);
         var_1036 = new IncomingMessages(this,var_297);
         queueInterface(new IIDHabboToolbar(),onToolbarReady);
      }
      
      public function showUI(param1:String = null) : void
      {
         if(var_58 != null)
         {
            var_58.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(var_58 != null)
         {
            var_58.hideUI();
         }
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(var_297 != null && param1 != null)
         {
            var_297.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return var_847;
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(var_58 != null)
         {
            var_58.updateCallForGuideBotUI(false);
         }
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_182 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),onLocalizationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_698 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),onRoomSessionManagerReady);
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return var_134;
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_89)
         {
            setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_57)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               toggleHelpUI();
               return;
            }
         }
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return var_585;
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_90,onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_105,onRoomSessionEvent);
         var_182.events.addEventListener(HabboToolbarEvent.const_89,onHabboToolbarEvent);
         var_182.events.addEventListener(HabboToolbarEvent.const_57,onHabboToolbarEvent);
         createHelpUI();
         setHabboToolbarIcon();
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(var_58 != null)
         {
            var_58.showCallForHelpReply(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(var_698 == null)
         {
            return param1;
         }
         return var_698.getKey(param1,param2,param3);
      }
   }
}
