#eval "Hello World"

#eval 2 + 3 + 4 + 19

def square (n: Nat): Nat :=
  n * n

#eval square 11

#eval square (7 + 7)

def greet(name: String) :=
  String.append "Hello " name

#eval greet "Kitty"



def add (x y : Int) := x + y

#eval add 4 3


#check 2 + 2
#check (2 + 2: Int)
#check 2 + 2
#check -2
#check square

def addSquares (n: Nat)(m: Nat): Nat := n*n + m*m

#check addSquares
-- Пример

#eval (addSquares 3) 5


-- Типы
#check Nat
#check String
#check Type
#check Type 1
-- Type = Type 0 : Type 1 : Type 2 : ...
-- Type u - типы вселенной u

#check [1, 2, 3]

#check [(1 : Int), 2, 3]

#check List Nat

-- Type → Type
#check List

#check List Type

#check [Nat, Int, String]




-- Why isn't Type of type Type? Paradoxes?

def isEmptyList (li: List Nat): Bool :=
  match li with
  | [] => true
  | List.cons head tail => false

#eval isEmptyList []

#check List

def Fermat'sTheorem (n: Nat) : Bool := sorry
