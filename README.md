# Famous Transports & Oakland Freight — Driver Recruiting & Payout Ledger

Driver recruiting and commission tracking platform customized for **Famous Transports** and **Oakland Freight** (Fleet Owner: **Joey Haji**), engineered and operated by **Milad Yousif**.

---

## 🚛 Overview & Compensation Structure
- **Class A CDL Driver Placement Fee**: **$2,000** per hired driver.
- **Class B CDL Driver Placement Fee**: **$1,000** per hired driver.
- **Company Assignments**:
  - `Oakland Freight`
  - `Famous Transports`
- **Carrier / Account Assignments**:
  - `Panther`
  - `Forward Air`

---

## 🔐 Credentials & Role-Based Access Control (RBAC)

| User | Username | Password | Role | Permissions |
|---|---|---|---|---|
| **Milad Yousif** | `milad` | `2113` | **Recruiter Admin** | Full Admin: Add drivers, edit driver info, delete drivers, toggle payment status, export CSV reports. |
| **Joey Haji** | `joey` | `joey` | **Company Owner** | Owner / Approver: View all drivers & financial metrics, **update payment status (mark as Paid / Pending)**. Cannot delete or alter driver records. |

---

## 📋 Features
1. **Single Unified "Hired and Paid" Ledger**:
   - Streamlined, clean, single-section layout designed specifically for rapid driver tracking without the multi-step dealership pipeline overhead.
   - Financial overview cards with real-time totals: **Total Placed**, **Pending Payout**, **Total Paid to Milad**, and **Total Contract Value**.
2. **One-Tap Payment Status Toggle**:
   - Both Joey and Milad can tap `[💰 Mark as Paid]` when Joey issues payment for a driver, immediately updating the financial totals.
   - Can easily revert if marked paid accidentally.
3. **Smart Filters & Real-Time Search**:
   - Payment status subtabs (`All`, `⏳ Pending`, `💰 Paid`).
   - Filter by Company (`Famous Transports` vs `Oakland Freight`).
   - Filter by Account (`Panther` vs `Forward Air`).
   - Filter by CDL (`Class A ($2K)` vs `Class B ($1K)`).
   - Real-time search by driver name, phone, email, notes.
4. **Mobile-First PWA Responsive Layout**:
   - Optimized for iPhone, Android, and Desktop.
   - Quick one-tap phone calls (`tel:`) and text messages (`sms:`).
5. **Dual-Layer Persistence (Offline + Cloud)**:
   - LocalStorage for instantaneous, zero-latency local caching.
   - Optional Supabase live-sync across devices using `famous_migration.sql`.

---

## ☁️ Supabase Cloud Database Setup (Optional)
To enable multi-device live cloud sync between Milad's and Joey's phones:
1. Open your Supabase Dashboard SQL Editor:
   `https://supabase.com/dashboard/project/rziobgjwhhhpwjraunoj/sql`
2. Copy and paste the contents of [`famous_migration.sql`](famous_migration.sql) and click **Run**.
3. All driver records and payment status updates will sync in real time across all logged-in devices!

---

© 2026 Powered by Milad Yousif (miladyousif.com)
