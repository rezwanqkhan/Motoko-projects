// import
import Map "mo:base/HashMap";
import Text "mo:base/Text";

// actor => conster ==> smart contract 

actor Phonebook{
  // Motoko  --> type language
  type Name = Text;
  type Phone = Text;

  type Entery = {
    desc: Text;
    phone: Phone;
  };
  
  // variable (degiskenler)
  //let -> immutable (degistiremez)
  //var -> mutable (degistirebilir)

  let phonebook = Map.HashMap<Name, Entery>(0, Text.equal, Text.hash); // Is it text(Text.equal())
  
  // functions
  // query  -> sorgulamak
  // update -> guncelleme
  public func insert(name : Name, entery: Entery): async(){
    phonebook.put(name , entery)
  };

 public query func lookup(name : Name): async ?Entery{
    phonebook.get(name) // return phonebook.get(name);
  };
}