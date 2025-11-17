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
