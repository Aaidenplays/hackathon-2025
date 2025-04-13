-- Create Paid Social Table
DROP TABLE IF EXISTS Paid_Social;

CREATE TABLE Paid_Social (
    campaign_id SERIAL PRIMARY KEY,
    creative_id VARCHAR(10),
    creative_name VARCHAR(50),
    channel VARCHAR(50),
    campaign_name VARCHAR(50),
    clicks INT,
    impressions INT,
    event_dt DATE
);

INSERT INTO Paid_Social (creative_id, creative_name, channel, campaign_id, campaign_name, clicks, impressions, event_dt)
VALUES
('SOC001', 'Creative Alpha', 'Facebook', 101, 'Campaign Spring Launch', 120, 1500, '2025-04-10'),
('SOC002', 'Creative Beta', 'Instagram', 102, 'Campaign Summer Vibes', 200, 2200, '2025-04-10'),
('SOC003', 'Creative Gamma', 'Twitter', 103, 'Campaign Winter Blast', 80, 900, '2025-04-10'),
('SOC004', 'Creative Delta', 'LinkedIn', 104, 'Campaign Business Boost', 45, 300, '2025-04-11'),
('SOC005', 'Creative Epsilon', 'Snapchat', 105, 'Campaign Youth Outreach', 130, 1200, '2025-04-11'),
('SOC006', 'Creative Alpha', 'Facebook', 106, 'Campaign Festive Cheer', 155, 1100, '2025-04-12'),
('SOC007', 'Creative Beta', 'Instagram', 107, 'Campaign Spring Sale', 210, 2500, '2025-04-12'),
('SOC008', 'Creative Gamma', 'Twitter', 108, 'Campaign New Year Bang', 95, 750, '2025-04-13'),
('SOC009', 'Creative Delta', 'LinkedIn', 109, 'Campaign Professional Edge', 60, 350, '2025-04-13'),
('SOC010', 'Creative Epsilon', 'Snapchat', 110, 'Campaign Holiday Fun', 140, 1300, '2025-04-14'),
('SOC011', 'Creative Zeta', 'Facebook', 111, 'Campaign Brand Awareness', 180, 2000, '2025-04-15'),
('SOC012', 'Creative Eta', 'Instagram', 112, 'Campaign Click Magnet', 190, 2300, '2025-04-15'),
('SOC013', 'Creative Theta', 'Twitter', 113, 'Campaign Engagement Boost', 95, 850, '2025-04-16'),
('SOC014', 'Creative Iota', 'LinkedIn', 114, 'Campaign Corporate Impact', 50, 300, '2025-04-16'),
('SOC015', 'Creative Kappa', 'Snapchat', 115, 'Campaign Youth Appeal', 145, 1250, '2025-04-17'),
('SOC016', 'Creative Alpha', 'Facebook', 116, 'Campaign Viral Outreach', 170, 1500, '2025-04-18'),
('SOC017', 'Creative Beta', 'Instagram', 117, 'Campaign Summer Promotion', 250, 2600, '2025-04-18'),
('SOC018', 'Creative Gamma', 'Twitter', 118, 'Campaign Quick Clicks', 100, 900, '2025-04-19'),
('SOC019', 'Creative Delta', 'LinkedIn', 119, 'Campaign Professional Reach', 70, 400, '2025-04-19'),
('SOC020', 'Creative Epsilon', 'Snapchat', 120, 'Campaign Fun Trends', 155, 1350, '2025-04-20'),
('SOC021', 'Creative Zeta', 'Facebook', 121, 'Campaign Social Dominance', 200, 2200, '2025-04-21'),
('SOC022', 'Creative Eta', 'Instagram', 122, 'Campaign Cool Vibes', 300, 2800, '2025-04-21'),
('SOC023', 'Creative Theta', 'Twitter', 123, 'Campaign Micro Moments', 125, 1000, '2025-04-22'),
('SOC024', 'Creative Iota', 'LinkedIn', 124, 'Campaign Corporate Connection', 90, 500, '2025-04-22'),
('SOC025', 'Creative Kappa', 'Snapchat', 125, 'Campaign Youth Energy', 180, 1450, '2025-04-23'),
('SOC026', 'Creative Alpha', 'Facebook', 126, 'Campaign Viral Hits', 240, 1800, '2025-04-24'),
('SOC027', 'Creative Beta', 'Instagram', 127, 'Campaign Seasonal Sale', 320, 3000, '2025-04-24'),
('SOC028', 'Creative Gamma', 'Twitter', 128, 'Campaign Instant Clicks', 150, 1100, '2025-04-25'),
('SOC029', 'Creative Delta', 'LinkedIn', 129, 'Campaign Pro Market', 95, 600, '2025-04-25'),
('SOC030', 'Creative Epsilon', 'Snapchat', 130, 'Campaign Trending Fun', 220, 1650, '2025-04-26');


