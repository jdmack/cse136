﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.269
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MVC3.SLGame {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Game", Namespace="http://schemas.datacontract.org/2004/07/DomainModel")]
    [System.SerializableAttribute()]
    public partial class Game : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int idField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string lengthField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private MVC3.SLGame.Map mapField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string matchupField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private MVC3.SLGame.Player player1Field;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private MVC3.SLGame.Race player1_raceField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private MVC3.SLGame.Statistic player1_statisticField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private MVC3.SLGame.Player player2Field;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private MVC3.SLGame.Race player2_raceField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private MVC3.SLGame.Statistic player2_statisticField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private System.DateTime timeField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private MVC3.SLGame.Player winnerField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int id {
            get {
                return this.idField;
            }
            set {
                if ((this.idField.Equals(value) != true)) {
                    this.idField = value;
                    this.RaisePropertyChanged("id");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string length {
            get {
                return this.lengthField;
            }
            set {
                if ((object.ReferenceEquals(this.lengthField, value) != true)) {
                    this.lengthField = value;
                    this.RaisePropertyChanged("length");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public MVC3.SLGame.Map map {
            get {
                return this.mapField;
            }
            set {
                if ((object.ReferenceEquals(this.mapField, value) != true)) {
                    this.mapField = value;
                    this.RaisePropertyChanged("map");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string matchup {
            get {
                return this.matchupField;
            }
            set {
                if ((object.ReferenceEquals(this.matchupField, value) != true)) {
                    this.matchupField = value;
                    this.RaisePropertyChanged("matchup");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public MVC3.SLGame.Player player1 {
            get {
                return this.player1Field;
            }
            set {
                if ((object.ReferenceEquals(this.player1Field, value) != true)) {
                    this.player1Field = value;
                    this.RaisePropertyChanged("player1");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public MVC3.SLGame.Race player1_race {
            get {
                return this.player1_raceField;
            }
            set {
                if ((object.ReferenceEquals(this.player1_raceField, value) != true)) {
                    this.player1_raceField = value;
                    this.RaisePropertyChanged("player1_race");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public MVC3.SLGame.Statistic player1_statistic {
            get {
                return this.player1_statisticField;
            }
            set {
                if ((object.ReferenceEquals(this.player1_statisticField, value) != true)) {
                    this.player1_statisticField = value;
                    this.RaisePropertyChanged("player1_statistic");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public MVC3.SLGame.Player player2 {
            get {
                return this.player2Field;
            }
            set {
                if ((object.ReferenceEquals(this.player2Field, value) != true)) {
                    this.player2Field = value;
                    this.RaisePropertyChanged("player2");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public MVC3.SLGame.Race player2_race {
            get {
                return this.player2_raceField;
            }
            set {
                if ((object.ReferenceEquals(this.player2_raceField, value) != true)) {
                    this.player2_raceField = value;
                    this.RaisePropertyChanged("player2_race");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public MVC3.SLGame.Statistic player2_statistic {
            get {
                return this.player2_statisticField;
            }
            set {
                if ((object.ReferenceEquals(this.player2_statisticField, value) != true)) {
                    this.player2_statisticField = value;
                    this.RaisePropertyChanged("player2_statistic");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public System.DateTime time {
            get {
                return this.timeField;
            }
            set {
                if ((this.timeField.Equals(value) != true)) {
                    this.timeField = value;
                    this.RaisePropertyChanged("time");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public MVC3.SLGame.Player winner {
            get {
                return this.winnerField;
            }
            set {
                if ((object.ReferenceEquals(this.winnerField, value) != true)) {
                    this.winnerField = value;
                    this.RaisePropertyChanged("winner");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Map", Namespace="http://schemas.datacontract.org/2004/07/DomainModel")]
    [System.SerializableAttribute()]
    public partial class Map : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int idField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string nameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string sizeField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int spawnsField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int id {
            get {
                return this.idField;
            }
            set {
                if ((this.idField.Equals(value) != true)) {
                    this.idField = value;
                    this.RaisePropertyChanged("id");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string name {
            get {
                return this.nameField;
            }
            set {
                if ((object.ReferenceEquals(this.nameField, value) != true)) {
                    this.nameField = value;
                    this.RaisePropertyChanged("name");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string size {
            get {
                return this.sizeField;
            }
            set {
                if ((object.ReferenceEquals(this.sizeField, value) != true)) {
                    this.sizeField = value;
                    this.RaisePropertyChanged("size");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int spawns {
            get {
                return this.spawnsField;
            }
            set {
                if ((this.spawnsField.Equals(value) != true)) {
                    this.spawnsField = value;
                    this.RaisePropertyChanged("spawns");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Player", Namespace="http://schemas.datacontract.org/2004/07/DomainModel")]
    [System.SerializableAttribute()]
    public partial class Player : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int codeField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int idField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private MVC3.SLGame.League leagueField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string nameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private MVC3.SLGame.Race raceField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int code {
            get {
                return this.codeField;
            }
            set {
                if ((this.codeField.Equals(value) != true)) {
                    this.codeField = value;
                    this.RaisePropertyChanged("code");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int id {
            get {
                return this.idField;
            }
            set {
                if ((this.idField.Equals(value) != true)) {
                    this.idField = value;
                    this.RaisePropertyChanged("id");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public MVC3.SLGame.League league {
            get {
                return this.leagueField;
            }
            set {
                if ((object.ReferenceEquals(this.leagueField, value) != true)) {
                    this.leagueField = value;
                    this.RaisePropertyChanged("league");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string name {
            get {
                return this.nameField;
            }
            set {
                if ((object.ReferenceEquals(this.nameField, value) != true)) {
                    this.nameField = value;
                    this.RaisePropertyChanged("name");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public MVC3.SLGame.Race race {
            get {
                return this.raceField;
            }
            set {
                if ((object.ReferenceEquals(this.raceField, value) != true)) {
                    this.raceField = value;
                    this.RaisePropertyChanged("race");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Race", Namespace="http://schemas.datacontract.org/2004/07/DomainModel")]
    [System.SerializableAttribute()]
    public partial class Race : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private char codeField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int idField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string nameField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public char code {
            get {
                return this.codeField;
            }
            set {
                if ((this.codeField.Equals(value) != true)) {
                    this.codeField = value;
                    this.RaisePropertyChanged("code");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int id {
            get {
                return this.idField;
            }
            set {
                if ((this.idField.Equals(value) != true)) {
                    this.idField = value;
                    this.RaisePropertyChanged("id");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string name {
            get {
                return this.nameField;
            }
            set {
                if ((object.ReferenceEquals(this.nameField, value) != true)) {
                    this.nameField = value;
                    this.RaisePropertyChanged("name");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Statistic", Namespace="http://schemas.datacontract.org/2004/07/DomainModel")]
    [System.SerializableAttribute()]
    public partial class Statistic : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int apmField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private MVC3.SLGame.Game gameField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int idField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private MVC3.SLGame.Player playerField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int resourcesField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int structuresField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int unitsField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int apm {
            get {
                return this.apmField;
            }
            set {
                if ((this.apmField.Equals(value) != true)) {
                    this.apmField = value;
                    this.RaisePropertyChanged("apm");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public MVC3.SLGame.Game game {
            get {
                return this.gameField;
            }
            set {
                if ((object.ReferenceEquals(this.gameField, value) != true)) {
                    this.gameField = value;
                    this.RaisePropertyChanged("game");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int id {
            get {
                return this.idField;
            }
            set {
                if ((this.idField.Equals(value) != true)) {
                    this.idField = value;
                    this.RaisePropertyChanged("id");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public MVC3.SLGame.Player player {
            get {
                return this.playerField;
            }
            set {
                if ((object.ReferenceEquals(this.playerField, value) != true)) {
                    this.playerField = value;
                    this.RaisePropertyChanged("player");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int resources {
            get {
                return this.resourcesField;
            }
            set {
                if ((this.resourcesField.Equals(value) != true)) {
                    this.resourcesField = value;
                    this.RaisePropertyChanged("resources");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int structures {
            get {
                return this.structuresField;
            }
            set {
                if ((this.structuresField.Equals(value) != true)) {
                    this.structuresField = value;
                    this.RaisePropertyChanged("structures");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int units {
            get {
                return this.unitsField;
            }
            set {
                if ((this.unitsField.Equals(value) != true)) {
                    this.unitsField = value;
                    this.RaisePropertyChanged("units");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="League", Namespace="http://schemas.datacontract.org/2004/07/DomainModel")]
    [System.SerializableAttribute()]
    public partial class League : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int idField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string nameField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int id {
            get {
                return this.idField;
            }
            set {
                if ((this.idField.Equals(value) != true)) {
                    this.idField = value;
                    this.RaisePropertyChanged("id");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string name {
            get {
                return this.nameField;
            }
            set {
                if ((object.ReferenceEquals(this.nameField, value) != true)) {
                    this.nameField = value;
                    this.RaisePropertyChanged("name");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="SLGame.ISLGame")]
    public interface ISLGame {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ISLGame/GetGame", ReplyAction="http://tempuri.org/ISLGame/GetGameResponse")]
        MVC3.SLGame.Game GetGame(int id, ref string[] errors);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ISLGame/InsertGame", ReplyAction="http://tempuri.org/ISLGame/InsertGameResponse")]
        void InsertGame(MVC3.SLGame.Game game, ref string[] errors);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ISLGame/UpdateGame", ReplyAction="http://tempuri.org/ISLGame/UpdateGameResponse")]
        void UpdateGame(MVC3.SLGame.Game game, ref string[] errors);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ISLGame/DeleteGame", ReplyAction="http://tempuri.org/ISLGame/DeleteGameResponse")]
        void DeleteGame(int id, ref string[] errors);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ISLGame/GetGameList", ReplyAction="http://tempuri.org/ISLGame/GetGameListResponse")]
        MVC3.SLGame.Game[] GetGameList(ref string[] errors);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ISLGameChannel : MVC3.SLGame.ISLGame, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class SLGameClient : System.ServiceModel.ClientBase<MVC3.SLGame.ISLGame>, MVC3.SLGame.ISLGame {
        
        public SLGameClient() {
        }
        
        public SLGameClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public SLGameClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public SLGameClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public SLGameClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public MVC3.SLGame.Game GetGame(int id, ref string[] errors) {
            return base.Channel.GetGame(id, ref errors);
        }
        
        public void InsertGame(MVC3.SLGame.Game game, ref string[] errors) {
            base.Channel.InsertGame(game, ref errors);
        }
        
        public void UpdateGame(MVC3.SLGame.Game game, ref string[] errors) {
            base.Channel.UpdateGame(game, ref errors);
        }
        
        public void DeleteGame(int id, ref string[] errors) {
            base.Channel.DeleteGame(id, ref errors);
        }
        
        public MVC3.SLGame.Game[] GetGameList(ref string[] errors) {
            return base.Channel.GetGameList(ref errors);
        }
    }
}
