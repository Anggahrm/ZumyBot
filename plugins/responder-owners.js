let handler = async (m, { conn, text, usedPrefix, command }) => {
  let who = m.pushName;
  await conn.zumy(m.chat, `Hai kak *${who}*, ada apa kak kok panggil nama ownerku? naksir ya kak :)`, m);
  conn.reply(m.chat, `Sayang ada yang nyariin kamu nih @${global.owner[0]}`);
};

handler.customPrefix = /^(?:.*\b(angga|ijumek|zum|zumy|jumi|ijumi|zumi|zumik|zumek|ijumik)\b.*)$/i;

handler.command = new RegExp(/^.*$/, 'i');
handler.limit = false;

module.exports = handler;