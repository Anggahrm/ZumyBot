var fetch = require('node-fetch');
var handler = async (m, {
  text,
  usedPrefix,
  command
}) => {
  if (!text) throw `Masukkan pertanyaan!\n\n*Contoh:* Siapa presiden Indonesia? `;
  await m.reply('Mohon tunggu...');
  
  try {
    var apii = await fetch(`https://api.betabotz.org/api/search/openai-chat?text=${text}&apikey=iZumy`);
    var js = await apii.json();
    
    if (js.error) {
      throw js.error;
    } else {
      await m.reply(js.message);
    }
  } catch (error) {
    await m.reply(`Terjadi kesalahan: ${error}`);
  }
};

handler.command = handler.help = ['ai', 'openai', 'chatgpt'];
handler.tags = ['info'];
handler.premium = false;
module.exports = handler;