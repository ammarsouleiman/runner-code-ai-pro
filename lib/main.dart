import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() => runApp(const RunnerCodeApp());

class RunnerCodeApp extends StatelessWidget {
  const RunnerCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Runner Code AI Pro',
      theme: ThemeData(
        colorScheme: ColorScheme.dark(
          primary: Color.fromARGB(255, 255, 0, 0), // أحمر داكن
          secondary: Colors.white,
          surface: Color(0xFF121212),
          error: const Color.fromARGB(255, 255, 0, 0),
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          onSurface: Colors.white,
          onError: Colors.black,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0A0A),
        fontFamily: 'Poppins',
        useMaterial3: true,
        cardTheme: CardThemeData(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.all(8),
          color: const Color(0xFF1E1E1E),
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 12,
          scrolledUnderElevation: 16,
          titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.0,
            fontFamily: 'Poppins',
          ),
          backgroundColor: Color.fromARGB(255, 255, 0, 0),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(255, 255, 0, 0),
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      home: const WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0A0A0A), Color(0xFF1A1A1A)],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo with 3D effect
                  Animate(
                    effects: [
                      ScaleEffect(duration: 800.ms, curve: Curves.easeOutBack),
                      ShimmerEffect(duration: 1000.ms),
                    ],
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 255, 0, 0),
                            Color(0xFFFF6D00),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(
                              255,
                              255,
                              0,
                              0,
                            ).withAlpha(153),
                            blurRadius: 30,
                            spreadRadius: 4,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/images/logo.webp',
                              height: 140,
                              width: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withAlpha(77),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),

                  // Title with animation
                  Animate(
                    effects: [
                      FadeEffect(),
                      SlideEffect(begin: Offset(0, -20)),
                    ],
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'RUNNER ',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              letterSpacing: 1.5,
                            ),
                          ),
                          TextSpan(
                            text: 'CODE',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 255, 0, 0),
                              letterSpacing: 1.5,
                            ),
                          ),
                          TextSpan(
                            text: ' AI PRO',
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Subtitle
                  Animate(
                    effects: [
                      FadeEffect(),
                      SlideEffect(begin: Offset(0, -10)),
                    ],
                    child: Text(
                      'POWERFUL AI TOOLS PLATFORM',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),

                  // Website and email
                  Animate(
                    effects: [
                      FadeEffect(),
                      SlideEffect(begin: Offset(0, -10)),
                    ],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        children: [
                          Text(
                            'runner-code.com',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 255, 0, 0),
                              letterSpacing: 1.2,
                            ),
                          ),
                          Text(
                            'info@runner-code.com',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white70,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Description
                  Animate(
                    effects: [
                      FadeEffect(),
                      SlideEffect(begin: Offset(0, 20)),
                    ],
                    child: const Text(
                      'Experience the next generation of AI-powered tools with Runner Code AI Pro. '
                      'Our platform integrates cutting-edge artificial intelligence technologies '
                      'to revolutionize your workflow and boost productivity.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                        height: 1.6,
                        letterSpacing: 0.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox(height: 40),

                  // Buttons
                  Animate(
                    effects: [FadeEffect(), ScaleEffect()],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () => Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (_, __, ___) => const HomePage(),
                              transitionsBuilder:
                                  (context, animation, _, child) {
                                    return FadeTransition(
                                      opacity: animation,
                                      child: child,
                                    );
                                  },
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 255, 0, 0),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 16,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 8,
                            shadowColor: Color.fromARGB(
                              255,
                              255,
                              0,
                              0,
                            ).withAlpha(128),
                          ),
                          child: const Text(
                            'START EXPLORING',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        OutlinedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('ABOUT RUNNER CODE AI PRO'),
                                content: const Text(
                                  'Runner Code AI Pro is a premium platform offering the most advanced AI tools for professionals. '
                                  'Our tools are carefully selected based on performance, accuracy, and real-world applicability.',
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.white),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 16,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            'LEARN MORE',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Partners section
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Tool {
  final String title;
  final IconData icon;
  final String url;
  final String imagePath;
  final String description;
  final String category;
  final double rating;
  final int users;
  final List<String> features;
  final String pricing;
  final String detailedDescription;
  final List<String> useCases;

  Tool({
    required this.title,
    required this.icon,
    required this.url,
    required this.imagePath,
    required this.description,
    required this.category,
    required this.rating,
    required this.users,
    required this.features,
    required this.pricing,
    required this.detailedDescription,
    required this.useCases,
  });
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {
    final List<Tool> tools = [
      Tool(
        title: 'OpenChat Pro',
        icon: FontAwesomeIcons.comments,
        url: 'https://ai.runner-code.com/Openchat/index.html',
        imagePath: 'assets/images/openchat.jpg',
        description: 'Advanced conversational AI with multi-language support',
        category: 'Chat/Text',
        rating: 4.9,
        users: 1500,
        features: [
          'Multi-language conversations',
          'Code generation & debugging',
          'Contextual memory',
          'Document analysis',
          'Custom knowledge integration',
        ],
        pricing: 'Freemium (Pro: \$0)',
        detailedDescription:
            'OpenChat Pro is our flagship conversational AI tool that leverages GPT-4 architecture to provide human-like interactions. It supports over 50 languages and can understand context across long conversations. The tool is particularly useful for developers, content creators, and customer support teams.',
        useCases: [
          'Customer support automation',
          'Content generation',
          'Programming assistance',
          'Language learning',
          'Research and information gathering',
        ],
      ),
      Tool(
        title: 'ImageGen AI',
        icon: FontAwesomeIcons.image,
        url: 'https://ai.runner-code.com/AI%20Image%20Generator/index.html',
        imagePath: 'assets/images/imagegen.jpg',
        description: 'Generate stunning images from text descriptions',
        category: 'Image Generation',
        rating: 4.8,
        users: 900,
        features: [
          '4K resolution output',
          'Multiple art styles',
          'Image editing capabilities',
          'Commercial usage rights',
          'Batch processing',
        ],
        pricing: 'Credits-based (Pro: \$0)',
        detailedDescription:
            'Our ImageGen AI uses state-of-the-art diffusion models to create high-quality images from text prompts. It supports various artistic styles including photorealistic, digital art, watercolor, and more. The tool includes advanced features like inpainting and outpainting for professional editing.',
        useCases: [
          'Marketing material creation',
          'Concept art generation',
          'Product prototyping',
          'Social media content',
          'Illustration and design',
        ],
      ),
      Tool(
        title: 'ResumeMaster AI',
        icon: FontAwesomeIcons.fileLines,
        url: 'https://ai.runner-code.com/AI%20Resume/index.html',
        imagePath: 'assets/images/resumegen.webp',
        description: 'AI-powered resume builder with ATS optimization',
        category: 'Productivity',
        rating: 4.7,
        users: 2100,
        features: [
          'ATS optimization',
          'Real-time feedback',
          'Job matching algorithm',
          'Cover letter generator',
          'Interview preparation',
        ],
        pricing: 'Free basic (Pro: \$0)',
        detailedDescription:
            'ResumeMaster AI analyzes thousands of successful resumes to help you create the perfect job application. It optimizes your resume for Applicant Tracking Systems (ATS) used by 99% of Fortune 500 companies and provides personalized suggestions to improve your chances of getting interviews.',
        useCases: [
          'Job application preparation',
          'Career change transition',
          'Freelancer profile optimization',
          'LinkedIn profile enhancement',
          'Promotion package creation',
        ],
      ),
      Tool(
        title: 'CodeExplainer Pro',
        icon: FontAwesomeIcons.code,
        url: 'https://ai.runner-code.com/Code%20explainer/index.html',
        imagePath: 'assets/images/codeex.jpg',
        description: 'Understand and optimize complex code in seconds',
        category: 'Development',
        rating: 4.8,
        users: 600,
        features: [
          'Multi-language support',
          'Code optimization suggestions',
          'Security vulnerability detection',
          'Interactive learning',
          'Integration with IDEs',
        ],
        pricing: 'Free basic (Pro: \$0)',
        detailedDescription:
            'CodeExplainer Pro helps developers understand complex codebases quickly. It can analyze code in over 20 programming languages, explain functionality in simple terms, and suggest optimizations. The tool also identifies security vulnerabilities and provides educational resources for learning.',
        useCases: [
          'Legacy code understanding',
          'Code review automation',
          'Learning new codebases',
          'Debugging assistance',
          'Technical documentation generation',
        ],
      ),
      Tool(
        title: 'VoiceAI Studio',
        icon: FontAwesomeIcons.microphone,
        url: 'https://ai.runner-code.com/AI%20Voice/index.html',
        imagePath: 'assets/images/aivoicestudio.jpg',
        description: 'Professional text-to-speech with 500+ voices',
        category: 'Audio',
        rating: 4.6,
        users: 2500,
        features: [
          '500+ natural voices',
          '80+ languages',
          'Emotion control',
          'Audio editing suite',
          'Batch processing',
        ],
        pricing: 'Free basic (Pro: \$0)',
        detailedDescription:
            'VoiceAI Studio offers the most realistic text-to-speech conversion available. With advanced emotion control and pronunciation adjustment, you can create studio-quality voiceovers for videos, podcasts, and presentations without expensive recording equipment.',
        useCases: [
          'Video voiceovers',
          'Audiobook production',
          'E-learning content',
          'Podcast production',
          'Accessibility features',
        ],
      ),
      Tool(
        title: 'VoiceChat AI',
        icon: FontAwesomeIcons.headphones,
        url: 'https://ai.runner-code.com/AI%20Voice%20Chat/index.html',
        imagePath: 'assets/images/aivoicechat.webp',
        description: 'Natural voice conversations with AI assistants',
        category: 'Audio',
        rating: 4.5,
        users: 3000,
        features: [
          'Real-time conversation',
          'Multi-language support',
          'Custom voice personalities',
          'Contextual understanding',
          'API integration',
        ],
        pricing: 'Freemium (Pro: \$0)',
        detailedDescription:
            'VoiceChat AI enables natural voice conversations with AI assistants. The technology understands context, remembers previous interactions, and can be customized for specific use cases. Ideal for voice-enabled apps, smart home devices, and customer service applications.',
        useCases: [
          'Voice-enabled applications',
          'Smart home integration',
          'Customer service automation',
          'Language practice',
          'Accessibility tools',
        ],
      ),
    ];

    // Filter tools based on selected category
    final List<Tool> filteredTools = selectedCategory == 'All'
        ? tools
        : tools.where((tool) => tool.category == selectedCategory).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('RUNNER CODE AI PRO'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: ToolSearchDelegate(tools: tools),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationName: 'Runner Code AI Pro',
                applicationVersion: '2.1.0',
                applicationIcon: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 0, 0),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.auto_awesome, color: Colors.white),
                ),
                applicationLegalese: '© 2025 Runner Code Inc.\nrunner-code.com',
                children: [
                  const SizedBox(height: 16),
                  const Text(
                    'Runner Code AI Pro provides premium AI tools for professionals. '
                    'All tools are selected based on rigorous performance benchmarks and user feedback.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Icon(Icons.star_half, color: Colors.amber, size: 16),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Contact: info@runner-code.com',
                    style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
                  ),
                ],
              );
            },
          ),
        ],
      ),
      drawer: _buildDrawer(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with stats
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF1E1E1E), Color(0xFF121212)],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(128),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Row(
              children: [
                _buildStatItem(Icons.auto_awesome, '6', 'AI Tools'),
                _buildStatItem(Icons.people, '3.5K+', 'Users'),
                _buildStatItem(Icons.star, '4.7', 'Rating'),
                _buildStatItem(Icons.language, '50+', 'Languages'),
              ],
            ),
          ),

          // Categories
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'AI TOOL CATEGORIES',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildCategoryChip('All', selectedCategory == 'All'),
                      _buildCategoryChip(
                        'Chat/Text',
                        selectedCategory == 'Chat/Text',
                      ),
                      _buildCategoryChip(
                        'Image Generation',
                        selectedCategory == 'Image Generation',
                      ),
                      _buildCategoryChip('Audio', selectedCategory == 'Audio'),
                      _buildCategoryChip(
                        'Productivity',
                        selectedCategory == 'Productivity',
                      ),
                      _buildCategoryChip(
                        'Development',
                        selectedCategory == 'Development',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Tools grid
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.85,
                ),
                itemCount: filteredTools.length,
                itemBuilder: (context, index) {
                  final tool = filteredTools[index];
                  return _buildToolCard(context, tool);
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showSuggestToolDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF121212),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 255, 0, 0), Color(0xFFFF6D00)],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'RUNNER CODE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.5,
                  ),
                ),
                const Text(
                  'AI PRO EDITION',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.5,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      'PREMIUM TOOLS',
                      style: TextStyle(
                        color: Colors.white.withAlpha(230),
                        fontSize: 12,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          _buildDrawerItem(
            icon: Icons.home,
            title: 'Home',
            onTap: () => Navigator.pop(context),
          ),
          _buildDrawerItem(
            icon: Icons.email,
            title: 'Contact Us',
            onTap: () {
              final Uri emailLaunchUri = Uri(
                scheme: 'mailto',
                path: 'info@runner-code.com',
              );
              launchUrl(emailLaunchUri);
            },
          ),
          const Spacer(),
          ListTile(
            title: Text(
              'runner-code.com',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 0, 0),
                fontSize: 12,
                letterSpacing: 1.2,
              ),
            ),
            trailing: Icon(Icons.open_in_new, color: Colors.white70, size: 16),
            onTap: () {
              launchUrl(Uri.parse('https://runner-code.com'));
            },
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(IconData icon, String value, String label) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.black.withAlpha(77),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 14, color: Color.fromARGB(255, 255, 0, 0)),
                const SizedBox(width: 4),
                Text(
                  value,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(label, style: TextStyle(fontSize: 10, color: Colors.white70)),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.white70),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      onTap: onTap,
    );
  }

  Widget _buildCategoryChip(String label, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ChoiceChip(
        label: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        selected: isSelected,
        onSelected: (selected) {
          if (selected) {
            setState(() {
              selectedCategory = label;
            });
          }
        },
        selectedColor: Color.fromARGB(255, 255, 0, 0),
        labelStyle: TextStyle(
          color: isSelected ? Colors.white : Colors.white70,
        ),
        backgroundColor: const Color(0xFF1E1E1E),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }

  Widget _buildToolCard(BuildContext context, Tool tool) {
    return Animate(
      effects: [FadeEffect(), ScaleEffect()],
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => ToolDetailsPage(tool: tool)),
        ),
        child: Card(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Tool image with gradient overlay
                  Expanded(
                    child: Hero(
                      tag: tool.title,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                          image: DecorationImage(
                            image: AssetImage(tool.imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black.withAlpha(179),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Tool info
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tool.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(
                              tool.icon,
                              size: 14,
                              color: Color.fromARGB(255, 255, 0, 0),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              tool.category,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.star, size: 14, color: Colors.amber),
                            Text(
                              ' ${tool.rating}',
                              style: const TextStyle(fontSize: 12),
                            ),
                            const SizedBox(width: 8),
                            Icon(
                              Icons.people,
                              size: 14,
                              color: Color.fromARGB(255, 255, 0, 0),
                            ),
                            Text(
                              ' ${_formatNumber(tool.users)}+',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // Premium badge
              if (tool.pricing.toLowerCase().contains('pro') ||
                  tool.pricing.toLowerCase().contains('premium'))
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 0, 0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'PRO',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.0,
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

  String _formatNumber(int number) {
    if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed(1)}M';
    } else if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(1)}K';
    }
    return number.toString();
  }

  void _showSuggestToolDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Suggest a Tool'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Tool Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Tool URL',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Thank you for your suggestion!')),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
            ),
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}

class ToolSearchDelegate extends SearchDelegate {
  final List<Tool> tools;

  ToolSearchDelegate({required this.tools});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<Tool> results = tools
        .where(
          (tool) =>
              tool.title.toLowerCase().contains(query.toLowerCase()) ||
              tool.description.toLowerCase().contains(query.toLowerCase()) ||
              tool.category.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();

    return _buildSearchResults(results);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<Tool> suggestions = tools
        .where(
          (tool) =>
              tool.title.toLowerCase().contains(query.toLowerCase()) ||
              tool.description.toLowerCase().contains(query.toLowerCase()) ||
              tool.category.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();

    return _buildSearchResults(suggestions);
  }

  Widget _buildSearchResults(List<Tool> results) {
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final tool = results[index];
        return ListTile(
          leading: Hero(
            tag: 'search_${tool.title}',
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(tool.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          title: Text(tool.title),
          subtitle: Text(
            tool.category,
            style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
          ),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ToolDetailsPage(tool: tool),
              ),
            );
          },
        );
      },
    );
  }
}

