Your boss walks up to your desk in a foul mood. "Just look at this array of email addresses.

Some of the email addresses have capital letters in them! I need you to fix this." She hands you an array of email addresses and she'd like back an array of all-lowercase email addresses.

She gives you an hour because she thinks you're going to have to go through this by hand. Instead, you have a bright idea: you'll write some Ruby to solve this problem. Just make sure you write some tests as it would pretty embarassing if your script had some bugs in it

(`map`, `collect`)

---

You boss seems pretty happy with the array of email address you gave her. You're starting to get a reputation as a problem solver. Your boss has given you a pile of orders from today to process. She wants to know how much money we made today.

You decide you'll write a program that takes each order, gets the amount from each order and adds it all together.

(`map`, `collect`, `reduce`, `inject`)

---

Pleased with your new revenue calculating algorithm, your boss comes in to remind you that we rent out some space in the warehouse to a lima bean granola start-up down the street.

They pay $25 a day and that amount should be added to our daily revenue. They're growing quickly, so she doesn't know how long they'll continue renting. She'd like it if your Ruby can account for any baseline revenue.

(`map`, `collect`, `reduce`, `inject` with a starting value)

---

Waldemar from sales has heard about the work you've done with processing large amounts of data. You're something of a legend around the office.

He corners you in the breakroom as you try to buy a Baby Ruth.

"Hey, do you think you could do me a solid? We have this big database of clients and we'd like to know everyone who hasn't placed an order from us in the last month so we can call them up and give them our hardest pitch. Could you write one of those fancy scripts for us to return an array of all of our lapsed clients from an array?"

You reluctantly agree.

(`select`, `find_all`)

---

Waldemar slinks up to your desk sharpening a pencil. "Yea, so. There are a lot more lapsed clients than we were expecting. Given the fact that we don't make many sales, the company hasn't bought us new computers in a while. Do you think you could adjust that script to only give us the first lapsed client that it comes across that we should followed up with? That'd be clutch."

(`detect`, `find`)

---

Your boss strolls in with a cup of coffee. "Remember that list of orders I gave you? Well, I just realized that a bunch of them were cancelled because. Could you filter out all of the cancelled orders before you calculate our total revenue for the day? I'd really appreciate it."

(`reject`)

---

Rhoda from shipping pops in with a package for you. It's those manilla folders you've been asking for.

"Hey, could I ask you a favor? We have a bunch of shipments downstairs. Ideally, we'd like to put the heaviest boxes at the bottom of the truck. Do you think you could write one of those fancy Ruby scripts of yours that would tell us what the heaviest box is?"

You reluctantly agree.

(`max_by`)

---

It's about lunch time and you begin to pack up your things. You're reputation as a Rubyist has proven to be more work than you intended. You grab your bag and realize that you've forgotten your lunch.

Bruno from shipping walks into your office. "Rhoda sent me up. She wants to know if you can make us a second script that tells us the what the lightest shipments are so we can put them on the higher racks.

(`min_by`)

---

Returning from lunch, you hear some quibbling down the hall. Rhoda and Bruno are trying to access the shipping department's one terminal at the same time. Rhoda wants to look up what the next heaviest box is. Bruno is trying to find out what the lightest box is. They look up and see you coming down the hall.

"Oh hey! We were wondering if you could write us a script that would give us back both the heaviest and the lightest shipment at the same time. Do you think you could do that for us?"

(`minmax_by`)

---

Sylvester from HR knocks on your door. You lift your head up and wipe away the tears.

"I'm trying to organize an interdepartmental cricket tournament. But our mainframe will only spit out a single list of the company employees. That's no good. I need them by department. I don't know a lot about this Haskell program language you've been using to solve everyone's issues, but I was thinking maybe you could give me back a hash with each department as a key and then an array of staff members in an array as the value for each key. Yea, but like I said, I don't know much about Python."

(`group_by`)
