----
# SHOPIT - Team Shopping Application (can also be a Gift Registry App)

This system is designed for real-time collaborative shopping.

First, you'll need to create Users and Items.

Second, create a List and add Items into the list.  Also, add any other users into the list.

Third, go shopping!  Use the interface to check off any items you purchase.  If you don't have a mobile device, you can put an item on HOLD when you leave to go shopping, and then mark it as PURCHASED when you get home!

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
  
## Relationships

* User-List Relationships (many to many)
  * User_id
  * List_id
* List-Item Relationships (many to many)
  * Shopping_id (new row for item history)
  * List_id (need an index)
  * Item_id(s) (need an index)
  * Statuses [text] (need an ndex)
  * To-Be-Purchased-by Date [timestamp]
    
## List-Item Statuses

* Status States (List-Item Relationships)
  * Desired Item [desired]
  * On-Hold Item [hold]
  * Purchased Item [purchased]
  * Rejected Item [rejected]
  * Postponed Item [postponed]
 
