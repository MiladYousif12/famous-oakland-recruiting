-- Supabase SQL Migration for Famous Transports & Oakland Freight
-- Project: Driver Recruiting & Payout System (Owner: Joey Haji, Recruiter: Milad Yousif)
-- Run this in your Supabase SQL Editor (https://supabase.com/dashboard/project/rziobgjwhhhpwjraunoj/sql)

-- 1. Create table for drivers
CREATE TABLE IF NOT EXISTS famous_oakland_drivers (
    id TEXT PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    phone TEXT,
    email TEXT,
    cdl_type TEXT NOT NULL DEFAULT 'Class A', -- 'Class A' ($2,000) or 'Class B' ($1,000)
    company TEXT NOT NULL DEFAULT 'Oakland Freight', -- 'Oakland Freight' or 'Famous Transports'
    carrier TEXT NOT NULL DEFAULT 'Panther', -- 'Panther' or 'Forward Air'
    hired_date DATE DEFAULT CURRENT_DATE,
    commission_amount NUMERIC NOT NULL DEFAULT 2000,
    commission_status TEXT NOT NULL DEFAULT 'Pending', -- 'Pending' or 'Paid'
    paid_date DATE,
    notes TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    created_by TEXT DEFAULT 'milad'
);

-- 2. Enable Row-Level Security
ALTER TABLE famous_oakland_drivers ENABLE ROW LEVEL SECURITY;

-- 3. Create permissive policies for both anon and authenticated users
-- This allows both Milad and Joey to access the live database from their phones and web browsers seamlessly
DROP POLICY IF EXISTS "Allow all access to famous_oakland_drivers" ON famous_oakland_drivers;
CREATE POLICY "Allow all access to famous_oakland_drivers" 
ON famous_oakland_drivers 
FOR ALL 
USING (true) 
WITH CHECK (true);

-- 4. Create an index on company, carrier, and payment status for ultra-fast queries
CREATE INDEX IF NOT EXISTS idx_famous_drivers_comp ON famous_oakland_drivers(company);
CREATE INDEX IF NOT EXISTS idx_famous_drivers_status ON famous_oakland_drivers(commission_status);
CREATE INDEX IF NOT EXISTS idx_famous_drivers_cdl ON famous_oakland_drivers(cdl_type);
