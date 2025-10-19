# ✈️ Flight Controller Simple (Ada PID Simulation)

A simplified **flight control system simulator** written in **Ada**, demonstrating how a real-time control loop can use **PID (Proportional–Integral–Derivative)** feedback to stabilize an aircraft’s **altitude** and **heading**.

---

## 🧠 Overview

This project is a small-scale simulation of an aircraft’s flight control logic, built as part of a university aerospace project.  
It models a feedback loop where two independent **PID controllers** adjust:

- **Throttle** → to reach the target **altitude**  
- **Rudder** → to reach the target **heading**

Each control step updates the simulated aircraft state in real-time until the target values are reached.

Although compact, this project demonstrates key **control system** and **software engineering** principles used in real flight software — implemented using the Ada programming language for precision and safety.

---

## 🚀 Features

- Two independent **PID controllers** (altitude & heading)  
- Real-time update loop with `delay Delta_Time`  
- **State tracking** for aircraft position variables  
- Clean Ada modular structure with tagged records  
- Console output displaying live altitude and heading  
- Auto-stop when targets are reached

---

## 📂 Code Structure


Flight-Controller-Simple/
│
├── Flight_Controller_Simple.adb # Main Ada program
└── README.md # Project documentation


---

## ⚙️ How It Works

1. **PID Type**  
   Each PID controller stores its own gains (`Kp`, `Ki`, `Kd`), integral, and previous error.

2. **Compute_Control Function**  
   Calculates throttle or rudder control signal using:
output = Kp * error + Ki * integral + Kd * derivative


3. **Apply_Control Procedure**  
Updates the aircraft’s simulated state based on throttle and rudder control inputs.

4. **Loop**  
Runs until both altitude and heading are within a 1.0 tolerance of the target.

---

## 🧩 Example Output

Altitude: 25.67
Heading: 8.23
Altitude: 247.18
Heading: 52.09
Altitude: 998.32
Heading: 89.47
Target reached: Altitude = 1000.10 Heading = 90.02

| Category | Tools / Languages |
|-----------|------------------|
| **Language** | Ada |
| **Compiler** | GNAT (AdaCore) |
| **Libraries** | Ada.Text_IO, Ada.Float_Text_IO |
| **Concepts** | PID Control, Real-time Simulation, Feedback Loops |

---

## 🪄 Compilation & Execution

### Using GNAT Studio
1. Open the project in **GNAT Studio**.
2. Go to **View → Panels → Terminal** to open the shell.
3. Compile:
   ```bash
   gnatmake Flight_Controller_Simple.adb
Run:

bash
Copy code
./flight_controller_simple
(Add .exe if on Windows)

Using GNAT Command Prompt
If you’re using GNAT’s standalone terminal:

bash
Copy code
cd path\to\Flight-Controller-Simple
gnatmake Flight_Controller_Simple.adb
flight_controller_simple
🧭 Future Improvements
Add wind disturbance or external noise simulation

Introduce pitch and roll control axes

Log altitude and heading data into a .csv file for plotting

Visualize simulation results using a Python script (Matplotlib)

✍️ Author
Omar Mog
🎓 Aerospace & Software Enthusiast
💻 Focus: Control Systems, AI, and Full-Stack Web Development

📫 GitHub: https://github.com/YOUR_USERNAME

🏁 License
This project is open-source and available under the MIT License.
Feel free to use or modify it for learning or development purposes.
