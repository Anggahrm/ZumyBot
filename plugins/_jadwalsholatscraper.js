const { jadwalsholat } = require('@bochilteam/scraper');

let handler = async (m, { text, usedPrefix, command }) => {
  if (!text) throw `Use example ${usedPrefix}${command} semarang`;

  try {
    const res = await jadwalsholat(text);
    const todayData = Object.entries(res.today)
      .map(([name, data]) => `*Sholat ${name}:* ${data}`)
      .join('\n')
      .trim();

    m.reply(`
      Jadwal Sholat *${text}*
      ${todayData}
    `.trim());
  } catch (error) {
    m.reply(`${error.message}`);
  }
};

handler.help = ['salat <daerah>'];
handler.tags = ['islam'];
handler.command = /^(jadwal)?s(a|o|ha|ho)lat$/i;

module.exports = handler;