### 1. **Hotel Table**
**Table Schema**: `{ hotel_id, name }`

**Functional Dependencies**:
- `{ hotel_id } → { name }`

This table stores the information about hotels, with `hotel_id` being the unique identifier for each hotel, which determines the `name` of the hotel.

---

### 2. **Room Table**
**Table Schema**: `{ type, capacity, price, availability, room_number, hotel_id }`

**Functional Dependencies**:
- `{ room_number } → { price, availability, capacity, type }`
- `{ type } → { price }`

The room table holds data about the rooms in each hotel. `room_number` uniquely determines the attributes related to the room, such as `price`, `availability`, `capacity`, and `type`. Additionally, the room `type` determines the `price` of the room.

---

### 3. **Reservation Table**
**Table Schema**: `{ reservation_history, guest_id, name }`

**Functional Dependencies**:
- `{ guest_id } → { reservation_history, name }`
- `{ guest_id, name } → { reservation_history }`

This table tracks the history of reservations made by each guest. `guest_id` uniquely determines the `reservation_history` and `name` of the guest. The combination of `guest_id` and `name` uniquely identifies the reservation history.

---

### 4. **Reservation Details Table**
**Table Schema**: `{ check_in_date, check_out_date, additional_request, reservation_id, guest_id, room_number }`

**Functional Dependencies**:
- `{ reservation_id } → { check_in_date, check_out_date, additional_request }`
- `{ guest_id } → { reservation_id }`

This table stores detailed information about each reservation. The `reservation_id` determines the `check_in_date`, `check_out_date`, and `additional_request`. The `guest_id` determines the associated reservation.

---

### 5. **Employee Table**
**Table Schema**: `{ position, department, employee_id, hotel_id, name }`

**Functional Dependencies**:
- `{ employee_id } → { position, department, name }`
- `{ hotel_id, employee_id } → { position }`
- `{ name, employee_id } → { department }`

This table tracks employee details at the hotel. `employee_id` determines the `position`, `department`, and `name` of the employee. The combination of `hotel_id` and `employee_id` uniquely determines the `position`, while `name` and `employee_id` uniquely determine the `department`.

---

### 6. **Service Table**
**Table Schema**: `{ name, description, price, service_id }`

**Functional Dependencies**:
- `{ service_id } → { name, description, price }`
- `{ description } → { name }`
- `{ name } → { price, service_id, description }`
