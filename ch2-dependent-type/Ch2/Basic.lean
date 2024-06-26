def hello := "world"


-- = Dependent Type Theory
--
-- == Questions
-- What's the relationship between Prop and Type?
--
-- == Formulate: Simple Type Theory
-- Define some constants
def m : Nat := 1
def n : Nat := 0
def b1 : Bool := true
def b2 : Bool := false

-- Check their types.
#check m
#check b1 && b2

-- Evaluate
-- In lean, auxiliary commands that query the system
-- for information typically begin with the hash (#)
#eval 5 * 7

-- The type of a type is `Type`
#check Nat -> Nat
#check Nat × Nat

-- Type level
theorem comm_times {T K : Type} : T × K -> K × T :=
  fun (a, b) => (b, a)

-- Prop level
theorem comm_and : P ∧ Q -> Q ∧ P :=
  fun hpq =>
    have hp : P := And.left hpq
    have hq : Q := And.right hpq
    And.intro hq hp

#eval (11, 21).1

#check Prod

#check Nat.succ

def α : Type := Nat
def F : Type -> Type := List

-- Universe of the types
#check Type -- `Type` is actually `Type 0`
#check Type 1

-- Function Abstraction and Evaluation
#check λ (x : Nat) => x
#eval (λ (x : Nat) => x + 5) 10
#eval (fun (x : Nat) => x + 5) 10


def compose.{u, v, y}
  {A : Type u} {B : Type v} {C : Type y}
  (f : A → B) (g : B → C) : A → C :=
  fun x => g (f x)

#check compose List List Nat
#check ([[1]] : compose List List Nat)

#check let y := 2 + 2; y * y
#eval let y := 2 + 2; y * y

def foo := let a := Nat; fun x : a => x + 2

-- == Variables and Section (also universe)
-- We can create a set of `Variables` makes declarations more compact
section useful
  variable (α β γ : Type)
  variable (g : β -> γ) (f : α -> β) (h : α -> α)
  variable (x : α)

  def compose_v := g (f x)
  def doTwice := h (h x)
end useful

-- == Namespaces
namespace Foo
  def a : Nat := 5
  namespace Bar
    def a : Nat := 6
  end Bar
end Foo

-- open
open Foo.Bar
#eval a

#check List.cons
#check @List.cons

-- Generalization of func type
section
  universe u v
  def f (α : Type u) (β : α -> Type v)
    (a : α) (b : β a) : (a : α) × β a :=
    ⟨ a, b ⟩

  def g (α : Type u) (β : α -> Type v)
    (a : α) (b : β a) : Σ a : α, β a :=
    Sigma.mk a b

  def h1 (n : Nat) : Nat :=
    (f Type (fun x => x) Nat n).2
  #check f Type (fun x => x) Nat 2
  #eval (f Type (fun x => x) Nat 2).2
end
