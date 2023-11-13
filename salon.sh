#! /bin/bash
# connect to database from script
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~~ Salon Appointment Scheduler ~~~~~\n"

#list of services available
SERVICES=$($PSQL "SELECT * FROM services;")
#if services not available
if [[ -z $SERVICES ]]
then
#display error message
  echo -e "\n Sorry we have no services available at the moment"
else
  echo -e "\nHere are the services we have to offer:"
  echo "$SERVICES" | while read SERVICE_ID BAR NAME 
    do
      echo "$SERVICE_ID) $NAME"
    done
fi 

# ask for service to be done
echo -e "\nWhich service would you like done?"
read SERVICE_ID_SELECTED

SERVICE_AVAILABILITY=$($PSQL "SELECT service_id FROM services WHERE service_id=$SERVICE_ID_SELECTED")
while [[ -z $SERVICE_AVAILABILITY ]] 
  do
    echo "$SERVICES" | while read SERVICE_ID BAR NAME
      do
        echo "$SERVICE_ID) $NAME"
      done
      read SERVICE_ID_SELECTED
      SERVICE_AVAILABILITY=$($PSQL "SELECT service_id FROM services WHERE service_id = $SERVICE_ID_SELECTED")    
done


#get phone number
echo -e "\nWhat's your phone number?"
read CUSTOMER_PHONE
#get customer info
CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")
# if customer doesn't exist
if [[ -z $CUSTOMER_NAME ]]
then
  # get new customer name
  echo -e "\nWhat's your name?"
  read CUSTOMER_NAME
  # insert new customer
  INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')") 
fi

# get appointment time
echo -e "\nWhat time would you like your appointment?"
read SERVICE_TIME
# get customer_id and customer name
CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")
# insert salon appointment
INSERT_APPOINTMENT=$($PSQL "INSERT INTO appointments(customer_id, time, service_id) VALUES($CUSTOMER_ID, '$SERVICE_TIME', $SERVICE_ID_SELECTED)")
SERVICE_NAME=$($PSQL "SELECT services.name FROM appointments LEFT JOIN services USING(service_id) LEFT JOIN customers USING(customer_id) WHERE phone='$CUSTOMER_PHONE' ;")
# success
echo -e "\nI have put you down for a $(echo $SERVICE_NAME | sed -r 's/^ *| *$//g') at $SERVICE_TIME, $(echo $CUSTOMER_NAME | sed -r 's/^ *| *$//g')."


