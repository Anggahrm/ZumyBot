const ro = 3000;

function handler(m, { conn, usedPrefix, command }) {
    const time = global.db.data.users[m.sender].lastrob + 600000;
    if (new Date() - global.db.data.users[m.sender].lastrob < 600000)
        throw `⏱️ Hey! Tunggu *${msToTime(time - new Date())}* untuk merampok lagi.`;

    let who;
    if (m.isGroup) who = m.mentionedJid[0] ? m.mentionedJid[0] : m.quoted ? m.quoted.sender : false;
    else who = m.chat;

    if (!who) throw `✳️ Tag orang yang ingin Anda rampok.`;
    if (!(who in global.db.data.users)) throw `✳️ Pengguna tidak ditemukan dalam database.`;

    const users = global.db.data.users[who];
    const rob = Math.floor(Math.random() * ro);

    if (users.money < rob)
        return m.reply(`🔖 @${who.split`@`[0]} memiliki kurang dari *${ro} ZC*\nJangan merampok orang yang miskin. :(`, null, { mentions: [who] });

    global.db.data.users[m.sender].money += rob;
    global.db.data.users[who].money -= rob;

    m.reply(`
  ‣ Anda merampok dan mendapatkan *${rob} ZC* 
  `, null, { mentions: [who] });

    global.db.data.users[m.sender].lastrob = new Date() * 1;
}

handler.help = ['rob'];
handler.tags = ['game'];
handler.command = ['rampok', 'rob'];
handler.group = true

module.exports = handler;

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