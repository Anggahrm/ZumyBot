const fs = require('fs');
const path = require('path');

const handler = async (m, { conn, isPrems, text }) => {
if (!text) {
        return m.reply('Silahkan gunakan .dls info untuk menampilkan semua script.');
    }
  try {
    if (text === 'info') {
      const files = fs.readdirSync(path.join(__dirname, '..', 'luascript')).filter(file => file.endsWith('.lua'));
      const scriptNames = files.map(file => file.replace('.lua', ''));
      const message = scriptNames.length
        ? `List file pada direktori *luascript*\n\n${scriptNames.map(name => ' ' + name).join('\n')}`
        : `Tidak ditemukan file pada direktori *luascript*`;
      return conn.reply(m.chat, message, m);
    } else if (isPrems) {
      const fileName = text.split('.')[0] + '.lua';
      const filePath = path.join(__dirname, '..', 'luascript', fileName);
      const fileData = await fs.promises.readFile(filePath);
      await conn.sendMessage(m.chat, { document: fileData, mimetype: 'text/plain', fileName: fileName }, { quoted: m, thumbnail: Buffer.alloc(0) });
    } else {
      return conn.reply(m.chat, 'Maaf, perintah ini hanya bisa digunakan oleh pengguna premium.', m);
    }
  } catch (err) {
    console.error(err);
    return conn.reply(m.chat, 'Terjadi kesalahan saat mengambil file.', m);
  }
};
handler.help = ['dls <text>', 'dls info'];
handler.tags = ['premium'];
handler.command = /^dls$/i;
handler.premium = true;

module.exports = handler;