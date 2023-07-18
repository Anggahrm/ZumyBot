let handler = async (m, { conn, text, usedPrefix }) => {
    let [number, nama, pesan] = text.split('|');

    if (!number) return conn.reply(m.chat, 'Silahkan masukkan nomor yang akan dikirim\nContoh: .pesan +6287842262440|Nama|Halo Bang', m);
    if (!nama) return conn.reply(m.chat, 'Silahkan masukkan nama kamu\nContoh: .pesan +6287842262440|Nama|Halo Bang', m);
    if (!pesan) return conn.reply(m.chat, 'Silahkan masukkan pesannya\nContoh: .pesan +6287842262440|Nama|Halo Bang', m);
    if (pesan.length > 500) return conn.reply(m.chat, 'Teks terlalu panjang!', m);

    let user = global.db.data.users[m.sender];

    number = number.replace(/[\s+\-]/g, '');

    let korban = `${number}@s.whatsapp.net`;
    var nomor = m.sender;
    let spam1 = `*「 PENITIPAN PESAN 」*\n\nDari: ${nama}\nPesan: ${pesan}\n\n*${global.wm}*`;

await conn.zumy(korban, spam1);
    conn.sendText(korban, 'gunakan *.pesan Nomor|Nama|Halo* Bang jika kamu ingin menggunakan fitur ini');

    let logs = `[ ✔️ ] Berhasil mengirim pesan wa ke nomor ${number}`;
    conn.reply(m.chat, logs, m);
};
handler.command = /^(pesan|chat|confess|menfess)$/i;
handler.rowner = false;
handler.limit = false;
handler.premium = false;
handler.group = false;
handler.private = true;
handler.admin = false;
handler.botAdmin = false;
handler.fail = null;
handler.limit = false;
module.exports = handler;