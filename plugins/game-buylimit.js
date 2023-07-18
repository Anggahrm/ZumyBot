const zcperlimit = 100
let handler = async (m, { conn, usedPrefix, command, args }) => {
  let count = command.replace(/^buy/i, '')
  count = count ? /all/i.test(count) ? Math.floor(global.db.data.users[m.sender].money / zcperlimit) : parseInt(count) : args[0] ? parseInt(args[0]) : 1
  count = Math.max(1, count)
  if (isNaN(count)) throw `hanya angka!\n\ncontoh: .buy 5`
  if (global.db.data.users[m.sender].money >= zcperlimit * count) {
    global.db.data.users[m.sender].money -= zcperlimit * count
    global.db.data.users[m.sender].limit += count
    conn.reply(m.chat, `Kamu membeli limit dengan harga\n*${zcperlimit * count} ZC* dan mendapatkan *${count} Limit.*`, m)
  } else conn.reply(m.chat, `ZC tidak mencukupi untuk membeli *${count} Limit.*`, m)
}
handler.help = ['buy <number>', 'buyall']
handler.tags = ['game']
handler.command = /^buy([0-9]+)|buy|buyall$/i

module.exports = handler