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
| **Joey Haji** | `joey` | `joey` | **Company Owner** | Owner / Approver: View all drivers & financial metrics, **update payment status (mark as Paid / Pending)**, **claim 30-day guarantee (mark Replacement Due / Fulfilled)**. Cannot delete or alter core driver records. |

---

## 📋 Features
1. **Single Unified "Hired and Paid" Ledger**:
   - Streamlined, clean, single-section layout designed specifically for rapid driver tracking without the multi-step dealership pipeline overhead.
   - Financial overview cards with real-time totals: **Total Placed**, **Pending Payout**, **Total Paid to Milad**, and **Total Contract Value**.
2. **One-Tap Payment Status Toggle**:
   - Both Joey and Milad can tap `[💰 Mark as Paid]` when Joey issues payment for a driver, immediately updating the financial totals and starting the 30-day guarantee countdown.
   - Can easily revert if marked paid accidentally.
3. **🛡️ 30-Day Placement Guarantee & Auto-Adjusting Ledger**:
   - **Active Countdown**: For all paid drivers within their first 30 days, an active progress bar shows `Day X of 30` and days remaining.
   - **"Didn't Last 30 Days (Owe Replacement)" Button**: Both Joey and Milad can click this button at any time during the 30-day guarantee period if the driver leaves.
   - **Dynamic Ledger Offset**:
     - The placement fee ($2,000 for Class A or $1,000 for Class B) immediately turns into a negative credit offsetting Joey's pending balance.
     - If no pending drivers exist, the pending payout turns into a bold red negative balance (`-$2,000` or `-$1,000`), accurately indicating credit owed to Joey.
     - When Milad recruits and places the next driver, the new placement fee automatically offsets the credit and **zeroes out the balance**!
   - **Fulfillment & Revert**: Joey or Milad can tap `[✅ Mark Replacement Fulfilled]` once the replacement is delivered, or `[↩️ Revert to Paid]` if the candidate stayed or a mistake was made.
4. **Smart Filters & Real-Time Search**:
   - Payment status subtabs (`📋 All Drivers`, `⏳ Pending`, `💰 Paid`, `🔄 Replacements`).
   - Filter by Company (`Famous Transports` vs `Oakland Freight`).
   - Filter by Account (`Panther` vs `Forward Air`).
   - Filter by CDL (`Class A ($2K)` vs `Class B ($1K)`).
   - Real-time search by driver name, phone, email, notes.
5. **Mobile-First PWA Responsive Layout**:
   - Optimized for iPhone, Android, and Desktop.
   - Quick one-tap phone calls (`tel:`) and text messages (`sms:`).
6. **Dual-Layer Persistence (Offline + Cloud)**:
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
