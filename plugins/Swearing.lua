local function run(msg)
    local hash = 'Swearing:'..msg.to.id
    if redis:get(hash) then
        delete_msg(msg.id, ok_cb, false)
        if msg.to.type == 'chat' then
            send_msg('chat#id'..msg.to.id, lang_text(msg.to.id, 'noSwearingT'), ok_cb, true)
            chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
        elseif msg.to.type == 'channel' then
            send_msg('channel#id'..msg.to.id, lang_text(msg.to.id, 'noSwearingL'), ok_cb, true)
            channel_kick_user('channel#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
        end
        return
    end
end   

return {
    patterns = {
            "کیر",
	"[Kk]ir",
	"کص",
	"کس",
	"جنده",
	"لاشی",
	"کونی",
	"حرومزاده",
	"حرومی",
	"سگ",
	"مادر سگ",
	"[Kk]os",
	"[Jj]ende",
	"[Ll]ashi",
	"[Kk]ooni",
	"[Hh]aroom",
	"[Ff]uck",
	"[Ff]cker",
	"suck",
	"گی",
	"بچه باز",
	"سکسی",
	"میسترس",
	"فتیش",
	"fetish",
	"fucker",
	"beach",
	"les",
  "gay",
  "sex",
  "سکس",
"کون"
},
    run = run
}
