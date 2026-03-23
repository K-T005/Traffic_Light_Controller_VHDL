# Traffic_Light_Controller_VHDL
How to design a VHDL FSM to control a two-road intersection with red, yellow, and green lights. Only one road can have green at a time, following fixed cycles (e.g., Road_A: 10s green, 3s yellow; Road_B: 6s green, 3s yellow). Include reset to a safe initial state and a testbench. The project is in Greek.

---

Design and implement a finite state machine (FSM) in VHDL that controls a two-road intersection (Road_A and Road_B) with independent red, yellow, and green traffic lights for each road.

The controller must operate in cyclic, time-defined intervals during which only one road can display green at any given moment.

**Example**

| Duration | Road_A | Road_B |
| -------- | ------ | ------ |
| green    | 10 sec | 6 sec  |
| yellow   | 3 sec  | 3 sec  |

A global reset must return the system to a defined initial state (e.g., Road_A green), and the outputs must always represent valid traffic light combinations with no conflicting greens.

The design should include a testbench that verifies the correct sequence of states, timing accuracy, and proper reset behavior.

---

# Ελεγκτής_Φαναριών_VHDL

Πώς να σχεδιάσετε μια μηχανή πεπερασμένων καταστάσεων (FSM) σε VHDL για τον έλεγχο μιας διασταύρωσης δύο δρόμων με κόκκινα, κίτρινα και πράσινα φανάρια. Μόνο ένας δρόμος μπορεί να έχει πράσινο κάθε φορά, ακολουθώντας καθορισμένους κύκλους (π.χ., Road_A: 10 δευτ. πράσινο, 3 δευτ. κίτρινο; Road_B: 6 δευτ. πράσινο, 3 δευτ. κίτρινο). Περιλαμβάνεται επαναφορά σε ασφαλή αρχική κατάσταση και ένα testbench. Το έργο είναι στα ελληνικά.

---

Σχεδιάστε και υλοποιήστε μια μηχανή πεπερασμένων καταστάσεων (FSM) σε VHDL που ελέγχει μια διασταύρωση δύο δρόμων (Road_A και Road_B) με ανεξάρτητα κόκκινα, κίτρινα και πράσινα φανάρια για κάθε δρόμο.

Ο ελεγκτής πρέπει να λειτουργεί σε κυκλικές, χρονικά καθορισμένες περιόδους κατά τις οποίες μόνο ένας δρόμος μπορεί να εμφανίζει πράσινο κάθε στιγμή.

**Παράδειγμα**

| Διάρκεια | Road_A   | Road_B  |
| -------- | -------- | ------- |
| πράσινο  | 10 δευτ. | 6 δευτ. |
| κίτρινο  | 3 δευτ.  | 3 δευτ. |

Μια καθολική επαναφορά πρέπει να επιστρέφει το σύστημα σε μια καθορισμένη αρχική κατάσταση (π.χ., Road_A πράσινο), και οι έξοδοι πρέπει πάντα να αντιπροσωπεύουν έγκυρους συνδυασμούς φαναριών χωρίς αντικρουόμενα πράσινα.

Ο σχεδιασμός θα πρέπει να περιλαμβάνει ένα testbench που επαληθεύει τη σωστή ακολουθία καταστάσεων, την ακρίβεια του χρονισμού και τη σωστή συμπεριφορά κατά την επαναφορά.

---
