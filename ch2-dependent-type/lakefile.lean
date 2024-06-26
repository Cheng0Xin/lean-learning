import Lake
open Lake DSL

package «ch2» where
  -- add package configuration options here

lean_lib «Ch2» where
  -- add library configuration options here

@[default_target]
lean_exe «ch2» where
  root := `Main
