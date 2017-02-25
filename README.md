# DBSettings  

## Consumer  

### table  

| column_name | data_type |
|:------------|:----------|
| consumer_id |  integer  |
|    gender   |  integer  |
|     age     |  integer  |
|    period   |  integer  |
|   carrier   |  string   |

* gender and period use enum.  

### association  

  has_many   :consumers_products  
  has_many   :products, through: :consumers_products  
  belongs_to :prefectures  

## Product  

### table  

| column_name | data_type |
|:------------|:----------|
| product_id  |  integer  |
|     cost    |  integer  |
|  buy_count  |  integer  |
|   quarter   |  integer  |
|     year    |  datetime |
|     tub     |  integer  |
| large_category | string  |
| middle_category| string  |
| favorite_count | integer |
| reivew_average | float   |
|     state      | integer |

* quarter, tub and state use enum.  

### association  

  has_many :consumers_products  
  has_many :consumers, through: :consumers_products  

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


## LargeCategory  

### table  

| column_name | data_type |
|:------------|:----------|
|    id       |  integer  |
|   name      |  string   |


### association  

  has_many :large_middles  
  has_many :middle_categories, through: :large_middles  

## MiddleCategory  

### tabel  

| column_name | data_type |
|:------------|:----------|
|    id       |  integer  |
|   name      |  string   |

### association  

  has_many :large_middles  
  has_many :large_categories, through: :large_middles  

## ConsumerPrefecture  

### table  

| column_name | data_type |
|:------------|:----------|
|    id       |  integer  |
| consumer_id |  integer  |
|prefecture_id|  integer  |

### association  

  belongs_to :consumer  
  belongs_to :prefecture  

## LargeMiddle  

### table  

| column_name | data_type |
|:------------|:----------|
|    id       |  integer  |
|large_category_id |integer|
|middle_category_id|integer|

### association  

  belongs_to :large_category  
  belongs_to :middle_category  

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
