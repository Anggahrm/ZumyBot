let handler = async (m, { conn }) => {
  let __timers = (new Date() - global.db.data.users[m.sender].lastmining)
  let _timers = (180000 - __timers)
  let timers = clockString(_timers)
  let time = global.db.data.users[m.sender].lastmining + 180000;
  let user = global.db.data.users[m.sender]
  
  if (new Date() - global.db.data.users[m.sender].lastmining > 180000) {
    let zcEarned = Math.floor(Math.random() * 251) + 50
    let expEarned = zcEarned * 30
    conn.reply(m.chat, `Selamat! Kamu berhasil mendapatkan *${zcEarned}* ZC dan *${expEarned}* exp dari menambang`, m)
    user.money += zcEarned
    user.exp += expEarned
    user.lastmining = new Date() * 1
  } else {
    conn.reply(m.chat, `Silakan tunggu *${msToTime(time - new Date())}* sebelum bisa menambang lagi`, m)
  }
}

handler.help = ['mine']
handler.tags = ['game']
handler.command = /^(mine|mining|nambang)$/i

handler.fail = null

module.exports = handler

function clockString(ms) {
  let m = Math.floor(ms / 60000) % 60
  let s = Math.floor(ms / 1000) % 60
  return [m, s].map(v => v.toString().padStart(2, '0')).join(':')
}

function msToTime(duration) {
    const milliseconds = parseInt((duration % 1000) / 100);
    let seconds = Math.floor((duration / 1000) % 60);
    let minutes = Math.floor((duration / (1000 * 60)) % 60);
    let hours = Math.floor((duration / (1000 * 60 * 60)) % 24);

    hours = (hours < 10) ? "0" + hours : hours;
    minutes = (minutes < 10) ? "0" + minutes : minutes;
    seconds = (seconds < 10) ? "0" + seconds : seconds;

    return minutes + " Menit " + seconds + " Detik";
}