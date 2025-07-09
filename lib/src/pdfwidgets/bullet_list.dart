// Import the necessary dependencies from the 'htmltopdfwidgets.dart' file.
import '../../htmltopdfwidgets.dart';

// This function creates a bullet list child widget with a bullet icon and content.
// It takes a 'childValue' widget and 'customStyles' for styling.
Widget buildBulletwidget(Widget childValue,
    {required HtmlTagStyle customStyles}) {
  // Create a container to hold the child elements.
  Widget child = Container(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        _BulletedListIcon(style: customStyles), // Include the bullet icon.
        Flexible(child: childValue), // Include the main content child widget.
      ],
    ),
  );
  return child; // Return the resulting child widget.
}

// This private class represents the bullet list icon.
class _BulletedListIcon extends StatelessWidget {
  final HtmlTagStyle style;

  // Constructor to initialize the 'style' property.
  _BulletedListIcon({required this.style});

  @override
  Widget build(Context context) {
    return SizedBox(
      width: style.listItemIndicatorWidth,
      height: style.bulletListIconSize,
      child: Padding(
        padding: style.listItemIndicatorPadding,
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: style.bulletListDotSize,
            height: style.bulletListDotSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: style.bulletListIconColor ?? PdfColors.black,
            ),
          ),
        ),
      ),
    );
  }
}
