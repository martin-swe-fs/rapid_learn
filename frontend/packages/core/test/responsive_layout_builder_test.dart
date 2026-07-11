import 'package:core/core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

class _TestMobileContent extends StatelessWidget {
  const _TestMobileContent();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _TestDesktopContent extends StatelessWidget {
  const _TestDesktopContent();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

void main() {
  group('ResponsiveLayoutBuilder', () {
    testWidgets(
      'renders mobile layout when width is less than minDesktopWidth',
      (tester) async {
        tester.view.physicalSize = const .new(
          ResponsiveLayoutBuilder.minDesktopWidth - 1.0,
          600,
        );

        tester.view.devicePixelRatio = 1.0;
        addTearDown(tester.view.reset);

        await tester.pumpWidget(
          const ResponsiveLayoutBuilder(
            mobile: _TestMobileContent(),
            desktop: _TestDesktopContent(),
          ),
        );

        expect(find.byType(_TestMobileContent), findsOneWidget);
        expect(find.byType(_TestDesktopContent), findsNothing);
      },
    );

    testWidgets(
      'renders desktop layout when width is equal minDesktopWidth',
      (tester) async {
        tester.view.physicalSize = const .new(
          ResponsiveLayoutBuilder.minDesktopWidth,
          600,
        );

        tester.view.devicePixelRatio = 1.0;
        addTearDown(tester.view.reset);

        await tester.pumpWidget(
          const ResponsiveLayoutBuilder(
            mobile: _TestMobileContent(),
            desktop: _TestDesktopContent(),
          ),
        );

        expect(find.byType(_TestMobileContent), findsNothing);
        expect(find.byType(_TestDesktopContent), findsOneWidget);
      },
    );

    testWidgets(
      'renders desktop layout when width is greater than minDesktopWidth',
      (tester) async {
        tester.view.physicalSize = const .new(
          ResponsiveLayoutBuilder.minDesktopWidth + 1024.0,
          600,
        );

        tester.view.devicePixelRatio = 1.0;
        addTearDown(tester.view.reset);

        await tester.pumpWidget(
          const ResponsiveLayoutBuilder(
            mobile: _TestMobileContent(),
            desktop: _TestDesktopContent(),
          ),
        );

        expect(find.byType(_TestMobileContent), findsNothing);
        expect(find.byType(_TestDesktopContent), findsOneWidget);
      },
    );
  });
}
