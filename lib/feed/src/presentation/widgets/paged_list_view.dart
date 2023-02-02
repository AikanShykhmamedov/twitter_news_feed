import 'package:flutter/material.dart';

class PagedListView extends StatefulWidget {
  const PagedListView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    required this.onLoadPage,
    this.loadingContainerHeight = 96,
  });

  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final Future Function()? onLoadPage;
  final double loadingContainerHeight;

  @override
  State<PagedListView> createState() => _PagedListViewState();
}

class _PagedListViewState extends State<PagedListView> {
  late final ScrollController _controller;

  var _isLoading = false;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    if (widget.onLoadPage != null) {
      _controller.addListener(_handleScroll);
    }
  }

  @override
  void didUpdateWidget(covariant PagedListView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.onLoadPage != oldWidget.onLoadPage) {
      if (widget.onLoadPage == null) {
        _controller.removeListener(_handleScroll);
      } else {
        _controller.addListener(_handleScroll);
      }
    }
  }

  void _handleScroll() async {
    final offset = _controller.offset;
    final maxScrollExtent = _controller.position.maxScrollExtent;

    if (offset >= maxScrollExtent - widget.loadingContainerHeight &&
        !_isLoading) {
      _isLoading = true;
      await widget.onLoadPage!();
      _isLoading = false;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hasLoadingContainer = widget.onLoadPage != null;

    return ListView.separated(
      controller: _controller,
      itemCount: widget.itemCount + (hasLoadingContainer ? 1 : 0),
      separatorBuilder: (_, __) => const Divider(),
      itemBuilder: (context, index) {
        if (hasLoadingContainer && index == widget.itemCount) {
          return SizedBox(
            height: widget.loadingContainerHeight,
            child: const Center(
              child: SizedBox.square(
                dimension: 16,
                child: CircularProgressIndicator(
                  strokeWidth: 2.5,
                ),
              ),
            ),
          );
        }

        return widget.itemBuilder(context, index);
      },
    );
  }
}
