import «DpType»

def main : IO Unit :=
  IO.println s!"Hello, {hello}!"

def helloFromDpType : String :=
  s!"Hello, {hello}"

#eval helloFromDpType
