import 'package:flutter/material.dart';
import '../utils/colors.dart'; // Custom color constants
import '../utils/image_paths.dart'; // Image path constants

void main() {
  runApp(MyApp());
}

// Root widget of the app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.backgroundColor, // Set background color to black
        appBar: AppBar(
          title: Text(''), // Empty title for minimalist look
          backgroundColor: AppColors.backgroundColor,
          elevation: 0, // Removes shadow
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0), // Padding around the entire body
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile row: image + details
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Circular profile picture
                  ClipOval(
                    child: Image.asset(
                      ImagePaths.profileImage,
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16),

                  // Profile info column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Name and verified badge
                        Row(
                          children: [
                            Text(
                              'Magnus Midtbø',
                              style: TextStyle(
                                color: AppColors.textColor,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 6),
                            Icon(Icons.verified, color: Colors.white, size: 20),
                          ],
                        ),
                        SizedBox(height: 4),

                        // Username and stats
                        Text(
                          '@magmidt · 2.89M subscribers · 444 videos',
                          style: TextStyle(color: Colors.grey[400], fontSize: 14),
                        ),
                        SizedBox(height: 8),

                        // Contact info
                        Text(
                          'For sponsor inquiries: magnus@delkatalents.com',
                          style: TextStyle(color: Colors.grey[300], fontSize: 13),
                        ),
                        SizedBox(height: 6),

                        // Links
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'instagram.com/magmidt',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 13,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(
                                text: ' and 1 more link',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),

              // Subscribe button (smaller version)
              Center(
                child: Container(
                  width: 160, // Smaller width than full screen
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'Subscribe',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
