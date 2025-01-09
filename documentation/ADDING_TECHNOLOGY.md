# Adding a new Magic Technology

 - Add technology to normal technology files with `can_research = no`
 - Add corresponding sgui with the same name,`is_valid` should contain the required technologies and `effect` should unlock the technology
 - Add technology and sgui to type list in `gui/gate_technology.gui`
 - Add technology to scripted effect `ai_unlock_magic_technology` in `common/scripted_effects/406_magic_research.txt`