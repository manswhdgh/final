<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>http://www.blueb.co.kr</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<style type="text/css">

/******************************************************************************
* Styles for page and game areas.                                             *
******************************************************************************/

body {
  background-color: #40a040;
  font-family: Arial, Helvetica, sans-serif;
  font-size: 10pt;
  margin-top: 1em;
  text-align: center;
}

#header
{
  background-color: #208020;
  border-color: #60c060 #006000 #006000 #60c060;
  border-style: solid;
  border-width: 1px;
  color: #ffffc0;
  margin-bottom: 1ex;
  padding: 4px 1em;
}

#header h2
{
	margin: 0px;
	padding: 0px;
}

.playingField {
  border-color:  #208020 #60c060 #60c060 #208020;
  border-style: solid;
  border-width: 1px;
  color: #000000;
  margin-bottom: 8px;
  padding: 4px;
  text-align: left;
}

.activeField {
  background-color: #60c060;
  border-color:  #006000 #90f090 #90f090 #006000;
}

.cardArea {
  font-size: 20pt;
  height: 6em;
  position: relative;
}

.textBox {
  background-color: #ffffc0;
  border-color:  #006000 #90f090 #90f090 #006000;
  border-style: solid;
  border-width: 1px;
  clear: right;
  color: #000000;
  float: right;
  font-family: "Times New Roman", serif;
  font-size: 11pt;
  font-weight: bold;
  margin-bottom: .5em;
  padding: .1em;
  text-align: center;
  width: 12em;
}

.name {
  background-color: #208020;
  border-color: #60c060 #006000 #006000 #60c060;
  color: #ffffc0;
}