class ToolDetailsPage extends StatelessWidget {
  final Tool tool;

  const ToolDetailsPage({super.key, required this.tool});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tool.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              // Implement share functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.bookmark_border),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${tool.title} added to bookmarks')),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero image with gradient
            Hero(
              tag: tool.title,
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(tool.imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black.withAlpha(204)],
                    ),
                  ),
                ),
              ),
            ),

            // Tool details
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title and category
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tool.title,
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(
                                  tool.icon,
                                  color: Color.fromARGB(255, 255, 0, 0),
                                  size: 20,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  tool.category,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Chip(
                        backgroundColor: Color.fromARGB(
                          255,
                          255,
                          0,
                          0,
                        ).withAlpha(51),
                        label: Text(
                          tool.pricing,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // Rating and users
                  Row(
                    children: [
                      _buildRatingBadge(tool.rating),
                      const SizedBox(width: 16),
                      _buildUsersBadge(tool.users),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // Description
                  Text(
                    tool.description,
                    style: TextStyle(fontSize: 16, height: 1.6),
                  ),

                  const SizedBox(height: 24),

                  // Detailed description
                  Text(
                    tool.detailedDescription,
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.6,
                      color: Colors.white70,
                    ),
                  ),

                  const SizedBox(height: 32),

                  // Key features
                  const Text(
                    'KEY FEATURES',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Column(
                    children: tool.features
                        .map(
                          (feature) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  color: Color.fromARGB(255, 255, 0, 0),
                                  size: 20,
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    feature,
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),

                  const SizedBox(height: 32),

                  // Use cases
                  const Text(
                    'COMMON USE CASES',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: tool.useCases
                        .map(
                          (useCase) => Chip(
                            label: Text(useCase),
                            backgroundColor: Colors.black.withAlpha(77),
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                        )
                        .toList(),
                  ),

                  const SizedBox(height: 40),

                  // Action buttons
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () async {
                        final uri = Uri.parse(tool.url);
                        if (await canLaunchUrl(uri)) {
                          await launchUrl(uri);
                        }
                      },
                      icon: const Icon(Icons.open_in_new),
                      label: const Text('VISIT OFFICIAL WEBSITE'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 0, 0),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  const SizedBox(height: 20),

                  // Footer
                  Center(
                    child: Text(
                      'runner-code.com | info@runner-code.com',
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRatingBadge(double rating) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.amber.withAlpha(51),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.star, color: Colors.amber, size: 18),
          const SizedBox(width: 6),
          Text(
            rating.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(width: 4),
          Text('Rating', style: TextStyle(color: Colors.white70, fontSize: 14)),
        ],
      ),
    );
  }

  Widget _buildUsersBadge(int users) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.blue.withAlpha(51),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.people, color: Colors.blue, size: 18),
          const SizedBox(width: 6),
          Text(
            '${_formatNumber(users)}+',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(width: 4),
          Text('Users', style: TextStyle(color: Colors.white70, fontSize: 14)),
        ],
      ),
    );
  }

  String _formatNumber(int number) {
    if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed(1)}M';
    } else if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(1)}K';
    }
    return number.toString();
  }
}
