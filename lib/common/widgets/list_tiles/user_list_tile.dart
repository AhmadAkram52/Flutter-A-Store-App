import 'package:a_store/common/widgets/images/circular_image.dart';
import 'package:a_store/utils/constants/colors.dart';
import 'package:a_store/utils/constants/image_strings.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AUserListTile extends StatelessWidget {
  const AUserListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const ACircularImage(image: AImages.user),
      title: Text(
        ATexts.homeAppbarSubTitle,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: AColors.white),
      ),
      subtitle: Text(
        'Ahmadg03025249091@gmail.com',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: AColors.white),
      ),
      trailing: IconButton(
        icon: const Icon(
          Iconsax.edit,
          color: AColors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
