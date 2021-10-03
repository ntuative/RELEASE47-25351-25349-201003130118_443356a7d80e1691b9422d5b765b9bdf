package com.sulake.habbo.communication
{
   import com.sulake.core.Core;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.ICoreCommunicationManager;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.connection.IConnectionStateListener;
   import com.sulake.core.communication.enum.ConnectionType;
   import com.sulake.core.communication.messages.IMessageConfiguration;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.protocol.IProtocol;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.habbo.communication.enum.HabboConnectionType;
   import com.sulake.habbo.communication.enum.HabboProtocolType;
   import com.sulake.habbo.communication.protocol.WedgieProtocol;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.configuration.enum.HabboConfigurationEvent;
   import com.sulake.habbo.tracking.HabboErrorVariableEnum;
   import com.sulake.iid.IIDCoreCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HabboCommunicationManager extends Component implements IHabboCommunicationManager, IConnectionStateListener
   {
       
      
      private var var_665:int = 0;
      
      private var var_36:String = "";
      
      private var var_1159:Timer;
      
      private var var_249:Array;
      
      private var var_1705:Boolean = false;
      
      private var var_81:String = "";
      
      private var _habboConfiguration:IHabboConfigurationManager;
      
      private var var_969:IMessageConfiguration;
      
      private const const_1618:int = 5;
      
      private var var_331:int = -1;
      
      private var var_297:ICoreCommunicationManager;
      
      private var var_784:int = 1;
      
      private var var_1707:Boolean = false;
      
      private var var_1706:Boolean = false;
      
      private var _connection:IConnection;
      
      public function HabboCommunicationManager(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_969 = new HabboMessages();
         var_249 = [];
         var_1159 = new Timer(100,1);
         super(param1,param2,param3);
         this.queueInterface(new IIDCoreCommunicationManager(),onCoreCommunicationManagerInit);
         this.queueInterface(new IIDHabboConfigurationManager(),onHabboConfigurationInit);
      }
      
      public function get port() : int
      {
         if(var_331 < 0 || var_331 >= var_249.length)
         {
            return 0;
         }
         return var_249[var_331];
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] Security Error: " + param1.text);
         ErrorReportStorage.addDebugData("Communication Security Error","SecurityError on connect: " + param1.text + ". Port was " + var_249[var_331]);
         tryNextPort();
      }
      
      private function onConnect(param1:Event) : void
      {
         ErrorReportStorage.addDebugData("Connection","Connected with " + var_784 + " attempts");
      }
      
      private function onConfigurationReady(param1:Event = null) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         Logger.log("Habbo Communication Manager: init based on configuration: " + _habboConfiguration);
         if(_habboConfiguration == null)
         {
            Core.crash("Received configuration ready event but configuration was null",Core.const_828);
         }
         else
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Ready");
            var_249 = [];
            var_36 = _habboConfiguration.getKey("connection.info.host","fused37-public-proxy-1.hotel.varoke.net");
            _loc2_ = _habboConfiguration.getKey("connection.info.port","25001");
            _loc3_ = _loc2_.split(",");
            for each(_loc4_ in _loc3_)
            {
               var_249.push(parseInt(_loc4_.replace(" ","")));
            }
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Host: " + var_36);
            Logger.log("Connection Host: " + var_36);
            Logger.log("Connection Ports: " + var_249);
            Logger.log("Habbo Connection Info:" + _connection);
            var_1707 = true;
            if(var_1706)
            {
               nextPort();
            }
         }
      }
      
      public function messageReceived(param1:String, param2:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1277,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1212,param1 + " " + param2);
         if(false)
         {
            var_81 += ",R:" + param1;
         }
         else
         {
            var_81 = "R:" + param1;
         }
         if(false)
         {
            var_81 = var_81.substring(-150);
         }
         ErrorReportStorage.addDebugData("MESSAGE_QUEUE",var_81);
      }
      
      private function nextPort() : void
      {
         ++var_331;
         if(var_331 >= var_249.length)
         {
            ++var_784;
            ErrorReportStorage.addDebugData("ConnectionRetry","Connection attempt " + var_784);
            if(var_784 > const_1618)
            {
               if(var_1705)
               {
                  return;
               }
               var_1705 = true;
               Core.error("Connection failed to host " + var_36 + " ports " + var_249,true,Core.const_718);
               return;
            }
            var_331 = 0;
         }
         _connection.timeout = var_784 * 5000;
         _connection.init(var_36,var_249[var_331]);
      }
      
      private function onTryNextPort(param1:TimerEvent) : void
      {
         var_1159.stop();
         nextPort();
      }
      
      public function get mode() : int
      {
         return var_665;
      }
      
      override public function dispose() : void
      {
         if(_connection)
         {
            _connection.dispose();
            _connection = null;
         }
         if(var_297)
         {
            var_297.release(new IIDCoreCommunicationManager());
            var_297 = null;
         }
         if(_habboConfiguration)
         {
            _habboConfiguration.release(new IIDHabboConfigurationManager());
            _habboConfiguration = null;
         }
         super.dispose();
      }
      
      public function initConnection(param1:String) : void
      {
         switch(param1)
         {
            case HabboConnectionType.const_259:
               if(_habboConfiguration == null)
               {
                  Core.crash("Tried to connect to proxy but configuration was null",Core.const_718);
                  return;
               }
               if(_connection == null)
               {
                  Core.crash("Tried to connect to proxy but connection was null",Core.const_718);
                  return;
               }
               var_1706 = true;
               if(var_1707)
               {
                  nextPort();
               }
               break;
            default:
               Logger.log("Unknown Habbo Connection Type: " + param1);
         }
      }
      
      public function habboWebLogin(param1:String, param2:String) : IHabboWebLogin
      {
         var _loc3_:String = "";
         _loc3_ = _habboConfiguration.getKey("url.prefix",_loc3_);
         _loc3_ = _loc3_.replace("http://","");
         _loc3_ = _loc3_.replace("https://","");
         return new HabboWebLogin(param1,param2,_loc3_);
      }
      
      public function addHabboConnectionMessageEvent(param1:IMessageEvent) : void
      {
         return var_297.addConnectionMessageEvent(HabboConnectionType.const_259,param1);
      }
      
      public function connectionInit(param1:String, param2:int) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1332,param1);
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1201,String(param2));
      }
      
      public function messageSent(param1:String, param2:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1231,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1305,param1 + " " + param2);
         if(false)
         {
            var_81 += ",S:" + param1;
         }
         else
         {
            var_81 = "S:" + param1;
         }
         if(false)
         {
            var_81 = var_81.substring(-150);
         }
         ErrorReportStorage.addDebugData("MESSAGE_QUEUE",var_81);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] IO Error: " + param1.text);
         switch(param1.type)
         {
            case IOErrorEvent.IO_ERROR:
               break;
            case IOErrorEvent.DISK_ERROR:
               break;
            case IOErrorEvent.NETWORK_ERROR:
               break;
            case IOErrorEvent.VERIFY_ERROR:
         }
         ErrorReportStorage.addDebugData("Communication IO Error","IOError " + param1.type + " on connect: " + param1.text + ". Port was " + var_249[var_331]);
         tryNextPort();
      }
      
      public function set mode(param1:int) : void
      {
         var_665 = param1;
      }
      
      private function onCoreCommunicationManagerInit(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:* = null;
         Logger.log("Habbo Communication Manager: Core Communication Manager found:: " + [param1,param2]);
         if(param2 != null)
         {
            var_297 = param2 as ICoreCommunicationManager;
            var_297.connectionStateListener = this;
            var_297.registerProtocolType(HabboProtocolType.const_846,WedgieProtocol);
            _connection = var_297.createConnection(HabboConnectionType.const_259,ConnectionType.const_792);
            _loc3_ = var_297.getProtocolInstanceOfType(HabboProtocolType.const_846);
            _connection.registerMessageClasses(var_969);
            _connection.protocol = _loc3_;
            _connection.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
            _connection.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
            _connection.addEventListener(Event.CONNECT,onConnect);
         }
      }
      
      private function tryNextPort() : void
      {
         var_1159.addEventListener(TimerEvent.TIMER,onTryNextPort);
         var_1159.start();
      }
      
      private function onHabboConfigurationInit(param1:IID = null, param2:IUnknown = null) : void
      {
         if(param2 != null)
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Received");
            _habboConfiguration = param2 as IHabboConfigurationManager;
            (_habboConfiguration as Component).events.addEventListener(HabboConfigurationEvent.INIT,onConfigurationReady);
         }
         else
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config NOT received");
         }
      }
      
      public function getHabboMainConnection(param1:Function) : IConnection
      {
         return !!var_297 ? var_297.queueConnection(HabboConnectionType.const_259,param1) : null;
      }
   }
}
