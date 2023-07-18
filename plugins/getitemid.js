const fs = require('fs')

const handler = async (m, { conn, usedPrefix, command, text }) => {
  const data = JSON.parse(fs.readFileSync('/home/container/plugins/zitem.json'))
  let results = [];

  // Cek apakah input merupakan ID atau bukan
  if (!isNaN(text)) {
    const id = parseInt(text);
    const item = Object.entries(data).find(([name, itemId]) => itemId === id);

    if (item) {
      // Jika ditemukan item dengan ID yang sesuai
      const [name, id] = item;
      results.push({ name, id });
    }
  } else {
    // Cari item berdasarkan nama
    for (const [name, id] of Object.entries(data)) {
      if (name.toLowerCase().includes(text.toLowerCase())) {
        results.push({ name, id });
        if (results.length === 10) break; // Batasi pencarian hingga 10 item
      }
    }
  }

  if (results.length === 1) {
    await m.reply(`Name: ${results[0].name}\nID: ${results[0].id}`);
  } else if (results.length > 1) {
    const message = results.map(result => `Name: ${result.name}\nID: ${result.id}`).join('\n\n');
    await m.reply(`Found ${results.length} items:\n\n${message}\n\nPlease provide a more specific name.`);
  } else {
    await m.reply(`Item not found.`);
  }
}

handler.help = ['item (id/name)'];
handler.tags = ['premium'];
handler.command = /^(itemid|item|id)$/i;
handler.premium = false;

module.exports = handler;