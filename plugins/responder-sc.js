const fs = require('fs')

let handler = async (m, { conn, text, usedPrefix, command }) => {

await conn.sendImageAsSticker(m.chat, 'https://telegra.ph/file/cfbaa1d34570c5daa7b41.png', m, { packname: global.packname, author: global.author })
}
handler.command = /^(sc|script)$/i
handler.limit = false
module.exports = handler

function pickRandom(list) {
  return list[Math.floor(Math.random() * list.length)]
}