﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.269
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MVC3.SLRace {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="SLRace.ISLRace")]
    public interface ISLRace {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ISLRace/GetRace", ReplyAction="http://tempuri.org/ISLRace/GetRaceResponse")]
        DomainModel.Race GetRace(int id, ref string[] errors);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ISLRace/InsertRace", ReplyAction="http://tempuri.org/ISLRace/InsertRaceResponse")]
        void InsertRace(DomainModel.Race race, ref string[] errors);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ISLRace/UpdateRace", ReplyAction="http://tempuri.org/ISLRace/UpdateRaceResponse")]
        void UpdateRace(DomainModel.Race race, ref string[] errors);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ISLRace/DeleteRace", ReplyAction="http://tempuri.org/ISLRace/DeleteRaceResponse")]
        void DeleteRace(int id, ref string[] errors);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ISLRace/GetRaceList", ReplyAction="http://tempuri.org/ISLRace/GetRaceListResponse")]
        DomainModel.Race[] GetRaceList(ref string[] errors);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ISLRaceChannel : MVC3.SLRace.ISLRace, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class SLRaceClient : System.ServiceModel.ClientBase<MVC3.SLRace.ISLRace>, MVC3.SLRace.ISLRace {
        
        public SLRaceClient() {
        }
        
        public SLRaceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public SLRaceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public SLRaceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public SLRaceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public DomainModel.Race GetRace(int id, ref string[] errors) {
            return base.Channel.GetRace(id, ref errors);
        }
        
        public void InsertRace(DomainModel.Race race, ref string[] errors) {
            base.Channel.InsertRace(race, ref errors);
        }
        
        public void UpdateRace(DomainModel.Race race, ref string[] errors) {
            base.Channel.UpdateRace(race, ref errors);
        }
        
        public void DeleteRace(int id, ref string[] errors) {
            base.Channel.DeleteRace(id, ref errors);
        }
        
        public DomainModel.Race[] GetRaceList(ref string[] errors) {
            return base.Channel.GetRaceList(ref errors);
        }
    }
}
