const handler = async (m, { conn, text }) => {
  let who;
  if (m.isGroup) who = m.mentionedJid[0];
  else who = m.chat;
  if (!who) throw '✳️ Tag pengguna';
  let txt = text.replace('@' + who.split`@`[0], '').trim();
  if (!txt) throw '✳️ Masukkan jumlah *ZC* yang ingin ditambahkan';
  if (isNaN(txt)) throw '🔢 hanya angka';
  let zc = parseInt(txt);
  let money = zc;

  if (money < 1) throw '✳️ Minimal *1*';
  let users = global.db.data.users;
  users[who].money += zc;

  await m.reply(`≡ *ZC Ditambahkan*
┌──────────────
▢  *Total:* ${zc}
└──────────────`);
};

handler.help = ['addzc <@user>'];
handler.tags = ['owner'];
handler.command = ['addzc'];
handler.rowner = true;

module.exports = handler;