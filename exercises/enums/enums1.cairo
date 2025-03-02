// enums1.cairo
// No hints this time! ;)

use debug::print;
use debug::PrintTrait;

// define a few types of messages as used below
enum Message { 
    Quit: (),
    Echo: (),
    Move: (),
    ChangeColor: (),
}

fn main() {
    Message::Quit.print();
    Message::Echo.print();
    Message::Move.print();
    Message::ChangeColor.print();
}

impl MessagePrintImpl of PrintTrait<Message> {
    fn print(self: Message) {
        match self {
            Message::Quit => ('Quit').print(),
            Message::Echo => ('Echo').print(),
            Message::Move => ('Move').print(),
            Message::ChangeColor => ('ChangeColor').print()
        }
    }
}
