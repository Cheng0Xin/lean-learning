import «Ch1»

def main : IO Unit :=
  IO.println s!"Hello, {msg}!"

#eval (1 + 1 : Nat)
#eval (String.append "Hello, " "Lean!" : String)
#eval String.append "Great " (String.append "oak " "tree")
#eval if 1 > 2 then "tes" else "no"
#eval (1 - 2 : Int)

def hello : String → String := String.append "Hello"

#eval hello " KK"

def NaturalNumber : Type := Nat
abbrev N := Nat

-- Because number support overload
def y : N := 1

#eval x


theorem and_commutative (p q : Prop) : p ∧ q -> q ∧ p :=
  fun hpq : p ∧ q =>
  And.intro (And.right hpq) (And.left hpq)

theorem and_commutative_trac (p q : Prop) : p ∧ q -> q ∧ p :=
  fun hpq : p ∧ q =>
  have hp : p := And.left hpq
  have hq : q := And.right hpq
  And.intro hq hp