DROP TABLE IF EXISTS Paid_Search;
-- Create Paid Search Table
CREATE TABLE Paid_Search (
    campaign_id SERIAL PRIMARY KEY,
    creative_id VARCHAR(10),
    creative_name VARCHAR(50),
    campaign_name VARCHAR(50),
    clicks INT,
    impressions INT,
    event_dt DATE
);

INSERT INTO Paid_Search (creative_id, creative_name, campaign_id, campaign_name, clicks, impressions, event_dt)
VALUES
('SEA001', 'Creative Zeta', 201, 'Campaign Web Traffic Boost', 300, 5000, '2025-04-10'),
('SEA002', 'Creative Eta', 202, 'Campaign SEO Optimization', 50, 700, '2025-04-10'),
('SEA003', 'Creative Theta', 203, 'Campaign Brand Awareness', 90, 1200, '2025-04-11'),
('SEA004', 'Creative Iota', 204, 'Campaign Ad Blitz', 350, 8000, '2025-04-11'),
('SEA005', 'Creative Kappa', 205, 'Campaign Privacy Push', 40, 500, '2025-04-12'),
('SEA006', 'Creative Zeta', 206, 'Campaign Digital Dominance', 65, 1100, '2025-04-13'),
('SEA007', 'Creative Eta', 207, 'Campaign Click Boost', 100, 1300, '2025-04-13'),
('SEA008', 'Creative Theta', 208, 'Campaign Search Mastery', 400, 9000, '2025-04-14'),
('SEA009', 'Creative Kappa', 209, 'Campaign Visibility Increase', 30, 400, '2025-04-14'),
('SEA010', 'Creative Iota', 210, 'Campaign Conversion King', 375, 8500, '2025-04-15'),
('SEA011', 'Creative Lambda', 211, 'Campaign Prime Push', 150, 2500, '2025-04-16'),
('SEA012', 'Creative Mu', 212, 'Campaign Big Savings', 120, 1800, '2025-04-16'),
('SEA013', 'Creative Nu', 213, 'Campaign Shop Smarter', 90, 1300, '2025-04-17'),
('SEA014', 'Creative Xi', 214, 'Campaign Auction Insights', 80, 1000, '2025-04-17'),
('SEA015', 'Creative Omicron', 215, 'Campaign DIY Mastery', 200, 3000, '2025-04-18'),
('SEA016', 'Creative Alpha', 216, 'Campaign Viral Outreach', 250, 3500, '2025-04-18'),
('SEA017', 'Creative Beta', 217, 'Campaign Tech Boost', 300, 4500, '2025-04-19'),
('SEA018', 'Creative Gamma', 218, 'Campaign Home Makeover', 180, 2200, '2025-04-19'),
('SEA019', 'Creative Delta', 219, 'Campaign Retail Revival', 150, 1500, '2025-04-20'),
('SEA020', 'Creative Epsilon', 220, 'Campaign Online Deals', 210, 2800, '2025-04-20'),
('SEA021', 'Creative Zeta', 221, 'Campaign Prime Expansion', 400, 9000, '2025-04-21'),
('SEA022', 'Creative Eta', 222, 'Campaign Everyday Value', 350, 8500, '2025-04-21'),
('SEA023', 'Creative Theta', 223, 'Campaign Stylish Savings', 130, 800, '2025-04-22'),
('SEA024', 'Creative Iota', 224, 'Campaign Electronics Domination', 180, 2200, '2025-04-22'),
('SEA025', 'Creative Kappa', 225, 'Campaign DIY Power', 100, 1200, '2025-04-23'),
('SEA026', 'Creative Alpha', 226, 'Campaign Retail Excellence', 220, 3200, '2025-04-24'),
('SEA027', 'Creative Beta', 227, 'Campaign Furniture Finds', 250, 3800, '2025-04-24'),
('SEA028', 'Creative Gamma', 228, 'Campaign Auction Dreams', 300, 4200, '2025-04-25'),
('SEA029', 'Creative Delta', 229, 'Campaign Smart Shopping', 170, 2700, '2025-04-25'),
('SEA030', 'Creative Epsilon', 230, 'Campaign Prime Fest', 500, 10000, '2025-04-26');

