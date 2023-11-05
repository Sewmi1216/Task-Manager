import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // Your app bar content here
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: SearchScreen(),
              ),
              // FilterScreen(),
              //CategoryTile(),
            ],
          ),
          CategoryTile(
            title: 'Today', // Provide a title
            subcategories: ['High', 'Medium', 'Low'], // Provide subcategories
            isExpanded: false, // Provide isExpanded value
            onExpansionChanged: (expanded) {},
          ),

 CategoryTile(
                title: 'Future',
                subcategories: ['Upcoming', 'Planned'],
                isExpanded: false,
                onExpansionChanged: (expanded) {},
              ),


        ],
      ),
    );
  }
}

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchController = TextEditingController();
  String _searchText = '';

  void _performSearch() {
    // You can implement your search logic here using _searchText
    print("Performing search for: $_searchText");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search...',
              suffixIcon: Container(
                width: 20,
                child: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: _performSearch,
                ),
              ),
            ),
            onChanged: (text) {
              setState(() {
                _searchText = text;
              });
            },
          ),
        ],
      ),
    );
  }
}

// class FilterScreen extends StatefulWidget {
//   @override
//   _FilterScreenState createState() => _FilterScreenState();
// }

// class _FilterScreenState extends State<FilterScreen> {
//   String _selectedFilter = 'All'; // Default filter option

//   void _onFilterSelected(String value) {
//     setState(() {
//       _selectedFilter = value;
//     });
//     // You can apply your filter logic here based on the selected option
//     print("Filter selected: $_selectedFilter");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return PopupMenuButton<String>(
//       onSelected: _onFilterSelected,
//       icon: Icon(Icons.filter_list), // Use an icon here
//       itemBuilder: (BuildContext context) {
//         return <PopupMenuEntry<String>>[
//           PopupMenuItem<String>(
//             value: 'Manage Categories',
//             child: Text('Manage Categories'),
//           ),
//           PopupMenuItem<String>(
//             value: 'FAQ',
//             child: Text('FAQ'),
//           ),
//           PopupMenuItem<String>(
//             value: 'Help',
//             child: Text('Help'),
//           ),
//           PopupMenuItem<String>(
//             value: 'Data Synchronization',
//             child: Text('Data Synchronization'),
//           ),
//           // Add more filter options as needed
//         ];
//       },
//     );
//   }
// }


class CategoryTile extends StatelessWidget {
  final String title;
  final List<String> subcategories;
  final bool isExpanded;
  final ValueChanged<bool> onExpansionChanged;

  CategoryTile({
    required this.title,
    required this.subcategories,
    this.isExpanded = false, // Make isExpanded optional with a default value
    required this.onExpansionChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title),
      initiallyExpanded: isExpanded,
      onExpansionChanged: onExpansionChanged,
      children: subcategories.map((subcategory) {
        return ListTile(
          title: Text(subcategory),
        );
      }).toList(),
    );
  }
}