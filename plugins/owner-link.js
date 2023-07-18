const fs = require('fs');

const handler = async (m, { conn, isOwner, args, command }) => {
  const addLink = async (name, link) => {
    const links = await readLinks();
    links[name.toLowerCase()] = link;
    await writeLinks(links);
    m.reply(`Link ${name} telah ditambahkan.`);
  };

  const getLink = async (name) => {
    const links = await readLinks();
    const link = links[name.toLowerCase()];
    if (!link) {
      return m.reply(`Link ${name} tidak ditemukan.`);
    }
    m.reply(`Nama: ${name}\nLink: ${link}`);
  };

  const readLinks = async () => {
    try {
      const linksJSON = await fs.promises.readFile('/home/container/links.json', 'utf-8');
      return JSON.parse(linksJSON);
    } catch (err) {
      if (err.code === 'ENOENT') {
        await fs.promises.writeFile('/home/container/links.json', '{}', 'utf-8');
        return {};
      }
      throw err;
    }
  };

  const writeLinks = async (links) => {
    await fs.promises.writeFile('/home/container/links.json', JSON.stringify(links, null, 2), 'utf-8');
  };

  const getLinksList = async () => {
    const links = await readLinks();
    const message = Object.keys(links).length
      ? `List link yang tersimpan:\n\n${Object.keys(links).map(name => `*${name}*`).join('\n')}`
      : 'Tidak ada link yang tersimpan.';
    m.reply(message);
  }

  switch (command) {
    case 'addlink':
      if (!isOwner) {
        return m.reply('Perintah ini hanya dapat digunakan oleh Owner!');
      }
      if (args.length < 2) {
        return m.reply(`Format salah. Silakan gunakan *${command} <name> <link>*.`);
      }
      const [name, link] = args;
      await addLink(name, link);
      break;

    case 'getlink':
      if (args.length < 1) {
        return m.reply(`Format salah. Silakan gunakan *${command} <name>*.`);
      }
      if (args[0] === 'info') {
        await getLinksList();
      } else {
        await getLink(args[0]);
      }
      break;
  }
};

handler.help = ['addlink <name> <link>', 'getlink <name>', 'getlink info'];
handler.tags = ['database'];
handler.command = /^(addlink|getlink)$/i;

module.exports = handler;