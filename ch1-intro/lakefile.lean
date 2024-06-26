import Lake
open Lake DSL

package «ch1» where
  -- add package configuration options here

lean_lib «Ch1» where
  -- add library configuration options here

@[default_target]
lean_exe «ch1» where
  root := `Main
