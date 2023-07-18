const handler = async (m, { conn, text }) => {
  let who;
  if (m.isGroup) who = m.mentionedJid[0];
  else who = m.chat;
  if (!who) throw '✳️ Tag pengguna';
  let txt = text.replace('@' + who.split`@`[0], '').trim();
  if (!txt) throw '✳️ Masukkan jumlah *LIMIT* yang ingin ditambahkan';
  if (isNaN(txt)) throw '🔢 hanya angka';
  let lim = parseInt(txt);
  let limit = lim;

  if (limit < 1) throw '✳️ Minimal *1*';
  let users = global.db.data.users;
  users[who].limit += lim;

  await m.reply(`≡ *LIMIT Ditambahkan*
┌──────────────
▢  *Total:* ${lim}
└──────────────`);
};

handler.help = ['addlimit <@user>'];
handler.tags = ['owner'];
handler.command = ['addlimit'];
handler.rowner = true;

module.exports = handler;