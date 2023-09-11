cargo test --release --package risc0-core --lib -- field::baby_bear::tests::test_elem_mul --exact --nocapture
cargo test --release --package risc0-core --lib -- field::baby_bear::tests::test_elem_add --exact --nocapture
cargo test --release --package risc0-core --lib -- field::goldilocks::tests::test_elem_mul --exact --nocapture
cargo test --release --package risc0-core --lib -- field::goldilocks::tests::test_elem_add --exact --nocapture