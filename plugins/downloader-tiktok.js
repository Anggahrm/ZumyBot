var fetch = require("node-fetch");
var handler = async (m, {
	conn,
	args,
	usedPrefix,
	command
}) => {
  await conn.sendMessage(m.chat, { react: { text: `❌`, key: m.key }})
if (!args[0]) throw `Masukan URL!\n\ncontoh:\n${usedPrefix + command} https://vm.tiktok.com/ZGJAmhSrp/`
if (!args[0].match(/tiktok/gi)) throw `URL Tidak Ditemukan!`
await conn.sendMessage(m.chat, { react: { text: `⏱️`, key: m.key }})
 var apis = await fetch(`https://api.betabotz.org/api/download/tiktok?url=${args[0]}&apikey=${lann}`)
if (!apis.ok) throw await apis.text()
var jsons = await apis.json()
if (!jsons.status) throw jsons
var { 
video, 
video2, 
username,
description,
audio
} = jsons.result
await conn.sendFile(m.chat, video, 'tiktok.mp4', `
*Deskripsi*: ${description}
\n*Username*: ${username}`, m)
conn.sendFile(m.chat, audio, 'tikmp3.opus', null, m)
await conn.sendMessage(m.chat, { react: { text: `✅`, key: m.key }})
};
handler.help = ['tiktok']
handler.command = /^(tiktok|tt|tiktokdl|tiktoknowm|dltt)$/i
handler.tags = ['downloader'];
handler.limit = true;
handler.group = false;
handler.premium = false;
handler.owner = false;
handler.admin = false;
handler.botAdmin = false;
handler.fail = null;
handler.private = false;
module.exports = handler;