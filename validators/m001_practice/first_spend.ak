use cardano/transaction.{OutputReference, Transaction, placeholder}
use mocktail.{mock_utxo_ref}

validator my_first_spend {
  spend(
    _datum: Option<Data>,
    _redeemer: Data,
    _input: OutputReference,
    _tx: Transaction,
  ) {
    True
  }

  else(_) {
    fail
  }
}

test test_my_first_spend() {
  my_first_spend.spend(None, Void, mock_utxo_ref(0, 0), placeholder)
}



// root@46390565a98e:/workspace/firstaiken# aiken blueprint address --module m001_practice/first_spend --validator my_first_spend
// addr_test1wrf8enqnl26m0q5cfg73lxf4xxtu5x5phcrfjs0lcqp7uagh2hm3k
// root@46390565a98e:/workspace/firstaiken# 