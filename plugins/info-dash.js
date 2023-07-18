var handler = async (m, { conn }) => {
  var stats = Object.entries(db.data.stats).map(([key, val]) => {
    var name = Array.isArray(plugins[key]?.help) ? plugins[key]?.help?.join(' , ') : plugins[key]?.help || key;
    if (/exec/.test(name)) return;
    return { name, ...val };
  });

  stats = stats.sort((a, b) => b.total - a.total);

  var output = stats.slice(0, 20).map(({ name, total, last }) => {
    return `乂 *Command*: *${name}*\n• *Day HIT*: ${last}\n• *Global HIT*: ${total}`;
  }).join("\n\n");

  conn.reply(m.chat, `*Hits Summary*\n\n${output}`, m); // Send combined output for day hits and global hits
};

handler.command = handler.help = ['dashboard', 'dash', 'views'];
handler.tags = ['main'];
module.exports = handler;