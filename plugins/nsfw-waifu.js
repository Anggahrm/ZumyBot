const fetch = require('node-fetch')
const handler = async (m, { conn, args, usedPrefix, command }) => {
  let user = global.db.data.users[m.sender]
  if (user.limit <= 0) throw 'Limit anda habis, silahkan beli melalui *.buy*'
  await conn.reply(m.chat, 'pesan terkirim di private chat', m)
  await conn.sendMessage(m.chat, { react: { text: `⏱️`, key: m.key }})
  let type = command.toLowerCase()
  let requestCount = args[0] || 1
  requestCount = Math.min(requestCount, 100, user.limit)
  let sentCount = 0
  switch (type) {
    case 'waifus':
      for (let i = 0; i < requestCount; i++) {
        setTimeout(async () => {
          let res = await fetch(`https://api.waifu.pics/nsfw/waifu`)
          if (!res.ok) throw await res.text()
          let json = await res.json()
          if (!json.url) throw '❎ Error'
          conn.sendFile(m.sender, json.url, 'img.jpg', `✅ Random ${command}`, m)
          await conn.sendMessage(m.chat, { react: { text: `✅`, key: m.key }})
          user.limit -= 5
          global.db.data.users[m.sender] = user
          sentCount++
          if (sentCount === requestCount) {
            conn.reply(m.chat, `${requestCount * 5} Limit terpakai`, m)
          }
        }, i * 3000)
      }
      break
    default:
  }
}

handler.help = ['waifus [jumlah]']
handler.tags = ['nsfw']
handler.command = ['waifus']
handler.premium = false

module.exports = handler