DROP TABLE IF EXISTS Paid_Display;
-- Create Paid Display Table
CREATE  TABLE Paid_Display (
    campaign_id SERIAL PRIMARY KEY,
    creative_id VARCHAR(10),
    creative_name VARCHAR(50),
    placement_name VARCHAR(50),
    campaign_name VARCHAR(50),
    clicks INT,
    impressions INT,
    event_dt DATE
);

INSERT INTO Paid_Display (creative_id, creative_name, placement_name, campaign_id, campaign_name, clicks, impressions, event_dt)
VALUES
('SEA001', 'Creative Zeta', 'Amazon', 201, 'Campaign Web Traffic Boost', 300, 5000, '2025-04-10'),
('SEA002', 'Creative Eta', 'eBay', 202, 'Campaign SEO Optimization', 50, 700, '2025-04-10'),
('SEA003', 'Creative Theta', 'Walmart', 203, 'Campaign Brand Awareness', 90, 1200, '2025-04-11'),
('SEA004', 'Creative Iota', 'Target', 204, 'Campaign Ad Blitz', 350, 8000, '2025-04-11'),
('SEA005', 'Creative Kappa', 'Best Buy', 205, 'Campaign Privacy Push', 40, 500, '2025-04-12'),
('SEA006', 'Creative Zeta', 'Amazon', 206, 'Campaign Digital Dominance', 65, 1100, '2025-04-13'),
('SEA007', 'Creative Eta', 'Wayfair', 207, 'Campaign Click Boost', 100, 1300, '2025-04-13'),
('SEA008', 'Creative Theta', 'Overstock', 208, 'Campaign Search Mastery', 400, 9000, '2025-04-14'),
('SEA009', 'Creative Kappa', 'Zappos', 209, 'Campaign Visibility Increase', 30, 400, '2025-04-14'),
('SEA010', 'Creative Iota', 'Home Depot', 210, 'Campaign Conversion King', 375, 8500, '2025-04-15'),
('SEA011', 'Creative Lambda', 'Amazon', 211, 'Campaign Prime Push', 150, 2500, '2025-04-16'),
('SEA012', 'Creative Mu', 'Target', 212, 'Campaign Big Savings', 120, 1800, '2025-04-16'),
('SEA013', 'Creative Nu', 'Walmart', 213, 'Campaign Shop Smarter', 90, 1300, '2025-04-17'),
('SEA014', 'Creative Xi', 'eBay', 214, 'Campaign Auction Insights', 80, 1000, '2025-04-17'),
('SEA015', 'Creative Omicron', 'Home Depot', 215, 'Campaign DIY Mastery', 200, 3000, '2025-04-18'),
('SEA016', 'Creative Alpha', 'Amazon', 216, 'Campaign Viral Outreach', 250, 3500, '2025-04-18'),
('SEA017', 'Creative Beta', 'Best Buy', 217, 'Campaign Tech Boost', 300, 4500, '2025-04-19'),
('SEA018', 'Creative Gamma', 'Wayfair', 218, 'Campaign Home Makeover', 180, 2200, '2025-04-19'),
('SEA019', 'Creative Delta', 'Target', 219, 'Campaign Retail Revival', 150, 1500, '2025-04-20'),
('SEA020', 'Creative Epsilon', 'Overstock', 220, 'Campaign Online Deals', 210, 2800, '2025-04-20'),
('SEA021', 'Creative Zeta', 'Amazon', 221, 'Campaign Prime Expansion', 400, 9000, '2025-04-21'),
('SEA022', 'Creative Eta', 'Walmart', 222, 'Campaign Everyday Value', 350, 8500, '2025-04-21'),
('SEA023', 'Creative Theta', 'Zappos', 223, 'Campaign Stylish Savings', 130, 800, '2025-04-22'),
('SEA024', 'Creative Iota', 'Best Buy', 224, 'Campaign Electronics Domination', 180, 2200, '2025-04-22'),
('SEA025', 'Creative Kappa', 'Home Depot', 225, 'Campaign DIY Power', 100, 1200, '2025-04-23'),
('SEA026', 'Creative Alpha', 'Target', 226, 'Campaign Retail Excellence', 220, 3200, '2025-04-24'),
('SEA027', 'Creative Beta', 'Wayfair', 227, 'Campaign Furniture Finds', 250, 3800, '2025-04-24'),
('SEA028', 'Creative Gamma', 'eBay', 228, 'Campaign Auction Dreams', 300, 4200, '2025-04-25'),
('SEA029', 'Creative Delta', 'Walmart', 229, 'Campaign Smart Shopping', 170, 2700, '2025-04-25'),
('SEA030', 'Creative Epsilon', 'Amazon', 230, 'Campaign Prime Fest', 500, 10000, '2025-04-26');