const handler = async (m, { conn, text }) => {
  let who;
  if (m.isGroup) who = m.mentionedJid[0];
  else who = m.chat;
  if (!who) throw '✳️ Tag pengguna';
  let txt = text.replace('@' + who.split`@`[0], '').trim();
  if (!txt) throw '✳️ Masukkan jumlah *ATM* yang ingin ditambahkan';
  if (isNaN(txt)) throw '🔢 hanya angka';
  let atem = parseInt(txt);
  let atm = atem;

  if (atm < 1) throw '✳️ Minimal *1*';
  let users = global.db.data.users;
  users[who].atm += atem;

  await m.reply(`≡ *ATM Ditambahkan*
┌──────────────
▢  *Total:* ${atem}
└──────────────`);
};

handler.help = ['addatm <@user>'];
handler.tags = ['owner'];
handler.command = ['addatm'];
handler.rowner = true;

module.exports = handler;