import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const HeartSutraApp());

class HeartSutraApp extends StatelessWidget {
  const HeartSutraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heart Sutra',
      theme: ThemeData(
        primarySwatch: Colors.gold,
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          titleLarge: TextStyle(color: Colors.white, fontSize: 24),
          bodyLarge: TextStyle(color: Colors.amber, fontSize: 18),
        ),
      ),
      home: const SutraPage(),
    );
  }
}

class SutraPage extends StatefulWidget {
  const SutraPage({super.key});

  @override
  State<SutraPage> createState() => _SutraPageState();
}

class _SutraPageState extends State<SutraPage> with TickerProviderStateMixin {
  // Heart Sutra text in three languages
  final List<String> chineseText = [
    '摩訶般若波羅蜜多心經',
  ];

  final List<String> chineseParagraphs = [
    '觀自在菩薩 行深般若波羅蜜多時\n照見五蘊皆空 度一切苦厄 舍利子\n色不異空 空不異色 色即是空 空即是色\n受想行識 亦復如是 舍利子 是諸法空相\n不生不滅 不垢不淨 不增不減\n是故空中無色 無受想行識\n無眼耳鼻舌身意 無色聲香味觸法\n無眼界 乃至無意識界\n無無明 亦無無明盡 乃至無老死 亦無老死盡\n無苦集滅道 無智亦無得\n以無所得故 菩提薩埵 依般若波羅蜜多故\n心無罣礙 無罣礙故 無有恐怖 遠離顛倒夢想\n究竟涅槃 三世諸佛 依般若波羅蜜多故\n得阿耨多羅三藐三菩提 故知般若波羅蜜多\n是大神咒 是大明咒 是無上咒 是無等等咒\n能除一切苦 真實不虛 故說般若波羅蜜多咒\n即說咒曰 揭諦揭諦 波羅揭諦\n波羅僧揭諦 菩提薩婆訶\n般若波羅蜜多心經',
  ];

  final List<String> pinyinText = [
    'mó hē bō rě bō luó mì duō xīn jīng',
  ];

  final List<String> pinyinParagraphs = [
    'guān zì zài pú sà xìng shēn bō rẽ bō luó mì duō shí\nzhào jiàn wù yùn jiē kōng dù yí qiè kŭ è shè lì zì\nsè bú yì kōng kōng bú yì sè sè jí shì kōng kōng jí shì sè\nshòu xiăng xìng shì yì fù rú shì shè lì zǐ shì zhū fă kōng xiàng\nbù shēng bú miè bú gòu bú jìng bù zēng bù jiăn\nshì gù kōng zhōng wú sè wú shòu xiăng xìng shì\nwú yǎn ér bǐ shé shēn yì wú sè sheng xiāng wèi chù fà\nwú yǎn jiè nài zhì wú yì shì jiè\nwú wú míng yì wú wú míng jìn năi zhì wú lão sĩ yì wú lão sǐ jìn\nwú kù jí miè dào wú zhì yì wú dé\nyǐ wú suǒ dé gù pú tí sà duõ yī bō rě bō luó mì duō gù\nxīn wú guà ài wú guà ài gù wú yǒu kòng bù yuăn lí diān dǎo mèng xiăng\njiù jìng niè pán sān shì zhū fó yī bō rě bō luó mì duō gù\ndé ē nòu duō luó sān miǎo sān pú tí gù zhī bō rẽ bō luó mì duō\nshì dà shén zhòu shì dà míng zhòu shì wú shàng zhòu shì wú děng děng zhòu\nnéng chú yí qiè kŭ zhēn shí bù xū gù shuō bō rě bō luó mì duō zhòu\njí shuō zhōu yuē : jiē dì jiē dì bō luó jiē dì\nbō luó sēng jiē dì pú tí sà pó hē\nbō rě bō luó mì duō xīn jīng',
  ];

  final List<String> indonesianText = [
    'Sutra Prajnaparamita Hrdaya / Sutra Hati',
  ];

