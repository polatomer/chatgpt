import 'package:chat_gpt/product/constants/color_constant.dart';
import 'package:chat_gpt/product/constants/string_constont.dart';
import 'package:chat_gpt/product/extension/image_extension.dart';
import 'package:chat_gpt/product/widget/my_seperator.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

/// Application Payment View
class SubscriptionView extends StatelessWidget {
  /// Payment View Constructor
  const SubscriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    const toolBarHeight = 80.0;
    const iconHeight = 20.0;
    return Scaffold(
      appBar: _appBar(toolBarHeight, context),
      body: const _Body(iconHeight: iconHeight),
    );
  }

  AppBar _appBar(double toolBarHeight, BuildContext context) {
    return AppBar(
      toolbarHeight: toolBarHeight,
      leading: const _LeadingButton(),
      title: const _AppBarTitle(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.iconHeight,
  });

  final double iconHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.horizontalNormal,
      child: Column(
        children: [
          const _FirstTitle(),
          const _SecondTitle(),
          const _Price(),
          const _SubsciptionArticle(),
          const _SubscriptonSubtitle(),
          const _SubtotalPrice(),
          const _Seperator(),
          _TaxPrice(iconHeight: iconHeight),
          const _Seperator(),
          const _TotalPrice(),
          const Spacer(),
          const _PayButton(),
        ],
      ),
    );
  }
}

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle();

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstant.appBarTitle,
      style: context.general.textTheme.headlineSmall,
    );
  }
}

class _LeadingButton extends StatelessWidget {
  const _LeadingButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.onlyLeftLow,
      child: FloatingActionButton(
        child: const Icon(
          Icons.arrow_circle_left,
        ),
        onPressed: () {},
      ),
    );
  }
}

class _PayButton extends StatelessWidget {
  const _PayButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.onlyBottomHigh,
      child: ElevatedButton(
        onPressed: () {},
        child: Center(
          child: Padding(
            padding: context.padding.verticalNormal,
            child: Text(
              StringConstant.payButton,
              style: context.general.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TotalPrice extends StatelessWidget {
  const _TotalPrice();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          StringConstant.totalString,
          style: context.general.textTheme.bodyLarge,
        ),
        Text(
          StringConstant.totalPrice,
          style: context.general.textTheme.bodyLarge?.copyWith(
            color: ColorConstant.hollyGreen,
          ),
        ),
      ],
    );
  }
}

class _TaxPrice extends StatelessWidget {
  const _TaxPrice({
    required this.iconHeight,
  });

  final double iconHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              StringConstant.taxString,
              style: context.general.textTheme.bodyLarge,
            ),
            Padding(
              padding: context.padding.onlyLeftLow,
              child: SizedBox(
                height: iconHeight,
                child: const PngImage(name: StringConstant.exclamationIcon),
              ),
            ),
          ],
        ),
        Text(
          StringConstant.taxPrice,
          style: context.general.textTheme.bodyLarge,
        ),
      ],
    );
  }
}

class _Seperator extends StatelessWidget {
  const _Seperator();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.verticalNormal,
      child: const MySeparator(
        color: ColorConstant.darkGreySperator,
      ),
    );
  }
}

class _SubtotalPrice extends StatelessWidget {
  const _SubtotalPrice();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.onlyTopNormal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            StringConstant.subtotalString,
            style: context.general.textTheme.bodyLarge,
          ),
          Text(
            StringConstant.subtotalPrice,
            style: context.general.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}

class _SubscriptonSubtitle extends StatelessWidget {
  const _SubscriptonSubtitle();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          StringConstant.subtitleString,
          style: context.general.textTheme.titleSmall,
        ),
      ],
    );
  }
}

class _SubsciptionArticle extends StatelessWidget {
  const _SubsciptionArticle();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.onlyTopMedium,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            StringConstant.secondSubscriptionTitle,
            style: context.general.textTheme.bodyLarge,
          ),
          Text(
            StringConstant.subtotalPrice,
            style: context.general.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}

class _Price extends StatelessWidget {
  const _Price();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.onlyTopNormal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            StringConstant.subtotalPrice,
            style: context.general.textTheme.displayLarge,
          ),
          Text(
            StringConstant.paymentFrequency,
            style: context.general.textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}

class _SecondTitle extends StatelessWidget {
  const _SecondTitle();

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstant.secondSubscriptionTitle,
      style: context.general.textTheme.headlineSmall,
    );
  }
}

class _FirstTitle extends StatelessWidget {
  const _FirstTitle();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padding.onlyTopMedium,
      child: Text(
        StringConstant.firstSubscriptionTitle,
        style: context.general.textTheme.headlineSmall,
      ),
    );
  }
}
