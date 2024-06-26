def hello := "world"

-- = Propositions as Types

axiom test_axiom {T₁ T₂ : Type} : T₁ → T₂

#check @test_axiom Nat Nat 1

