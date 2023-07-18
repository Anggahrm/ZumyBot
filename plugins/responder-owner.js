const fs = require('fs')

let handler = async (m, { conn, text, usedPrefix, command }) => {

await conn.sendImageAsSticker(m.chat, 'https://telegra.ph/file/f1e5531702ab41773c0e6.png', m, { packname: global.packname, author: global.author })
}
handler.customPrefix = /^.*(@6287842262440).*$/i
handler.command = new RegExp
handler.limit = false
module.exports = handler

function pickRandom(list) {
  return list[Math.floor(Math.random() * list.length)]
}