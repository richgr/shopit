----
# SHOPT - Team Shopping Application (can also be a Gift Registry App)

This system is designed for real-time collaborative shopping.

## Classes (Objects)
* Items
  * Item_id (need an index)
  * Item Name [text] (need an index)
  * Brand Name(s) [text] (need an index)
  * Maximum Price [float]
* Users
  * User_id (need an index)
  * First Name [text]
  * Last Name [text] (need an index)
  * Username [text] (need an index)
  * Password [encrypted]
  * Email [text - email]
* Lists
  * List_id
  * List Name [text]
  * List Description [text]
* Relationships
  * User_id
  * List_id
* Shopping
  * Shopping_id (new row for item history)
  * List_id (need an index)
  * Item_id(s) (need an index)
  * Statuses [text] (need an ndex)
  * To-Be-Purchased-by Date [timestamp]
    
* Relationships
  * Shopping List, including:
    * Item(s)
    * User(s)
    * Item Status (Date of Order, of Purchase, of Status Change)

  
* Status States
  * Desired Item (to go on [desired] the Shopping List)
  * Intended Item (to be on [hold] on the Shopping list)
  * Purchased Item (to be on [purchased] on the Shopping list)
  * Rejected Item (to be [rejected] on the Shopping list)
  * Postponed Item (to be [postponed] for a future Shopping list)
 
