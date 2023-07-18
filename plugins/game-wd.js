const xpperatm = 1
const taxPercentage = 5

let handler = async (m, { conn, command, args }) => {
  let count = command.replace(/^wd/i, '')
  count = count ? /all/i.test(count) ? Math.floor(global.db.data.users[m.sender].atm / xpperatm) : parseInt(count) : args[0] ? parseInt(args[0]) : 1
  count = Math.max(1, count)
  if (isNaN(count)) throw `Hanya angka!\n\nContoh: .wd 5`
  
  let totalWithdrawal = xpperatm * count
  let taxAmount = Math.ceil(totalWithdrawal * (taxPercentage / 100))
  let netWithdrawal = totalWithdrawal - taxAmount
  
  if (global.db.data.users[m.sender].atm >= totalWithdrawal) {
    global.db.data.users[m.sender].atm -= totalWithdrawal
    global.db.data.users[m.sender].money += netWithdrawal
    global.db.data.tax += taxAmount // Add tax amount to global.db.data.tax
    conn.reply(m.chat, `- ${totalWithdrawal} 💳\n- ${taxAmount} (5% tax)\n+ ${netWithdrawal} 💹\n\n[ ! ] Sukses withdraw ZC!`, m)
  } else {
    conn.reply(m.chat, `[❗] Uang anda tidak mencukupi untuk withdraw ${count} ZC!`, m)
  }
}

handler.help = ['wd <jumlah>']
handler.tags = ['game']
handler.command = /^wd ([0-9]+)|wd|wdall$/i
handler.owner = false
handler.mods = false
handler.premium = false
handler.group = false
handler.private = false
handler.admin = false
handler.botAdmin = false

module.exports = handler