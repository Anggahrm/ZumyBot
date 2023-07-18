const { translate } = require('@vitalets/google-translate-api');
const defaultLang = 'id'
const tld = 'aoa'

let handler = async (m, { args, usedPrefix, command }) => {
    let err = `

`.trim()

    let lang = args[0]
    let text = args.slice(1).join(' ')
    if ((args[0] || '').length !== 2) {
        lang = defaultLang
        text = args.join(' ')
    }

    // Jika pengguna tidak memasukkan teks
    if (!text && m.quoted && m.quoted.text) text = m.quoted.text
    if (!text) {
        m.reply(`📌 *Example:*

*${usedPrefix + command}* <lang> [text]
*${usedPrefix + command}* id Hello World

≡ *List bahasa yang didukung:* 

https://cloud.google.com/translate/docs/languages`)
        return
    }

    let result = await translate(text, { to: lang, autoCorrect: true }).catch(_ => null) 
    m.reply(result.text)
}

handler.help = ['translate <lang> <text>']
handler.tags = ['tools']
handler.command = ['translate', 'tl', 'trans', 'tr']

module.exports = handler