.result { color: #c00000; }

.dollars { color: #006000; }

.lost { color: #80b060; }

#controlsArea {
  margin-top: 0.5em;
  text-align: left;
}

#rulesBox {
  background-color: #60c060;
  border-color:  #006000 #90f090 #90f090 #006000;
  border-style: solid;
  border-width: 1px;
  display: none;
  margin: 1em auto 1em auto;
  padding: 0.5em 1em 0.5em 1em;
  text-align: left;
  width: 40em;
}

input.button {
  margin-top: .25em;
  width: 8em;
}

/******************************************************************************
* Playing card styles.                                                        *
******************************************************************************/

.card {
  background-image: url("resources/img/cardback.gif");
  border-color: #808080 #000000 #000000 #808080;
  border-width: 1px;
  border-style: solid;
  font-size: 20pt;
  position: absolute;
  width:  3.75em;
  height: 5.00em;
}

.front {
  background-color: #ffffff;
  color: #000000;
  position: absolute;
  width: 100%;
  height: 100%;
}

.red { color: #ff0000; }

.index {
  font-size: 50%;
  font-weight: bold;
  text-align: center;
  position: absolute;
  left: 0.25em;
  top:  0.25em;
}

.ace {
  font-size: 300%;
  position: absolute;
  left: 0.325em;
  top:  0.250em;
}

.face {
  border: 1px solid #000000;
  position: absolute;
  left: 0.50em;
  top:  0.45em;
  width:  2.6em;
  height: 4.0em;
}

.spotA1 { position: absolute; left: 0.60em; top: 0.5em; }
.spotA2 { position: absolute; left: 0.60em; top: 1.5em; }
.spotA3 { position: absolute; left: 0.60em; top: 2.0em; }
.spotA4 { position: absolute; left: 0.60em; top: 2.5em; }
.spotA5 { position: absolute; left: 0.60em; top: 3.5em; }

.spotB1 { position: absolute; left: 1.55em; top: 0.5em; }
.spotB2 { position: absolute; left: 1.55em; top: 1.0em; }
.spotB3 { position: absolute; left: 1.55em; top: 2.0em; }
.spotB4 { position: absolute; left: 1.55em; top: 3.0em; }
.spotB5 { position: absolute; left: 1.55em; top: 3.5em; }

.spotC1 { position: absolute; left: 2.50em; top: 0.5em; }
.spotC2 { position: absolute; left: 2.50em; top: 1.5em; }
.spotC3 { position: absolute; left: 2.50em; top: 2.0em; }
.spotC4 { position: absolute; left: 2.50em; top: 2.5em; }
.spotC5 { position: absolute; left: 2.50em; top: 3.5em; }

</style>
<script type="text/javascript">//<![CDATA[

//=============================================================================
// Card and Stack Objects
//=============================================================================

//-----------------------------------------------------------------------------
// Card constructor function.
//-----------------------------------------------------------------------------

function Card(rank, suit) {

  this.rank = rank;
  this.suit = suit;

  this.createNode = cardCreateNode;
}

//-----------------------------------------------------------------------------
// cardCreateNode(): Returns a DIV node which can be used to display the card 
// on a page.
//-----------------------------------------------------------------------------

// Preload graphics.

var cardImg0 = new Image(); cardImg0.src= "resources/img/cardback.gif";
var cardImg1 = new Image(); cardImg1.src= "resources/img/jack.gif";
var cardImg2 = new Image(); cardImg2.src= "resources/img/queen.gif";
var cardImg3 = new Image(); cardImg3.src= "resources/img/king.gif";

function cardCreateNode() {

  var cardNode, frontNode, indexNode, spotNode, tempNode, textNode;
  var indexStr, spotChar;

  // This is the main node, a DIV tag.

  cardNode = document.createElement("DIV");
  cardNode.className = "card";

  // Build the front of card.

  frontNode = document.createElement("DIV");
  frontNode.className = "front";

  // Get proper character for card suit and change font color if necessary.

  spotChar = "\u00a0";
  switch (this.suit) {
    case "C" :
      spotChar = "\u2663";
      break;
    case "D" :
      frontNode.className += " red";
      spotChar = "\u2666";
      break;
    case "H" :
      frontNode.className += " red";
      spotChar = "\u2665";
      break;
    case "S" :
      spotChar = "\u2660";
      break;
  }

  // Create and add the index (rank) to the upper-left corner of the card.

  indexStr = this.rank;
  if (this.toString() == "")
    indexStr = "\u00a0";
  spotNode = document.createElement("DIV");
  spotNode.className = "index";
  textNode = document.createTextNode(indexStr);
  spotNode.appendChild(textNode);
  spotNode.appendChild(document.createElement("BR"));
  textNode = document.createTextNode(spotChar);
  spotNode.appendChild(textNode);
  frontNode.appendChild(spotNode);

  // Create and add spots based on card rank (Ace thru 10).

  spotNode = document.createElement("DIV");
  textNode = document.createTextNode(spotChar);
  spotNode.appendChild(textNode);
  if (this.rank == "A") {
    spotNode.className = "ace";
    tempNode = spotNode.cloneNode(true);
    frontNode.appendChild(tempNode);
  }
  if (this.rank == "3" || this.rank == "5" || this.rank == "9") {
    spotNode.className = "spotB3";
    tempNode = spotNode.cloneNode(true);
    frontNode.appendChild(tempNode);
  }
  if (this.rank == "2" || this.rank == "3") {
    spotNode.className = "spotB1";
    tempNode = spotNode.cloneNode(true);
    frontNode.appendChild(tempNode);
  }
  if (this.rank == "2" || this.rank == "3") {
    spotNode.className = "spotB5";
    tempNode = spotNode.cloneNode(true);
    frontNode.appendChild(tempNode);
  }
  if (this.rank == "4" || this.rank == "5" || this.rank == "6" ||
      this.rank == "7" || this.rank == "8" || this.rank == "9" ||
      this.rank == "10") {
    spotNode.className = "spotA1";
    tempNode = spotNode.cloneNode(true);
    frontNode.appendChild(tempNode);
    spotNode.className = "spotA5";
    tempNode = spotNode.cloneNode(true);
    frontNode.appendChild(tempNode);
    spotNode.className = "spotC1";
    tempNode = spotNode.cloneNode(true);
    frontNode.appendChild(tempNode);
    spotNode.className = "spotC5";
    tempNode = spotNode.cloneNode(true);
    frontNode.appendChild(tempNode);
  }
  if (this.rank == "6" || this.rank == "7" || this.rank == "8") {
    spotNode.className = "spotA3";
    tempNode = spotNode.cloneNode(true);
    frontNode.appendChild(tempNode);
    spotNode.className = "spotC3";
    tempNode = spotNode.cloneNode(true);
    frontNode.appendChild(tempNode);
  }
  if (this.rank == "7" || this.rank == "8" || this.rank == "10") {
    spotNode.className = "spotB2";
    tempNode = spotNode.cloneNode(true);
    frontNode.appendChild(tempNode);
  }
  if (this.rank == "8" || this.rank == "10") {
    spotNode.className = "spotB4";
    tempNode = spotNode.cloneNode(true);
    frontNode.appendChild(tempNode);
  }
  if (this.rank == "9" || this.rank == "10") {
    spotNode.className = "spotA2";
    tempNode = spotNode.cloneNode(true);
    frontNode.appendChild(tempNode);
    spotNode.className = "spotA4";
    tempNode = spotNode.cloneNode(true);
    frontNode.appendChild(tempNode);
    spotNode.className = "spotC2";
    tempNode = spotNode.cloneNode(true);
    frontNode.appendChild(tempNode);
    spotNode.className = "spotC4";
    tempNode = spotNode.cloneNode(true);
    frontNode.appendChild(tempNode);
  }

  // For face cards (Jack, Queen or King), create and add the proper image.

  tempNode = document.createElement("IMG");
  tempNode.className = "face";
  if (this.rank == "J")
    tempNode.src = "resources/img/jack.gif";
  if (this.rank == "Q")
    tempNode.src = "resources/img/queen.gif";
  if (this.rank == "K")
    tempNode.src = "resources/img/king.gif";

  // For face cards, add suit characters to the upper-left and lower-right
  // corners.

  if (this.rank == "J" || this.rank == "Q" || this.rank == "K") {
    frontNode.appendChild(tempNode);
    spotNode.className = "spotA1";
    tempNode = spotNode.cloneNode(true);
    frontNode.appendChild(tempNode);
    spotNode.className = "spotC5";
    tempNode = spotNode.cloneNode(true);
    frontNode.appendChild(tempNode);
  }

  // Add front node to the card node.

  cardNode.appendChild(frontNode);

  // Return the card node.

  return cardNode;
}

//-----------------------------------------------------------------------------
// Stack constructor function.
//-----------------------------------------------------------------------------

function Stack() {

  // Create an empty array of cards.

  this.cards = new Array();

  this.makeDeck  = stackMakeDeck;
  this.shuffle   = stackShuffle;
  this.deal      = stackDeal;
  this.cardCount = stackCardCount;
}

//-----------------------------------------------------------------------------
// stackMakeDeck(n): Initializes a stack using 'n' packs of cards.
//-----------------------------------------------------------------------------

function stackMakeDeck(n) {

  var ranks = new Array("A", "2", "3", "4", "5", "6", "7", "8", "9",
                        "10", "J", "Q", "K");
  var suits = new Array("C", "D", "H", "S");
  var i, j, k;
  var m;

  m = ranks.length * suits.length;

  // Set array of cards.

  this.cards = new Array(n * m);

  // Fill the array with 'n' packs of cards.

  for (i = 0; i < n; i++)
    for (j = 0; j < suits.length; j++)
      for (k = 0; k < ranks.length; k++)
        this.cards[i * m + j * ranks.length + k] = new Card(ranks[k], suits[j]);
}

//-----------------------------------------------------------------------------
// stackShuffle(n): Shuffles a stack of cards 'n' times. 
//-----------------------------------------------------------------------------

function stackShuffle(n) {

  var i, j, k;
  var temp;

  // Shuffle the stack 'n' times.

  for (i = 0; i < n; i++)
    for (j = 0; j < this.cards.length; j++) {
      k = Math.floor(Math.random() * this.cards.length);
      temp = this.cards[j];
      this.cards[j] = this.cards[k];
      this.cards[k] = temp;
    }
}

//-----------------------------------------------------------------------------
// stackDeal(): Removes the first card in the stack and returns it.
//-----------------------------------------------------------------------------

function stackDeal() {

  if (this.cards.length > 0)
    return this.cards.shift();
  else
    return null;
}

//-----------------------------------------------------------------------------
// stackCardCount(): Returns the number of cards currently in the stack.
//-----------------------------------------------------------------------------

function stackCardCount() {

  return this.cards.length;
}

// ============================================================================
// Blackjack game.
// ============================================================================

// Constants.

var numPacks      =    4;
var numShuffles   =   10;

var maxSplits     =    3;

var minBet        =    5;
var maxBet        =  100;
var initCredit    = 1000;
var initBet       =   10;

var dealTimeDelay =  750;

// Globals.

var deck;
var burnCard;

var dealer;
var player = new Array(maxSplits + 1);
var curPlayerHand, numPlayerHands;

var credits, defaultBet;
var creditsTextNode, defaultTextNode;

var dealRoundCounter;

// Initialize game on page load.

window.onload = initGame;

function initGame() {

  var i;

  // Locate credits and default bet text nodes on the page.

  creditsTextNode = document.getElementById("credits").firstChild;
  defaultTextNode = document.getElementById("default").firstChild;

  // Initialize player's credits and bet amount.

  credits    = initCredit;
  defaultBet = initBet;
  changeBet(0);
  updateBetDisplay(0);

  // Initialize card deck.

  deck = new Stack();
  newDeck();

  // Create dealer and player hands.

  dealer = new Hand("dealer");
  for (i = 0; i < player.length; i++)
    player[i] = new Hand("player" + i);
}

// ----------------------------------------------------------------------------
// Blackjack hand object.                    
// ----------------------------------------------------------------------------

Hand.prototype.leftIncr  =  2.5;  // For positioning cards.
Hand.prototype.topIncr   =  0.2;
Hand.prototype.rollEvery =  5;

function Hand(id) {

  this.cards = new Array();

  // Get page elements based on id.

  this.fieldNode     = document.getElementById(id);
  this.cardsNode     = document.getElementById(id + "Cards");
  this.scoreTextNode = document.getElementById(id + "Score").firstChild;
  if (id != "dealer") {
    this.betTextNode    = document.getElementById(id + "Bet").firstChild;
    this.resultTextNode = document.getElementById(id + "Result").firstChild;
  }

  this.reset      = handReset;
  this.addCard    = handAddCard;
  this.removeCard = handRemoveCard;
  this.getScore   = handGetScore;
  this.clearCards = handClearCards;

  // Initialize as an empty hand.

  this.reset();
}

function handReset() {

  // Remove any cards and initialize properties.

  this.clearCards();

  this.cards     = new Array();
  this.blackjack = false;
  this.split     = false;
  this.doubled   = false;
  this.surrender = false;
  this.left      = 0;
  this.top       = 0;

  this.scoreTextNode.nodeValue  = "\u00a0";
  if (this.betTextNode) {
    this.betTextNode.parentNode.className = "textBox dollars";
    this.betTextNode.nodeValue = "\u00a0";
  }
  if (this.resultTextNode)
    this.resultTextNode.nodeValue = "\u00a0";
}

function handAddCard(card, down) {

  var n;
  var node;

  // Add the given card to the hand.

  n = this.cards.length;
  this.cards[n] = card;

  // Create a card node for display, set as face down if requested.

  node = this.cards[n].createNode();
  if (down)
    node.firstChild.style.visibility = "hidden";

  // Add the card display to the associated card area on the page.

  node.style.left = this.left + "em";
  node.style.top  = this.top  + "em";
  this.cardsNode.appendChild(node);
  this.left += this.leftIncr;
  if (this.cards.length % this.rollEvery == 0)
    this.top = 0;
  else
    this.top += this.topIncr;
}

function handRemoveCard() {

  var card;

  // Remove the last card in the array and save it.

  card = null;
  if (this.cards.length > 0) {
    card = this.cards.pop();

    // Remove the card node from the display and reset position.

    this.cardsNode.removeChild(this.cardsNode.lastChild);
    this.left -= this.leftIncr;
    this.top  -= this.topIncr;
  }

  // Return the card.

  return card;
}

function handGetScore() {

  var i, total;

  total = 0;

  // Total card values counting Aces as one.

  for (i = 0; i < this.cards.length; i++)
    if (this.cards[i].rank == "A")
      total++;
    else {
      if (this.cards[i].rank == "J" || this.cards[i].rank == "Q" ||
          this.cards[i].rank == "K")
        total += 10;
      else
        total += parseInt(this.cards[i].rank, 10);
    }

  // Change as many ace values to 11 as possible.

  for (i = 0; i < this.cards.length; i++)
    if (this.cards[i].rank == "A" && total <= 11)
      total += 10;

  return total;
}

function handClearCards() {

  // Remove the card nodes in the associated card area.

  while (this.cardsNode.lastChild)
    this.cardsNode.removeChild(this.cardsNode.lastChild);
}

// ----------------------------------------------------------------------------
// Game functions.
// ----------------------------------------------------------------------------

function newDeck() {

  // Create a deck.

  deck.makeDeck(numPacks);
  deck.shuffle(numShuffles);

  // Set the burn card.

  burnCard = Math.round(Math.random() * 26) + 26;
}

function getNextCard() {

  // If there are no cards left, start a new deck.

  if (deck.cardCount() == 0) {
    alert("New Deck");
    newDeck();
  }

  return deck.deal();
}

function startRound() {

  var i;

  // Reset all hands.

  dealer.reset();
  for (i = 0; i < player.length; i++) {
    player[i].reset();
    if (i > 0)
      player[i].fieldNode.style.display = "none";
  }

  // Start with a single player hand.

  curPlayerHand  = 0;
  numPlayerHands = 1;

  // Enable/disable buttons.

  document.forms["controls"].elements["deal"].disabled      = true;
  document.forms["controls"].elements["increase"].disabled  = true;
  document.forms["controls"].elements["decrease"].disabled  = true;
  DisablePlayButtons();

  // If the burn card was reached, start a new deck.

  if (deck.cardCount() < burnCard) {
    alert("New deck.");
    newDeck();
  }

  // Take the player's bet.

  player[0].bet = defaultBet;
  credits -= player[0].bet;
  updateBetDisplay(0);

  // Start dealing the cards.
  dealRoundCounter = 1;
  dealRound();
}

function dealRound()
{

  // Deal a card to the player or the dealer based on the counter.

  switch(dealRoundCounter)
  {
    case 1:
      player[0].addCard(getNextCard(), false);
      break;

    case 2:
      dealer.addCard(getNextCard(), true);
      break;

    case 3:
      player[0].addCard(getNextCard(), false);
      break;

    case 4:
      dealer.addCard(getNextCard(), false);
      break;

    default:

      // No more cards to deal, play the round.

      playRound();
      return;
      break;
  }

  // Update the player's score.

  if (player[0].getScore() == 21) {
    player[0].blackjack = true;
    player[0].scoreTextNode.nodeValue = "Blackjack";
  }
  else
    player[0].scoreTextNode.nodeValue = player[0].getScore();

  // Set a timer for the next call.

  dealRoundCounter++;
  setTimeout(dealRound, dealTimeDelay);
}

function playRound() {

  // If dealer's up card is an ace, offer insurance.

  if (dealer.cards[1].rank == "A")
    offerInsurance();

  // Check for dealer blackjack.

  if (dealer.getScore() == 21) {
    dealer.blackjack = true;
    dealer.scoreTextNode.nodeValue = "Blackjack";
  }

  // If player or dealer has blackjack, end the round.

  if (player[0].blackjack || dealer.blackjack) {
    endRound();
    return;
  }

  // Enable/disable buttons.

  if (canSplit())
    document.forms["controls"].elements["split"].disabled = false;
  document.forms["controls"].elements["double"].disabled    = false;
  document.forms["controls"].elements["surrender"].disabled = false;
  document.forms["controls"].elements["hit"].disabled       = false;
  document.forms["controls"].elements["stand"].disabled     = false;

  // Highlight the player's hand.

  addClassName(player[0].fieldNode, "activeField");
}

function offerInsurance() {

  var amount;

  // Offer insurance bet to player. This is a side bet so it's resolved here.

  if (confirm("Do you want to buy insurance?")) {

    // Take half of player's current bet from credits.

    amount = player[0].bet / 2;
    credits -= amount;

    // If the dealer has blackjack, show the down card and pay player at 2 to 1.

    if (dealer.getScore() == 21)
    {
      dealer.cardsNode.firstChild.firstChild.style.visibility = "";
      credits += player[0].bet;
      alert("Dealer has Blackjack, you win " + formatDollar(player[0].bet));
    }
    else
      alert("Dealer does not have Blackjack, you lose " + formatDollar(amount));

    // Update credits.

    updateBetDisplay(0);
  }
}

function playerSplit() {

  var m, n;
  var card, node;

  // Enable/disable buttons.

  DisablePlayButtons();

  // Update the number of player hands.

  m = curPlayerHand;
  n = numPlayerHands;
  numPlayerHands++;

  // Note the split.

  player[m].split = true;
  player[n].split = true;

  // Remove the second card from the current hand and add it to a new hand.

  card = player[m].removeCard();
  player[m].scoreTextNode.nodeValue = player[m].getScore();
  player[n].addCard(card, false);
  player[n].scoreTextNode.nodeValue = player[n].getScore();
  player[n].fieldNode.style.display = "";

  // Update bet and credits.

  player[n].bet = player[m].bet;
  credits -= player[n].bet;
  updateBetDisplay(n);
  updateBetDisplay(n + 1);

  // Give the current hand a second card.

  setTimeout(playerHit, dealTimeDelay);
}

function playerDouble() {

  // Double the player's bet and deal a single card.

  player[curPlayerHand].bet *= 2;
  credits -= defaultBet;
  updateBetDisplay(curPlayerHand);
  player[curPlayerHand].doubled = true;
  player[curPlayerHand].top = 0;
  playerHit();
}

function playerSurrender() {

  // Unhighlight the player's hand.

  removeClassName(player[0].fieldNode, "activeField");

  // Note the surrender and end the round.

  player[0].surrender = true;
  endRound();
}

function playerHit() {

  var n, p;

  // Enable/disable buttons.

  DisablePlayButtons();
  document.forms["controls"].elements["hit"].disabled   = false;
  document.forms["controls"].elements["stand"].disabled = false;

  // Give the player another card and find total.

  n = curPlayerHand;
  player[n].addCard(getNextCard(), false);
  p = player[n].getScore();

  // If the player has busted, go to the next hand.

  if (p > 21) {
    player[n].scoreTextNode.nodeValue =  "Busted (" + p + ")";
    startNextHand();
    return;
  }
  else
    player[n].scoreTextNode.nodeValue = p;

  // If the player has reached 21, or is doubling down, go on to the next hand.

  if (p == 21 || player[n].doubled) {
    startNextHand();
    return;
  }

  // Handle second card on split hands.

  if (player[n].split && player[n].cards.length == 2) {

    // If Aces were split, go on to next hand.

    if (player[n].split && player[n].cards[0].rank == "A") {
        startNextHand();
        return;
    }

    // Enable/disable buttons.

    document.forms["controls"].elements["double"].disabled = false;
    if (canSplit())
      document.forms["controls"].elements["split"].disabled = false;
  }
}

function playerStand() {

  // Go on to the next hand.

  startNextHand();
}

function startNextHand() {

  // Unhighlight the current hand.

  removeClassName(player[curPlayerHand].fieldNode, "activeField");

  // Go on to the next player hand or the dealer.

  curPlayerHand++;
  if (curPlayerHand >= numPlayerHands) {
    startDealer();
    return;
  }
  else {
    addClassName(player[curPlayerHand].fieldNode, "activeField");

    // Enable/disable buttons.

    DisablePlayButtons();

    // Give a split hand a second card.

    if (player[curPlayerHand].split)
      setTimeout(playerHit, dealTimeDelay);
  }
}

function startDealer() {

  var i, allBusts;

  // Enable/disable buttons.

  DisablePlayButtons();

  // If player has busted on all hands, end the round.

  allBusts = true;
  for (i = 0; i < numPlayerHands; i++)
    if (player[i].getScore() <= 21)
      allBusts = false;
  if (allBusts) {
    endRound();
    return;
  }

  // Otherwise, highlight the dealer's hand, show the down card and score and
  // play the hand.

  addClassName(dealer.fieldNode, "activeField");
  dealer.cardsNode.firstChild.firstChild.style.visibility = "";
  dealer.scoreTextNode.nodeValue = dealer.getScore();
  setTimeout(playDealer, dealTimeDelay);
}

function playDealer() {

  var d;

  // Get and show the dealer's score.

  d = dealer.getScore();
  dealer.scoreTextNode.nodeValue = d;

  // If the dealer's total is less than 17, set up to deal another card.

  if (d < 17) {
    setTimeout(dealToDealer, dealTimeDelay);
    return;
  }

  // Check if the dealer busted.

  if (d > 21)
    dealer.scoreTextNode.nodeValue = "Busted (" + d + ")";

  // Dealer is done, unhighlight the hand and end the round.

  removeClassName(dealer.fieldNode, "activeField");
  endRound();
}

function dealToDealer() {

  // Give the dealer another card and check the result.

  dealer.addCard(getNextCard(), false);
  playDealer();
}

function endRound() {

  var i, d, p, tmp;

  // Enable/disable buttons.

  document.forms["controls"].elements["deal"].disabled = false;
  EnableBetButtons();
  DisablePlayButtons();

  // Fix for IE 6 rendering bug.

  if (navigator.userAgent.indexOf("MSIE 6") >= 0) {
    dealer.cardsNode.firstChild.style.backgroundImage = "none";
    dealer.cardsNode.firstChild.style.backgroundColor = "white";
  }

  // Show the dealer's down card and score.

  dealer.cardsNode.firstChild.firstChild.style.visibility = "";
  d = dealer.getScore();
  if (!dealer.blackjack && d <= 21)
    dealer.scoreTextNode.nodeValue = d;

  // Show result of each player hand and pay it off, if appropriate.

  for (i = 0; i < numPlayerHands; i++) {
    p = player[i].getScore();
    if (player[i].surrender) {
      player[i].resultTextNode.nodeValue = "Player Surrendered";
      player[i].bet /= 2;
      credits += player[i].bet;
    }
    else if ((player[i].blackjack && !dealer.blackjack) ||
             (p <= 21 && d > 21) || (p <= 21 && p > d)) {
      player[i].resultTextNode.nodeValue = "Player Wins";
      tmp = 2 * player[i].bet;

      // Blackjack pays 3 to 2.

      if (player[i].blackjack)
        tmp += player[i].bet / 2;

      player[i].bet = tmp;
      credits += player[i].bet;
    }
    else if ((dealer.blackjack && !player[i].blackjack) ||
             p > 21 || p < d) {
      player[i].resultTextNode.nodeValue = "Player Loses";
      addClassName(player[i].betTextNode.parentNode, "lost");
    }
    else {
      player[i].resultTextNode.nodeValue = "Push";
      credits += player[i].bet;
    }
    updateBetDisplay(i);
  }
}

function canSplit() {

  var n;

  // Has the split limit has been reached?

  if (numPlayerHands > maxSplits)
    return false;

  // Check for a pair.

  n = curPlayerHand;
  if (player[n].cards[0].rank == player[n].cards[1].rank)
    return true;

  // Also, allow tens and face cards to match as a pair.

  if ((player[n].cards[0].rank == "10" ||
       player[n].cards[0].rank == "J"  ||
       player[n].cards[0].rank == "Q"  ||
       player[n].cards[0].rank == "K") &&
      (player[n].cards[1].rank == "10" ||
       player[n].cards[1].rank == "J"  ||
       player[n].cards[1].rank == "Q"  ||
       player[n].cards[1].rank == "K"))
    return true;

  return false;
}

function updateBetDisplay(n) {

  var s;

  // Display the current bet on the given hand.

  if (player[n]) {
    if (player[n].bet != null)
      s = "Bet: " + formatDollar(player[n].bet);
    else
      s = "\u00a0";
    player[n].betTextNode.nodeValue = s;
  }

  // Display current credits.

  creditsTextNode.nodeValue = "Credits: " + formatDollar(credits);
}

function formatDollar(n) {

  var a, b;

  // Format the given number as a dollar amount for display.

  a = Math.abs(n);
  b = 100 * (a - Math.floor(a));
  if (b < 10)
    b = "0" + b;
  return (n < 0 ? "-" : "" ) + "$" + Math.floor(a) + "." + b;
}

function changeBet(n) {

  // Increase or decrease the default bet.

  defaultBet += n;
  defaultBet = Math.max(Math.min(defaultBet, maxBet), minBet);
  defaultTextNode.nodeValue = "Default Bet: " + formatDollar(defaultBet);

  // Reset the increase/decrease buttons.

  EnableBetButtons();
}

function EnableBetButtons() {

  // Enable the increase and decrease bet buttons provided the current bet
  // amount is within the allowed min/max value.

  document.forms["controls"].elements["increase"].disabled = (defaultBet >= maxBet);
  document.forms["controls"].elements["decrease"].disabled = (defaultBet <= minBet);
}

function DisablePlayButtons() {

  // Disable all the buttons used for playing a hand.

  document.forms["controls"].elements["split"].disabled     = true;
  document.forms["controls"].elements["double"].disabled    = true;
  document.forms["controls"].elements["surrender"].disabled = true;
  document.forms["controls"].elements["hit"].disabled       = true;
  document.forms["controls"].elements["stand"].disabled     = true;
}


function toggleRules() {

  var el;

  // Display or hide the game rules text.

  el = document.getElementById("rulesBox");
  if (el.style.display == "") {
    el.style.display = "block";
    document.forms["controls"].elements["rules"].value = "Hide Rules";
  }
  else {
    el.style.display = "";
    document.forms["controls"].elements["rules"].value = "Show Rules";
  }
}

function addClassName(el, name)
{
	// Remove the class name if it already exists in the element's class name
	// list.

	removeClassName(el, name);

	// Add the class name to the element's current list of class names.

	if (el.className.length > 0)
		name = " " + name;
	el.className += name;
}

function removeClassName(el, name)
{
	// If the element has no class names, exit.

	if (el.className == null)
		return;

	// Rebuild the list of class names on the element but exclude the specified
	// class name.

	var newList = new Array();
	var curList = el.className.split(" ");
	for (var i = 0; i < curList.length; i++)
		if (curList[i] != name)
			newList.push(curList[i]);
	el.className = newList.join(" ");
}

//]]></script>
</head>
<body>

<!-- Header. -->
<div id="header">
  <h2>Blackjack</h2>
</div>

<!-- Dealer's area. -->

<div id="dealer" class="playingField">
  <div class="textBox name">Dealer</div>
  <div id="dealerScore" class="textBox">&nbsp;</div>
  <div id="dealerCards" class="cardArea"></div>
</div>

<!-- Main player's area. -->

<div id="player0" class="playingField">
  <div class="textBox name">Player</div>
  <div id="player0Score"  class="textBox">&nbsp;</div>
  <div id="player0Bet"    class="textBox dollars">&nbsp;</div>
  <div id="player0Result" class="textBox result">&nbsp;</div>
  <div id="player0Cards"  class="cardArea"></div>
</div>

<!-- Areas for the player's split hands. -->

<div id="player1" class="playingField" style="display:none;">
  <div class="textBox name">Player</div>
  <div id="player1Score"  class="textBox">&nbsp;</div>
  <div id="player1Bet"    class="textBox dollars">&nbsp;</div>
  <div id="player1Result" class="textBox result">&nbsp;</div>
  <div id="player1Cards"  class="cardArea"></div>
</div>

<div id="player2" class="playingField" style="display:none;">
  <div class="textBox name">Player</div>
  <div id="player2Score"  class="textBox">&nbsp;</div>
  <div id="player2Bet"    class="textBox dollars">&nbsp;</div>
  <div id="player2Result" class="textBox result">&nbsp;</div>
  <div id="player2Cards"  class="cardArea"></div>
</div>

<div id="player3" class="playingField" style="display:none;">
  <div class="textBox name">Player</div>
  <div id="player3Score"  class="textBox">&nbsp;</div>
  <div id="player3Bet"    class="textBox dollars">&nbsp;</div>
  <div id="player3Result" class="textBox result">&nbsp;</div>
  <div id="player3Cards"  class="cardArea"></div>
</div>

<!-- Game buttons. -->

<form id="controls" action="">
  <div id="controlsArea">
    <div id="credits" class="textBox dollars">&nbsp;</div>
    <div id="default" class="textBox dollars">&nbsp;</div>
    <input id="deal"      class="button" type="reset" value="Deal"         onclick="startRound();return false;" />
    <input id="decrease"  class="button" type="reset" value="Decrease Bet" onclick="changeBet(-5);return false;" />
    <input id="increase"  class="button" type="reset" value="Increase Bet" onclick="changeBet(+5);return false;" />
    <br />
    <input id="split"     class="button" type="reset" value="Split"     onclick="playerSplit();return false;"     disabled="disabled" />
    <input id="double"    class="button" type="reset" value="Double"    onclick="playerDouble();return false;"    disabled="disabled" />
    <input id="surrender" class="button" type="reset" value="Surrender" onclick="playerSurrender();return false;" disabled="disabled" />
    <br />
    <input id="hit"       class="button" type="reset" value="Hit"        onclick="playerHit();return false;"   disabled="disabled" />
    <input id="stand"     class="button" type="reset" value="Stand"      onclick="playerStand();return false;" disabled="disabled" />
    <input id="rules"     class="button" type="reset" value="Show Rules" onclick="toggleRules();return false;" />
  </div>
</form>

<!-- Rules text. -->

<div id="rulesBox">

  <h3>Blackjack Rules</h3>

  <h4>Object</h4>

  <p>Blackjack is a betting game played against a dealer. The object is score
  more points than the dealer without going over 21.</p>

  <h4>Scoring</h4>

  <p>Points are totaled for each card in a hand. Face cards (Jack, Queen and
  King) count as 10 points, Aces may be counted as either one or 11. All other
  cards are counted according to their numeric value.</p>

  <p><i>When Aces are present in a hand, the total displayed to its right
  represents the highest score, not over 21, that could be made from those
  cards.</i></p>

  <h4>Game Play</h4>

  <p>To begin a round, the player places a bet (by hitting the "Deal" button)
  and both the player and the dealer are dealt two cards. The dealer's first
  card is dealt face down while all other cards are dealt face up.</p>

  <p>If the first two cards in a hand total 21, it's called a "blackjack" or
  "natural." The player wins with a blackjack unless the dealer also has a
  blackjack. If the dealer has a blackjack and the player doesn't, the player
  loses. If both have a blackjack, it is a tie ("push"). In any case, the round
  is over.</p>

  <p>When neither the dealer nor the player have blackjack, the player may take
  additional cards, one at a time ("hit"), until he or she reaches 21 or goes
  over ("busts"). The player may stop at any time ("stand"). The player loses
  if he or she busts.</p>

  <p>Otherwise, once the player stands, it is the dealer's turn and the
  dealer's down card is revealed. The dealer must hit if the point total is
  less than 17 and continue hitting until reaching 17 or more. If the dealer
  busts, the player wins.</p>

  <p>If neither the player or dealer busts, the player wins if his or her total
  is higher than the dealer's. If they tie, it is a push.</p>

  <h4>Betting</h4>

  <p>The player starts with $1000.00 credit (strictly play money) and may bet
  any amount between $5.00 and $100.00 in increments of $5.00. The player may
  change this bet amount between rounds.</p>

  <p>If the player wins with a blackjack, his or her bet is paid off at 3 to 2.
  Otherwise, the player is paid even money for a win. In the event of a push,
  the player's bet is returned.</p>

  <p>Note that a hand of three or more cards totaling 21 is not considered
  a blackjack. That is, if the player reaches 21 by hitting on a hand it is not
  an automatic win. If the player does win with such a hand, the bet is paid at
  even money.</p>

  <h4>Special Plays</h4>

  <p>After the initial deal, if neither the player nor dealer has a blackjack,
  the player has some additional options:</p>

  <ul>
    <li>The player may "split" if he or she has a pair (two cards of identical
    value, this includes any two face cards or a ten and any face card). See
    <i>Splits</i> below for details.</li>
    <li>The player may "double down," meaning that the player doubles his or
    her current bet and receives one and only one additional card.</li>
    <li>The player may "surrender," forfeiting the round and losing half of his
    or her original bet.</li>
  </ul>

  <p><i>Buttons are automatically enabled and disabled depending on what
  actions or options are valid at any point in the game according to the
  rules.</i></p>

  <h4>Insurance</h4>

  <p>On the initial deal, if the dealer's up card is an Ace, the player is
  offered "insurance." This is a side bet equal to half of the player's
  original bet. If the player buys insurance and the dealer has blackjack, the
  player is paid 2 to 1 on this side bet. If the player buys insurance and the
  dealer does not have blackjack, the side bet is lost. In either case, the
  round continues as before with the player's original bet.</p>

  <p><i>When prompted to buy insurance, click "OK" to purchase or "Cancel"
  to decline.</i></p>

  <h4>Splits</h4>

  <p>When the player is dealt a pair, he or she may split. One card is removed
  and placed in a new hand with a bet equal to the amount of the player's
  original bet.</p>

  <p>The split hands are then played individually as follows:</p>

  <ul>
    <li>An additional card is dealt to the hand.</li>
    <li>If Aces are split, only one additional card is given to each hand (see
    <i>House Rules</i> below). The player may not hit, split or double down
    afterwards.</li>
    <li>Otherwise, after the second card has been dealt the hand may be played
    as before (hit, stand, double down, etc.) except that the player may not
    surrender on a split hand.</li>
    <li>Pairs (other than Aces) may be resplit but there is a limit to the
    total number of times the player can split (see <i>House Rules</i>
    below).</li>
  </ul>

  <p>Once the player completes the first split hand (stands, doubles down or
  busts), the next hand is played and so on until all split hands have been
  played. Play then moves to the dealer as before.</p>

  <p>Note: If the additional card dealt to a split hand makes a total of 21, it
  is <i>not</i> considered a blackjack. In other words, it will pay at even
  money if the hand wins.</p>

  <p><i>When the player splits, the hand currently in play will be
  highlighted.</i></p>

  <p>Once the dealer busts or stands, each split hand is individually compared
  to the dealer's to determine a win, loss or push for the player. It is
  possible, for example, to beat the dealer on one hand but lose on the
  other.</p>

  <h4>House Rules</h4>

  <p>Blackjack rules can vary. The rules used in this game are based on typical
  Las Vegas casino rules:</p>

  <ul>
    <li>A four deck shoe is used. The player is notified whenever a new deck is
    put into play.</li>
    <li>The dealer may not hit on a soft 17, that is, when the dealer has a
    total of 17 using an Ace counted as 11.</li>
    <li>The player may double down on any initial two card hand.</li>
    <li>The player may split up to three times in any round (giving a possible
    total of four separate hands).</li>
    <li>If the player splits on Aces, only one additional card will be dealt to
    each split hand.</li>
    <li>Aces may not be resplit.</li>
  </ul>

</div>

</body>
</html>