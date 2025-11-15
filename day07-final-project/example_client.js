// Minimal Phoenix JS client example to connect to the channel
// Place in assets/js and include in page to test channels

import { Socket } from "phoenix"

let socket = new Socket('/socket')
socket.connect()

let channel = socket.channel('room:global', {})
channel.join()
    .receive('ok', resp => { console.log('Joined', resp) })
    .receive('error', resp => { console.log('Unable to join', resp) })

channel.on('new_msg', payload => {
    console.log('New msg', payload)
})
