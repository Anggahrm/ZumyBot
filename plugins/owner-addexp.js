const handler = async (m, { conn, text }) => {
  let who;
  if (m.isGroup) who = m.mentionedJid[0];
  else who = m.chat;
  if (!who) throw '✳️ Tag pengguna';
  let txt = text.replace('@' + who.split`@`[0], '').trim();
  if (!txt) throw '✳️ Masukkan jumlah *XP* yang ingin ditambahkan';
  if (isNaN(txt)) throw '🔢 hanya angka';
  let xp = parseInt(txt);
  let exp = xp;

  if (exp < 1) throw '✳️ Minimal *1*';
  let users = global.db.data.users;
  users[who].exp += xp;

  await m.reply(`≡ *XP Ditambahkan*
┌──────────────
▢  *Total:* ${xp}
└──────────────`);
};

handler.help = ['addexp <@user>'];
handler.tags = ['owner'];
handler.command = ['addexp'];
handler.rowner = true;

module.exports = handler;