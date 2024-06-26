import Lake
open Lake DSL

package «dp-type» where
  -- add package configuration options here

lean_lib «DpType» where
  -- add library configuration options here

@[default_target]
lean_exe «dp-type» where
  root := `Main
