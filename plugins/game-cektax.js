let handler = async (m, { conn }) => {
  let totalTax = global.db.data.tax || 0
  conn.zumy(m.chat, `Total tax: ${totalTax}`, m)
}

handler.help = ['cektax']
handler.tags = ['game']
handler.command = /^cektax$/i

module.exports = handler