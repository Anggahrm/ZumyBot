var fetch = require("node-fetch");
var handler = async (m, {
  conn,
  args,
  usedPrefix,
  command
}) => {
  await conn.sendMessage(m.chat, { react: { text: `❌`, key: m.key }});
  if (!args[0]) throw `uhm.. url nya mana?\n\ncontoh:\n${usedPrefix + command} https://t.me/addstickers/namapack`;
  if (!args[0].match(/(https:\/\/t.me\/addstickers\/)/gi)) throw `url salah`;
  await conn.sendMessage(m.chat, { react: { text: `⏱️`, key: m.key }});
  var apis = await fetch(`https://api.betabotz.org/api/download/telesticker?url=${args[0]}&apikey=${lann}`);
  if (!apis.ok) throw await apis.text();
  var jsons = await apis.json();
  if (!jsons.status) throw jsons;
  var { result } = jsons;

  // Menghitung jumlah stiker yang akan diunduh
  var totalStickers = result.length;

  // Menghitung estimasi waktu selesai 
  var estimatedTime = totalStickers * 0.5;

  await conn.reply(m.chat, `Sedang memproses ${totalStickers} stiker. \nEstimasi waktu selesai: ${estimatedTime} detik.`, m);
  
  for (var i = 0; i < result.length; i++) {
    var url = result[i].url;
    await conn.sendImageAsSticker(m.chat, url, null, { packname: global.packname, author: global.author });
  }
  
  await conn.reply(m.chat, `Total ${totalStickers} stiker telah berhasil dikirim`, m);
};
handler.help = ['telesticker'];
handler.command = /^(telestick|stele)$/i;
handler.tags = ['sticker'];
handler.limit = true;
handler.fail = null;
module.exports = handler;