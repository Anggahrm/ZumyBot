const xppermoney = 1
let handler = async (m, { conn, command, args }) => {
  let count = command.replace(/^depo/i, '')
  count = count ? /all/i.test(count) ? Math.floor(global.db.data.users[m.sender].money / xppermoney) : parseInt(count) : args[0] ? parseInt(args[0]) : 1
  count = Math.max(1, count)
  if (isNaN(count)) throw `hanya angka!\n\ncontoh: .depo 5`
  if (global.db.data.users[m.sender].money >= xppermoney * count) {
    global.db.data.users[m.sender].money -= xppermoney * count
    global.db.data.users[m.sender].atm += count
    conn.reply(m.chat, `- ${xppermoney * count} 💹\n+ ${count} 💳\n\n[ ! ] Sukses deposit !`, m)
  } else conn.reply(m.chat, `[❗] ZC anda tidak mencukupi untuk deposit ${count} !`, m)
}
handler.help = ['depo <jumlah>', 'depoall']
handler.tags = ['game']
handler.command = /^depo([0-9]+)|depo|depoall$/i
handler.owner = false
handler.mods = false
handler.premium = false
handler.group = false
handler.private = false

handler.admin = false
handler.botAdmin = false

module.exports = handler