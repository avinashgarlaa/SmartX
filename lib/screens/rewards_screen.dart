import 'package:flutter/material.dart';

class RewardsScreen extends StatelessWidget {
  const RewardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 55,
              bottom: 10,
            ),
            decoration: const BoxDecoration(
              color: Color(0xFF00A676),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Rewards and Incentives',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.notifications_none, color: Colors.white),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Points Card
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFFFE259), Color(0xFFFFC107)],
                ),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Total earned points-\n327',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Icon(Icons.emoji_events, color: Colors.white, size: 40),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Filter Chips
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Wrap(
              spacing: 10,
              children: const [
                FilterChipWidget(label: "All", selected: true),
                FilterChipWidget(label: "Coupons"),
                FilterChipWidget(label: "Bills"),
                FilterChipWidget(label: "Eco-products"),
                FilterChipWidget(label: "Donations"),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Available Rewards Header
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Available rewards',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                color: Colors.black54,
              ),
            ),
          ),

          const SizedBox(height: 10),

          // Rewards List
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: const [
                RewardTile(
                  title: '5% off on blinkit',
                  points: 500,
                  isAvailable: true,
                ),
                RewardTile(
                  title: 'Get 30% off on shopping of more than ₹500',
                  points: 200,
                  isAvailable: true,
                ),
                RewardTile(
                  title: 'Water bill discount voucher',
                  points: 250,
                  isAvailable: true,
                ),
                RewardTile(
                  title: 'Cashback on Gpay',
                  points: 100,
                  isAvailable: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FilterChipWidget extends StatelessWidget {
  final String label;
  final bool selected;

  const FilterChipWidget({
    super.key,
    required this.label,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(label),
      selected: selected,
      onSelected: (_) {},
      selectedColor: const Color(0xFF00A676),
      backgroundColor: Colors.grey.shade200,
      labelStyle: TextStyle(color: selected ? Colors.white : Colors.black),
      checkmarkColor: Colors.white,
    );
  }
}

// RewardTile Widget
class RewardTile extends StatelessWidget {
  final String title;
  final int points;
  final bool isAvailable;

  const RewardTile({
    super.key,
    required this.title,
    required this.points,
    required this.isAvailable,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.lightBlue),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                Text(
                  '$points points required',
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              color: isAvailable ? Colors.greenAccent : Colors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              isAvailable ? 'Redeem' : 'Not available',
              style: const TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
