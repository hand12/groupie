# DBSettings  

## Consumer  

### table  

| column_name | data_type |
|:------------|:----------|
| product_id |  integer  |
|prefecture_id| integer  |
|    gender   |  integer  |
|     age     |  integer  |

* gender use enum.  

### association  

  belongs_to :prefecture  
  belongs_to :product  

## Product  

### table  

| column_name | data_type |
|:------------|:----------|
| consumer_id  |  integer  |
|large_category_id|integer|
|     cost    |  integer  |
|  buy_count  |  integer  |
|   quarter   |  integer  |
|     year    |  datetime |
| favorite_count | integer |
| review_average | float   |
|     state      | integer |

* quarter, tub and state use enum.  

### association  

  has_many  :consumers  
  belogs_to :tab  
  belongs_to:large_category  

## Prefecture  

### table  

| column_name | data_type |
|:------------|:----------|
|     id      |  integer  |
|    name     |  string   |
|    area     |  integer  |

* area uses enum.  

### association  

  has_many :consumers  

## Tab  

### table  

| column_name | data_type |
|:------------|:----------|
|    id       |  integer  |
|   status    |  integer  |

*status uses enum.  

### association  
  
  has_many :large_tabs  
  has_many :large_categories, through: :large_tabs  
  has_many :products  



## LargeCategory  

### table  

| column_name | data_type |
|:------------|:----------|
|    id       |  integer  |
|   name      |  string   |


### association  

  has_many :large_tabs  
  has_many :tabs, through: :large_tabs  
  has_many :middle_categories  
  has_many :products

## MiddleCategory  

### tabel  

| column_name | data_type |
|:------------|:----------|
|    id       |  integer  |
|   name      |  string   |
|large_category_id|integer|

### association  

  belongs_to :large_category  


## LargeTabs  

### table  

| column_name | data_type |
|:------------|:----------|
|    id       |  integer  |
|large_category_id|  integer  |
|tab_category_id  |  integer  |

### association  

  belongs_to :tab  
  belongs_to :large_category  
