import Lake
open Lake DSL

package «ch3-props-and-proofs» where
  -- add package configuration options here

lean_lib «Ch3PropsAndProofs» where
  -- add library configuration options here

@[default_target]
lean_exe «ch3-props-and-proofs» where
  root := `Main
