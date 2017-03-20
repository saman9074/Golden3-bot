--------------------------------------------------
--                                              --
--            Developer: @AmirDark              --
--             Support: @DarkTeam               --
--                                              --
--------------------------------------------------

do

function run(msg, matches)
  return '⚡️ Golden3 Bot v1.1\n    \n  📢 Channel : @golden3_ir\n  👤 Admin : @golden3_ir_admin\n \n' 
end

return {
  patterns = {
    "^[!#/]golden3$",
    "^golden3bot$",
    "^[!#/]version$",
    "^version$"
  }, 
  run = run 
}

end
