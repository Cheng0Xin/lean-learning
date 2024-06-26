def hello := "world"

#check Nat → Nat -- : Type
#check Nat × Nat -- : Type
#check 1         -- : Nat

def α : Type := Nat
#check α

-- Universe of types
#check Type   -- : Type 1
#check Type 1 -- : Type 2

universe u -- Can be omitted
def F (α : Type u) : Type u := α × α
#check F

-- Function declaration
#check (λ (x : Nat) (y : Nat) => x + y) 1 8

-- TODO From here:
-- https://lean-lang.org/theorem_proving_in_lean4/dependent_type_theory.html
