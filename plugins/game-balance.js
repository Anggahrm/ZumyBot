let levelling = require('../lib/levelling')
let handler = async (m, { conn, usedPrefix }) => {
    let who
    if (m.isGroup) who = m.mentionedJid[0] ? m.mentionedJid[0] : m.sender
    else who = m.sender
    if (!(who in global.db.data.users)) throw `Pengguna tidak ditemukan dalam database.`
    let name = conn.getName(m.sender)
    let user = global.db.data.users[who]
    let level = global.db.data.users[m.sender].level
    let money = global.db.data.users[m.sender].money
    let role = global.db.data.users[m.sender].role
    let limit = global.db.data.users[m.sender].limit
    let exp = global.db.data.users[m.sender].exp
    let atm = global.db.data.users[m.sender].atm
    let { max } = levelling.xpRange(level, exp, global.multiplier)
   // let name = m.fromMe ? conn.user : conn.contacts[m.sender]
    let sortedmoney = Object.entries(global.db.data.users).sort((a, b) => b[1].money - a[1].money)
    let sortedlimit = Object.entries(global.db.data.users).sort((a, b) => b[1].limit - a[1].limit)
    let sortedlevel = Object.entries(global.db.data.users).sort((a, b) => b[1].level - a[1].level)
    let sortedatm = Object.entries(global.db.data.users).sort((a, b) => b[1].level - a[1].level)
    let usersmoney = sortedmoney.map(v => v[0])
    let userslimit = sortedlimit.map(v => v[0])
    let usersatm = sortedatm.map(v => v[0])
    let userslevel = sortedatm.map(v => v[0])
    let str = `
Balance *${user.name}*
Role *${user.role}*

💰ZC: *${user.money}*
🏧 ATM: *${user.atm}*
⛔ Limit: *${user.limit}*
🎮 Level: *${user.level}*
Exp: *${user.exp}*

${readMore}
*Achievement*
1.Top ZC *${usersmoney.indexOf(who) + 1}* dari *${usersmoney.length}*
2.Top ATM *${usersatm.indexOf(who) + 1}* dari *${usersatm.length}*
3.Top Level *${userslevel.indexOf(who) + 1}* dari *${userslevel.length}*
4.Top Limit *${userslimit.indexOf(who) + 1}* dari *${userslimit.length}*
\n
`.trim()
    conn.reply(m.chat, str, m)
}
handler.help = ['balance']
handler.tags = ['game']
handler.command = /^(inv|inventory|bal|balance|bank|dompet)$/i
handler.limit = false
handler.group = false
handler.register = true
module.exports = handler

const more = String.fromCharCode(8206)
const readMore = more.repeat(4001)