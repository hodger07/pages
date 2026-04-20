#!/bin/bash
cat << 'INNER_EOF' > /tmp/pagesrepo/replacement_catalyst.txt
  <h2>2. The Catalyst: The Whisper Network</h2>

  <p>This was not a meet-cute. This was an intelligence operation.</p>

  <p>The pipeline — Colton → Sarah → Abby 2 → Abby — didn't just deliver a balance sheet. They delivered the total package before you ever shook her hand. They told her you are a 5'11", fit, emotionally grounded guy who doesn't play games. They told her you are an Eagle Scout and a pilot. And yes, they absolutely made it clear that you come from serious generational wealth, airplanes, and a massive family infrastructure.</p>

  <p>She didn't walk into Date 1 hoping to meet a decent guy. She walked in carrying a dossier on a 1-of-1 statistical anomaly. A trust fund kid is easy for a girl to manipulate; a highly competent, sober, attractive man who holds his own frame <em>and</em> has the empire is terrifying to a girl who is used to steering her own ship.</p>

  <p>This is the single most important thing to understand about every interaction that followed: <strong>she has never been discovering who you are. She has been confirming what she already knew.</strong></p>

  <p>Every "surprised" reaction, every moment of being impressed — she is not learning new information. She is validating the intelligence she already gathered. The woman who sat down across from you on Date 1 had already run the numbers. Everything since that handshake has been <em>execution</em>, not exploration.</p>
INNER_EOF

sed -n '1,/<h2>2. The Catalyst: The Whisper Network<\/h2>/p' /tmp/pagesrepo/kasey-abby-brief.html | sed '$d' > /tmp/pagesrepo/part1.html
sed -n '/<h2>3. The Anomaly: Why Her Behavior Defies Her Baseline<\/h2>/,$p' /tmp/pagesrepo/kasey-abby-brief.html > /tmp/pagesrepo/part3.html

cat /tmp/pagesrepo/part1.html /tmp/pagesrepo/replacement_catalyst.txt /tmp/pagesrepo/part3.html > /tmp/pagesrepo/kasey-abby-brief.html
rm /tmp/pagesrepo/part1.html /tmp/pagesrepo/part3.html /tmp/pagesrepo/replacement_catalyst.txt