  final List<String> indonesianParagraphs = [
    'Ketika Yang Mulia Bodhisattva Avalokitesvara mempraktikkan Prajna Paramita secara tekun dan mendalam.\nBeliau mengerti secara hakiki bahwa panca skandha manusia adalah senantiasa berubah. Dengan pencerahan demikian Beliau dapat mengatasi semua penderitaan. Oh, Sariputra!\nSetiap benda/rupa adalah identik dengan sifat kesunyataan. Sebaliknya sifat kesunyataan ini adalah identik dengan benda/rupa yang relevan dengannya. Semua benda/rupa adalah perwujudan dari sifat kesunyataan, sifat kesunyataan senantiasa menyertai benda/rupanya.\nDemikian pula yang terjadi dengan vedana (perasaan), samjna (pikiran), samskara (karsa), dan vijnanani (jiwa/bawah kesadaran). Oh, Sariputra! Kesunyataan dari seisi alam semesta\naadalah tiada kelahiran dan kematian, tiada pertentangan yang awam dan suci, tiada penambahan dan pengurangan dalam kondisi apa pun.\nOleh karena itu, di dalam kesunyataan tiada perwujudan, tiada permainan perasaan, percerapan, tindakan, alam bawah kesadaran\ntiada godaan mata, telinga, hidung, lidah, jasmani, dan pikiran. Tiada terpikat oleh objek penglihatan, pendengaran, penciuman, cita rasa, sentuhan.\nTiada batas pandangan, tiada batas alam bawah kesadaran.\nTiada avidya/kegelapan batin, tiada lenyapnya kegelapan batin, tiada usia tua dan kematian, sampai akhir dari usia tua dan kematian.\nTiada derita, asal mula derita, akhir derita, dan jalan pencerahan; tiada kebijaksanaan, tiada pencapaian.\nSesungguhnya, tiada sesuatu yang dicapai, oleh karena pengertian ini, maka Sang Bodhisattva melatih dirinya mengikuti Prajna Paramita.\nJika hati terbebas, tiada beban pikiran, maka tidak akan rasa ketakutan, menjauhi cara berpikiran irasional atau berkhayalan\ndan berakhir mencapai nirvana. Semua Hyang Buddha pada waktu dahulu, sekarang dan mendatang, karena telah mempraktikkan Prajna Paramita,\nmaka mencapai Anuttara Samyaksambuddha (pencerahan sempurna). Karena itu, Prajna Paramita sudah jelas merupakan maha mantra sakti,\nmaha mantra pencerahan, mantra yang teragung, mantra tanpa bandingan\nyang dapat melenyapkan segala penderitaan; sungguh benar dan tidak palsu. Karenanya, mari kita menglafal dan mengamalkan mantra Prajna Paramita\nseperti ini; Pergilah pergilah, melewati semua dukkha,\nbersama-sama menyeberangi mencapai pencerahan\nSutra Prajnaparamita Hrdaya / Sutra Hati',
  ];

  // Counter state
  int _recitationCount = 0;
  int _cumulativeTotal = 0;
  final List<SessionLog> _sessionLogs = [];
  final TextEditingController _noteController = TextEditingController();

