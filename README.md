# DBSettings  

## Consumer  

### table  

| column_name | data_type | constraint  |
|:------------|:----------|:------------|
| consumer_id |  integer  | primary_key |
|    gender   |  integer  |   not_null  |
|     age     |  integer  |   not_null  |
|    period   |  integer  |   not_null  |
|   carrier   |  string   |   not_null  |

* gender and period use enum.  

### association  

  has_many   :consumers_products  
  has_many   :products, through: :consumers_products  
  belongs_to :prefectures  

## Product  

### table  

| column_name | data_type | constraint  |
|:------------|:----------|:------------|
| product_id  |  integer  | primary_key |
|     cost    |  integer  ||
|  buy_count  |  integer  ||
|   quarter   |  integer  ||
|     year    |  datetime ||
|     tub     |  integer  ||
| large_category | string  ||
| middle_category| string  ||
| favorite_count | integer ||
| reivew_average | float   ||
|     state      | integer ||

* quarter, tub and state use enum.  

### association  

  has_many :consumers_products  
  has_many :consumers, through: :consumers_products  

## Prefecture  

### table  

| column_name | data_type | constraint  |
|:------------|:----------|:------------|
|     id      |  integer  | primary_key |
|    name     |  string   | not_null    |
|    area     |  integer  | not_null    |

* area uses enum.  

### association  

  has_many :consumers  

## Tab  

### table  

| column_name | data_type | constraint  |
|:------------|:----------|:------------|
|    id       |  integer  | primary_key |
|   status    |  integer  ||

*status uses enum.

### association  
  
  has_many :large_tabs  
  has_many :large_categories, through: :large_tabs  


## LargeCategory  

### table  

| column_name | data_type | constraint  |
|:------------|:----------|:------------|
|    id       |  integer  | primary_key |
|   name      |  string   ||


### association  

  has_many :large_middles  
  has_many :middle_categories, through: :large_middles  

## MiddleCategory  

### tabel  

| column_name | data_type | constraint  |
|:------------|:----------|:------------|
|    id       |  integer  | primary_key |
|   name      |  string   ||

### association  

  has_many :large_middles  
  has_many :large_categories, through: :large_middles  

## ConsumerPrefecture  

### table  

| column_name | data_type | constraint  |
|:------------|:----------|:------------|
|    id       |  integer  | primary_key |
| consumer_id |  integer  | foreign_key |
|prefecture_id|  integer  | foreign_key |

### association  

  belongs_to :consumer  
  belongs_to :prefecture  

## LargeMiddle  

### table  

| column_name | data_type | constraint  |
|:------------|:----------|:------------|
|    id       |  integer  | primary_key |
|large_category_id |integer|foreign_key|
|middle_category_id|integer|foreign_key|

### association  

  belongs_to :large_category  
  belongs_to :middle_category  

## LargeTabs  

### table  

| column_name | data_type | constraint  |
|:------------|:----------|:------------|
|    id       |  integer  | primary_key |
|large_category_id|  integer  |foreign_key|
|tab_category_id  |  integer  |foreign_key|

### association  
  
  belongs_to :tab  
  belongs_to :large_category  
