var fetch = require('node-fetch');
var handler = async (m, {
  text,
  usedPrefix,
  command
}) => {
  const perintah = "Kamu adalah bot WhatsApp yang diberi nama ZumyNext, pembuatmu adalah Angga a.k.a iZumy, umurnya 18 tahun, dia lulusan teknik komputer dan jaringan, dia memiliki kepribadian baik, perhatian, lucu, bertanggung jawab, dan ganteng, dia sedang mengembangkan projek bot WhatsApp, dia berasal dari Yogyakarta, webnya adalah https://neko.pe/me"
  if (!text) throw `Masukkan pertanyaan!\n\n*Contoh:* Siapa presiden Indonesia? `;
  await conn.sendMessage(m.chat, { react: { text: `⏱️`, key: m.key }});

  try {
    var apii = await fetch(`https://api.betabotz.org/api/search/openai-logic?text=${text}&logic=${perintah}&apikey=${lann}`);
    var js = await apii.json();

    if (js.error) {
      throw js.error;
    } else {
      await m.reply(js.message);
      await conn.sendMessage(m.chat, { react: { text: `✅`, key: m.key }});
    }
  } catch (error) {
    await m.reply(`Terjadi kesalahan. Silakan coba lagi.`);
  }
};

handler.command = handler.help = ['ai', 'openai', 'chatgpt'];
handler.tags = ['info'];
handler.premium = false;
handler.limit = 5;
module.exports = handler;