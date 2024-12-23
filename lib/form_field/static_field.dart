import 'package:flutter/material.dart';
import '../themes/constants.dart';

class WuiStaticField extends StatelessWidget {

  final Widget? label;
  final Widget? inputSuffix;
  final Widget? inputPrefix;
  final Widget? leading;
  final Widget? trailing;
  final Widget? value;
  final void Function()? onTap;

  const WuiStaticField({ 
    super.key ,
    this.label,
    this.inputSuffix,
    this.inputPrefix,
    this.leading,
    this.trailing,
    this.value,
    this.onTap
  });

  get hasContent {
    return value != null;
  }

  @override
  Widget build(BuildContext context) {
    return FocusScope(
      child: Focus(
        child: Builder(
          builder: (BuildContext context) {
            FocusNode focusNode = Focus.of(context);
            bool hasFocus = focusNode.hasFocus;

            return Container(
              padding: const EdgeInsets.only(bottom: 16),
              child: GestureDetector(
                onTap: () {
                  if(!hasFocus) focusNode.requestFocus();
                  if(onTap != null) onTap!();
                },
                child: Container(
                  child: Stack(
                    children: [
                      // main container
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...(leading != null ? [Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: leading!
                          )] : []),
                    
                          Expanded(
                            child: Stack(
                              children: [
                                // label
                                AnimatedPositioned(
                                  top: hasContent ? 4 : 20,
                                  duration: const Duration(milliseconds: 200),
                                  child: AnimatedDefaultTextStyle(
                                    duration: const Duration(milliseconds: 200),
                                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                      fontSize: hasContent ? 12 : 16,
                                      color: hasFocus ? Theme.of(context).primaryColor : Theme.of(context).textTheme.bodyMedium!.color
                                    ),
                                    child: label ?? const Text("")
                                  )
                                ),
                    
                                // editable text
                                Container(
                                  padding: const EdgeInsets.only(top: 8, bottom: 0),
                                  width: double.infinity,
                                  height: 56,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ...(inputPrefix != null ? [AnimatedOpacity(
                                        duration: const Duration(milliseconds: 200),
                                        opacity: hasFocus || hasContent ? 1 : 0,
                                        child: Padding(
                                          padding: const EdgeInsets.only(right: 8),
                                          child: DefaultTextStyle(
                                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                              fontSize: 16,
                                              height: 1.125
                                            ),
                                            child: inputPrefix!
                                          )
                                        ),
                                      )] : []),
                    
                                      Expanded(
                                        child: Opacity(
                                          opacity: (hasContent || hasFocus ? 1 : 0),
                                          child: DefaultTextStyle(
                                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                              fontSize: 16,
                                              height: 1.125,
                                              color: Colors.black87
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 8),
                                              child: value ?? const Text("")
                                            ),
                                          ),
                                        ),
                                      ),
                    
                                      ...(inputSuffix != null ? [AnimatedOpacity(
                                        duration: const Duration(milliseconds: 200),
                                        opacity: hasFocus || hasContent ? 1 : 0,
                                        child: Padding(
                                          padding: const EdgeInsets.only(right: 8),
                                          child: DefaultTextStyle(
                                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                              fontSize: 16,
                                              height: 1.125
                                            ),
                                            child: inputSuffix!
                                          )
                                        ),
                                      )] : []),
                                    ],
                                  ),
                                )],
                            ),
                          ),
                    
                          ...(trailing != null ? [Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: trailing!
                          )] : []),
                        ],
                      ),
                    
                      // bottom border
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: hasFocus ? 2 : 1,
                                style: BorderStyle.solid,
                                color: hasFocus ? Theme.of(context).primaryColor : wuiDefaultBorderColor
                              )
                            )
                          ),
                        )
                      )
                    ],
                  ),
                ),
              )
            );
          } 
        ),
      ),
    );
  }
}