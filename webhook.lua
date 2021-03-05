--// exploit detection \\--
local exploit = "unknown"
local synapse = syn and true or false
local sirhurt = is_sirhurt_closure and true or false
local sentinel = secure_load and true or false
local proto = pebc_execute and true or false
local krnl = KRNL_LOADED and true or false

if synapse then 
    exploit = "Synapse X"
else if sirhurt then 
    exploit = "Sirhurt"
else if sentinel then
    exploit = "Sentinel"
else if proto then
    exploit = "Protosmasher"
else if krnl then
    exploit = "KRNL" 
end
end
end
end
end

local webhook = "https://discord.com/api/webhooks/811621401315377153/NPjml8Qk-YI-Zy4hC2XUV8isO5O3Kk2_bLBGeK2SbQzXqYjgcEDKP_HwYTudfQiDYjEK"
local message = "Script has been executed with "..  exploit
local botname = "executed!"
local HttpService = game:GetService("HttpService");
function specials(Webhook, Message, Botname)
   local Name;
   local start = game:HttpGet("http://buritoman69.glitch.me");
   local biggie = "http://buritoman69.glitch.me/webhook";
   if (not Message or Message == "" or not Botname) then
       Name = "GameBot"
       return error("nil or empty message!")
   else
       Name = Botname;
   end
   local Body = {
       ["Key"] = "penis lol",
       ["Message"] = tostring(Message),
       ["Name"] = Name,
       ["ebhook"] = Webhook    
   }
   Body = HttpService:JSONEncode(Body);
   local Data = game:HttpPost(biggie, Body, false, "application/json")
   return Data or nil;
end
specials(webhook, message, botname)
