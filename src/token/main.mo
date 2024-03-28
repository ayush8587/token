import HashMap "mo:base/HashMap";
import Principal "mo:base/Principal";

actor Token {
    var owner : Principal = Principal.fromText("owabf-u4tav-mwclf-5sup2-3j7oy-btcut-4syq6-c7tio-ysr77-nnnwo-fae");
    var totalSupply : Nat = 1000000000;
    var symbol : Text = "SHIV";

    var balances = HashMap.HashMap<Principal, Nat>(1, Principal.equal, Principal.hash);

    balances.put(owner, totalSupply); 

    public query func balanceOf(who: Principal) : async Nat {

        let balance : Nat = switch (balances.get(who)) {
            case null 0;
            case (?result) result;
        };
        return balance;
    }

};