  // Session management
  void _startNewSession() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Save Session'),
        content: TextField(
          controller: _noteController,
          decoration: const InputDecoration(
            hintText: 'Optional note...',
            border: OutlineInputBorder(),
          ),
          maxLines: 3,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              final note = _noteController.text.trim();
              final session = SessionLog(
                id: DateTime.now().millisecondsSinceEpoch.toString(),
                count: _recitationCount,
                note: note.isNotEmpty ? note : null,
                date: DateTime.now(),
              );
              setState(() {
                _sessionLogs.add(session);
                _cumulativeTotal += _recitationCount;
              });
              _saveData();
              _recitationCount = 0;
              _noteController.clear();
              Navigator.of(context).pop();
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  void _resetCumulative() async {
    final confirmed = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Reset Cumulative Total'),
        content: const Text('This will reset all-time recitation count to 0. Continue?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Reset'),
          ),
        ],
      ),
    );
    if (confirmed == true) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('cumulative_total', 0);
      setState(() {
        _cumulativeTotal = 0;
        _sessionLogs.clear();
      });
      _saveData();
    }
  }

  void _saveData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('cumulative_total', _cumulativeTotal);
    await prefs.setStringList('session_logs', _sessionLogs
        .map((s) => '${s.id}|${s.count}|${s.date.millisecondsSinceEpoch}|${s.note ?? ''}')
        .toList());
    await prefs.setInt('recitation_count', _recitationCount);
  }

  void _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _cumulativeTotal = prefs.getInt('cumulative_total') ?? 0;
      _recitationCount = prefs.getInt('recitation_count') ?? 0;
      
      final logs = prefs.getStringList('session_logs') ?? [];
      _sessionLogs.clear();
      for (final log in logs) {
        final parts = log.split('|');
        if (parts.length >= 4) {
          _sessionLogs.add(SessionLog(
            id: parts[0],
            count: int.parse(parts[1]),
            date: DateTime.fromMillisecondsSinceEpoch(int.parse(parts[2])),
            note: parts[3].isNotEmpty ? parts[3] : null,
          ));
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Heart Sutra Recitation'),
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: _showSessionLog,
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: _resetCumulative,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Cumulative Total Display
            Text(
              'Cumulative Total: $_cumulativeTotal',
              style: const TextStyle(
                color: Colors.amber,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            
            // Big Recitation Counter Button
            GestureDetector(
              onTap: () {
                setState(() {
                  _recitationCount++;
                });
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.gold,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    _recitationCount.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            
            // Language selector
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Language:', style: TextStyle(color: Colors.white, fontSize: 16)),
                SizedBox(width: 20),
                _LanguageChip(
                  label: 'Hanzi',
                  isSelected: true,
                  onSelected: (_) {},
                ),
                _LanguageChip(
                  label: 'Pinyin',
                  isSelected: false,
                  onSelected: (_) {},
                ),
                _LanguageChip(
                  label: 'Indonesian',
                  isSelected: false,
                  onSelected: (_) {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            // Current language text display
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SelectableText(
                  _getCurrentText(),
                  style: const TextStyle(color: Colors.amber, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _startNewSession,
        backgroundColor: Colors.gold,
        child: const Icon(Icons.save),
        tooltip: 'Save Session',
      ),
    );
  }

  String _getCurrentText() {
    // Default to Hanzi, can expand with tab selector later
    return chineseParagraphs.isNotEmpty ? chineseParagraphs[0] : '';
  }

  void _showSessionLog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Session Log'),
        size: const Size(500, 600),
        content: _sessionLogs.isEmpty
            ? const Text('No sessions logged yet.')
            : ListView.builder(
                itemCount: _sessionLogs.length,
                itemBuilder: (context, index) {
                  final session = _sessionLogs[index];
                  return ListTile(
                    leading: Text('${session.count}'),
                    title: Text('${session.date.month}/${session.date.day}/${session.date.year}'),
                    subtitle: session.note != null
                        ? Text('Note: ${session.note!}')
                        : null,
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          _cumulativeTotal -= session.count;
                          _sessionLogs.removeAt(index);
                          _saveData();
                        });
                      },
                    ),
                  );
                },
              ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}

class SessionLog {
  final String id;
  final int count;
  final DateTime date;
  final String? note;

  SessionLog({
    required this.id,
    required this.count,
    required this.date,
    this.note,
  });
}

class _LanguageChip extends StatefulWidget {
  final String label;
  final bool isSelected;
  final void Function()? onSelected;

  const _LanguageChip({
    required this.label,
    required this.isSelected,
    this.onSelected,
  });

  @override
  State<_LanguageChip> createState() => _LanguageChipState();
}

class _LanguageChipState extends State<_LanguageChip> {
  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.label, style: TextStyle(color: widget.isSelected ? Colors.black : Colors.white)),
      selected: widget.isSelected,
      onSelected: widget.onSelected,
      backgroundColor: Colors.grey[800],
      selectedColor: Colors.gold,
    );
  }
}