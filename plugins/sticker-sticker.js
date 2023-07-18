const fs = require('fs');

let handler = async (m, { conn, command, usedPrefix }) => {
  let q = m.quoted ? m.quoted : m;
  let mime = (q.msg || q).mimetype || '';
  let who = m.pushName;

  if (/image/.test(mime)) {
    let media = await q.download();
    await conn.sendMessage(m.chat, { react: { text: `⏱️`, key: m.key }});
    let encmedia = await conn.sendImageAsSticker(m.chat, media, m, { packname: 'ZumyNext', author: who });
    await fs.unlinkSync(encmedia);
  } else if (/video/.test(mime)) {
    if ((q.msg || q).seconds > 11) return m.reply('Maksimal 10 detik!');
    let media = await q.download();
    let encmedia = await conn.sendVideoAsSticker(m.chat, media, m, { packname: 'ZumyNext', author: who });
    await fs.unlinkSync(encmedia);
  } else if (/webp/.test(mime)) {
    if ((q.msg || q).seconds > 11) return m.reply('Maksimal 10 detik!');
    let media = await q.download();
    let encmedia = await conn.sendVideoAsSticker(m.chat, media, m, { packname: 'ZumyNext', author: who });
    await fs.unlinkSync(encmedia);
  } else {
    throw `Kirim Gambar/Video Dengan Caption ${usedPrefix + command}\nDurasi Video 1-9 Detik`;
  }

  await conn.sendMessage(m.chat, { react: { text: `✅`, key: m.key }});
};

handler.help = ['sticker'];
handler.tags = ['sticker'];
handler.command = /^(stiker|s|sticker|colong)$/i;
handler.limit = true;

const isUrl = (text) => {
  return text.match(new RegExp(/https?:\/\/(www\.)?[-a-zA-Z0-9@:%._+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_+.~#?&/=]*)(jpe?g|gif|png|mp4|webp)/, 'gi'));
};

module.exports = handler;