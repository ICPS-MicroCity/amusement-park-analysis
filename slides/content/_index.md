+++
title = "My presentation"
outputs = ["Reveal"]

[reveal_hugo]
  transition = "slide"
  transition_speed = "fast"
  custom_theme = "custom-theme.scss"
  custom_theme_compile = "true"
  slide_number = 'c/t'

[reveal_hugo.custom_theme_options]
  targetPath = "css/custom-theme.css"
  enableSourceMap = true
+++

# Mirabilandia as a Micro City

Nicolas Farabegoli & Linda Vitali

---

# Micro City: Domain Analysis

The following define the Micro City concept:

- **Guests** are endowed with a _wearable_ device (e.g. smartphone, smartwatch, etc.)
- There are well defined **physical bounds**
- Presents a well-defined operation **periods**
- Heterogeneous **activities** physically situated and distributed
- **Guests** are _highly_ interested in the **activities**
- **Guests** may form **queues** to access the **activities**
- **Activities** may be proactive recommend to **guests** based on their position and interests
- **Guests** accepting **recommendations** may receive a **reward**
- **Micro City** presents a map to locate and oriente the **guests**

---

# Case Study: Amusement Park

In the context of the _Amusement Park_, the following concepts are defined:

- **Visitor:** a person attending the amusement park
- **Attraction:** rides, roller coasters, restaurants and shops
- **Show:** a show taking place in a specific moment and location
- **Recommendation:** a suggestion to visit an attraction or a show in exchange for a reward
- **Reward:** the recompense received by the visitor for accepting a recommendation

---

{{% section %}}
# Mirabilandia today

- Limited technological support to **visitors**
  - Totem with information about the park
  - Mobile application
- No technological support about **queue managements**
- No system to improve the visitor experience, based on their interests
  
---

<div class="column">
<img class="miraImg" src="img/miraPlan.jpg" alt="mira-plan">

<img class="miraImg" src="img/miraextr.jpg" alt="mira-extr">
</div>

{{% /section %}}

---

{{% section %}}
# State of the art

The state of the art analysis was lead by the following requirements:

- Reducing the waiting time in queues
- Personalization of the visitor experience
- Situated and proximity-based suggestions

---

## Accesso technology group

**Accesso Technology Group** is a company that provides software and hardware solutions for the amusement park industry.
Their flagship products are:

- _Qsmart_ is a cloud-based platform that utilizes the guest' smartphone
- _Prism_ is a smartwatch-like device

Either of these products leverage the _Experience Engine_ (TE2) and a patented _Virtual Queuing Technology_.

---
<img class="stretch" src="img/qsmart.jpg" alt="qsmart">
<!-- <img class="" src="img/prism.png" alt="prism"> -->

---

## Disney Parks, Experience and Products

**Disney Parks, Experience and Products** is a division of The Walt Disney Company that develops and operates Disney theme parks and resorts.

Their flagship products are: _Disney Genie_, _Disney Genie+_ and _Lighting Lane_

They provide the following services:

- Tailored recommendations
- Virtual assistant
- Time-based suggestions
- Booking activities

---
<img class="stretch" src="img/dgenie.png" alt="genie">

{{% /section %}}

---

# Mirabilandia as a Micro City

---
# Overview

We will illustrate an architecture with all the components needed to satisfy the characteristics
of an amusement park as a Micro City: offer a tailored and dynamic experience based on visitors’
preferences and a situated recommendation system with a rewards system.

The architecture structure is composed of the following elements:

- A tracking system of visitors' position within the park
- A recommendation and reward system
- A system to manage queues in a smart way
- A manager for visitors' information
- A service to generate custom plans for each visitors for a day in the park.

---

{{% section %}}

# Architecture

<img class="stretch no-border" src="img/architecture-overview.svg" alt="architecture">

---

## Map Manager

<img class="stretch no-border" src="img/map-manager-overview.svg" alt="map-manager">

---

## Recommendation System

<img class="stretch no-border" src="img/recommender.svg" alt="recommender">

---

## Virtual Queing System

<img class="stretch no-border" src="img/virtual-queuing.svg" alt="virtual-q">

---

## Planner

<img class="stretch no-border" src="img/planner.svg" alt="planner">

---

## Visitors Manager

<img class="stretch no-border" src="img/visitor-manager.svg" alt="visitor-manager">

{{% /section %}}

---

{{% section %}}

# Suitable Technologies

We analyzed the literature about the technologies that could be used implement of the previous architecture's components.

The following technologies were taken into account to evaluate their feasibility in a realistic scenario for implementing
**visitors tracking** and **situated recommendation**:

- Wi-Fi
- Bluetooth (Beacons)
- NFC
- Sub-GHz
- GPS

---

# Identified Technologies

---

## Planner Strategies

We want to focus on what goals an algorithm in charge of calculating the best plan should achieve based on various factors,
instead of providing a real algorithm to compute it.

- **Completed Rides Indicator (CRI):** indicates the number of rides completed within one hour
- **Wandering Time Indicator (WTI):** indicates the quantity of time spent in the queues within one hour
- **User Satisfaction Indicator (USI):** indicates the number of rides completed in an hour but which were expressed as preferences by the visitor.

These indicators could be used to determine a QoS for each plan and for the overall planning system.

---

## Localization System

TODO: stupire con effetti speciali

---

## Situated Recommendation System

<img class="stretch no-border" src="img/seq-diag-situated.svg" alt="seq-diag-situated">

{{% /section %}}

---

# Deployment Strategy

We deem that the best way to deploy the system is to use an hybrid approach, leveraging the cloud, the fog and the edge layers.

<img class="stretch no-border" src="img/deployment.svg" alt="deployment">

---

# Conclusions

- Identified, developed and partially formalized the Micro City concept
- Studied the literature about the technologies that could be used to implement the architecture
- Challenging to adapt the concept into a real-world case study
