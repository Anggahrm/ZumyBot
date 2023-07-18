const fetch = require('node-fetch')

const handler = async (m, { conn, args, usedPrefix, command }) => {
  await conn.sendMessage(m.chat, { react: { text: `⏱️`, key: m.key }})

  let type = command.toLowerCase()

  switch (type) {

    case 'waifu':
    case 'neko':
      let res = await fetch(`https://api.waifu.pics/sfw/${command}`)
      if (!res.ok) throw await res.text()
      let json = await res.json()
      if (!json.url) throw '❎ Error'
      conn.sendFile(m.chat, json.url, 'img.jpg', `✅ Random ${command}`, m)
      await conn.sendMessage(m.chat, { react: { text: `✅`, key: m.key }})
      break

    default:
  }
}

handler.help = ['waifu', 'neko']
handler.tags = ['anime']
handler.command = ['waifu', 'neko']
handler.limit = true

module.exports = handler

function pickRandom(list) {
  return list[Math.floor(list.length * Math.random())]
}