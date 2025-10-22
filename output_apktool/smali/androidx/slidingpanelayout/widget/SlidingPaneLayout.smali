.class public Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.kt"

# interfaces
.implements Landroidx/customview/widget/Openable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$Companion;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LockMode;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SimplePanelSlideListener;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SlideableStateListener;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchBlocker;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlidingPaneLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingPaneLayout.kt\nandroidx/slidingpanelayout/widget/SlidingPaneLayout\n+ 2 Context.kt\nandroidx/core/content/ContextKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 5 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 6 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 7 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 8 SlidingPaneLayout.kt\nandroidx/slidingpanelayout/widget/SlidingPaneLayoutKt\n+ 9 SlidingPaneLayout.kt\nandroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams\n*L\n1#1,3152:1\n3142#1,6:3160\n3142#1,6:3166\n3142#1,6:3187\n3142#1,6:3197\n3142#1,6:3214\n3142#1,6:3225\n3142#1,6:3233\n3142#1,6:3239\n3142#1,6:3245\n3142#1,6:3251\n3142#1,6:3257\n55#2,6:3153\n1#3:3159\n54#4,4:3172\n54#4,4:3176\n61#4,2:3185\n64#4:3194\n61#4,2:3195\n64#4:3211\n61#4,2:3212\n64#4:3222\n61#4,2:3223\n64#4:3232\n60#5:3180\n63#5:3184\n50#6:3181\n55#6:3183\n106#7:3182\n121#8:3193\n121#8,4:3203\n127#8:3220\n1994#9:3207\n1994#9:3208\n1994#9:3209\n1994#9:3210\n1994#9:3221\n1994#9:3231\n*S KotlinDebug\n*F\n+ 1 SlidingPaneLayout.kt\nandroidx/slidingpanelayout/widget/SlidingPaneLayout\n*L\n537#1:3160,6\n538#1:3166,6\n1017#1:3187,6\n1103#1:3197,6\n1212#1:3214,6\n1230#1:3225,6\n1278#1:3233,6\n1577#1:3239,6\n1611#1:3245,6\n1706#1:3251,6\n1878#1:3257,6\n681#1:3153,6\n824#1:3172,4\n850#1:3176,4\n1016#1:3185,2\n1016#1:3194\n1101#1:3195,2\n1101#1:3211\n1204#1:3212,2\n1204#1:3222\n1222#1:3223,2\n1222#1:3232\n959#1:3180\n959#1:3184\n959#1:3181\n959#1:3183\n959#1:3182\n1063#1:3193\n1104#1:3203,4\n1214#1:3220\n1110#1:3207\n1131#1:3208\n1137#1:3209\n1144#1:3210\n1219#1:3221\n1234#1:3231\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0015\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0008\u0016\u0018\u0000 \u0092\u00022\u00020\u00012\u00020\u0002:\u001e\u0084\u0002\u0085\u0002\u0086\u0002\u0087\u0002\u0088\u0002\u0089\u0002\u008a\u0002\u008b\u0002\u008c\u0002\u008d\u0002\u008e\u0002\u008f\u0002\u0090\u0002\u0091\u0002\u0092\u0002B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010`\u001a\u00020a2\u0008\u0010b\u001a\u0004\u0018\u00010\u0015J\u0010\u0010`\u001a\u00020a2\u0008\u0008\u0001\u0010c\u001a\u00020\u0008J\u0010\u0010d\u001a\u00020a2\u0008\u0010e\u001a\u0004\u0018\u00010fJ\u0010\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020rH\u0002J\u0014\u0010t\u001a\u00020r*\u00020r2\u0006\u0010u\u001a\u00020\u0008H\u0002J\u0012\u0010\u0080\u0001\u001a\u00020a2\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u007fJ\u0011\u0010\u0084\u0001\u001a\u00020a2\u0008\u0010\u0082\u0001\u001a\u00030\u0083\u0001J\u001b\u0010\u0085\u0001\u001a\u0002002\u0007\u0010\u0086\u0001\u001a\u0002002\u0007\u0010\u0087\u0001\u001a\u00020\u0008H\u0002J\u0015\u0010\u0088\u0001\u001a\u00020a2\n\u0010\u0081\u0001\u001a\u0005\u0018\u00010\u0089\u0001H\u0017J\u0013\u0010\u008a\u0001\u001a\u00020a2\u0008\u0010\u0081\u0001\u001a\u00030\u008b\u0001H\u0016J\u0013\u0010\u008c\u0001\u001a\u00020a2\u0008\u0010\u0081\u0001\u001a\u00030\u008b\u0001H\u0016J\u0013\u0010\u008d\u0001\u001a\u00020a2\u0008\u0010\u0081\u0001\u001a\u00030\u0089\u0001H\u0016J\u0013\u0010\u008e\u0001\u001a\u00020a2\u0008\u0010\u0081\u0001\u001a\u00030\u0089\u0001H\u0016J\u0012\u0010\u008f\u0001\u001a\u00020a2\u0007\u0010\u0090\u0001\u001a\u00020\u001cH\u0002J\u0014\u0010\u0091\u0001\u001a\u00020a2\t\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u001cH\u0002J\t\u0010\u0092\u0001\u001a\u00020aH\u0002J\u0012\u0010\u0093\u0001\u001a\u00020a2\u0007\u0010\u0087\u0001\u001a\u00020\u0008H\u0002J\u0012\u0010\u0094\u0001\u001a\u00020a2\u0007\u0010\u0087\u0001\u001a\u00020\u0008H\u0002J\t\u0010\u0095\u0001\u001a\u00020aH\u0014J\u001b\u0010\u0096\u0001\u001a\u00020a2\u0007\u0010\u0097\u0001\u001a\u00020\u001e2\u0007\u0010\u0098\u0001\u001a\u00020\u001eH\u0017J\u0012\u0010\u0099\u0001\u001a\u00020\u00182\u0007\u0010\u009a\u0001\u001a\u00020\u0015H\u0014J\t\u0010\u009b\u0001\u001a\u00020aH\u0016J\'\u0010\u009c\u0001\u001a\u00020a2\u0007\u0010\u009d\u0001\u001a\u00020\u001c2\u0007\u0010\u009e\u0001\u001a\u00020\u00082\n\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u00a0\u0001H\u0016J\u0012\u0010\u00a1\u0001\u001a\u00020a2\u0007\u0010\u00a2\u0001\u001a\u00020\u001cH\u0016J\t\u0010\u00a3\u0001\u001a\u00020aH\u0014J\u0012\u0010\u00a4\u0001\u001a\u00020a2\u0007\u0010\u00a5\u0001\u001a\u00020\u0008H\u0014J\u0010\u0010\u00a6\u0001\u001a\u00020aH\u0082@\u00a2\u0006\u0003\u0010\u00a7\u0001J\t\u0010\u00a8\u0001\u001a\u00020aH\u0014J\u0012\u0010\u00a9\u0001\u001a\u00020\u00082\u0007\u0010\u009d\u0001\u001a\u00020\u001cH\u0002J\u001b\u0010\u00aa\u0001\u001a\u00020a2\u0007\u0010\u00ab\u0001\u001a\u00020\u00082\u0007\u0010\u00ac\u0001\u001a\u00020\u0008H\u0014J\u0011\u0010\u00ad\u0001\u001a\u00020\u00182\u0006\u0010:\u001a\u000209H\u0002J6\u0010\u00ae\u0001\u001a\u00020a2\u0007\u0010\u00af\u0001\u001a\u00020\u00182\u0007\u0010\u00b0\u0001\u001a\u00020\u00082\u0007\u0010\u00b1\u0001\u001a\u00020\u00082\u0007\u0010\u00b2\u0001\u001a\u00020\u00082\u0007\u0010\u00b3\u0001\u001a\u00020\u0008H\u0014J-\u0010\u00b4\u0001\u001a\u00020a2\u0007\u0010\u00b5\u0001\u001a\u00020\u00082\u0007\u0010\u00b6\u0001\u001a\u00020\u00082\u0007\u0010\u00b7\u0001\u001a\u00020\u00082\u0007\u0010\u00b8\u0001\u001a\u00020\u0008H\u0014J\u001f\u0010\u00b9\u0001\u001a\u00020a2\t\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u001c2\t\u0010\u00ba\u0001\u001a\u0004\u0018\u00010\u001cH\u0016J\u000b\u0010\u00bb\u0001\u001a\u0004\u0018\u00010)H\u0002J\u0012\u0010\u00bc\u0001\u001a\u00020\u00182\u0007\u0010\u00bd\u0001\u001a\u00020\'H\u0016J\u0012\u0010\u00be\u0001\u001a\u00020\u00182\u0007\u0010\u00bd\u0001\u001a\u00020\'H\u0016J\u0014\u0010\u00bf\u0001\u001a\u00020\u00182\t\u0010\u00c0\u0001\u001a\u0004\u0018\u00010\'H\u0014J \u0010\u00c1\u0001\u001a\u0005\u0018\u00010\u00c2\u00012\t\u0010\u00c0\u0001\u001a\u0004\u0018\u00010\'2\u0007\u0010\u00c3\u0001\u001a\u00020\u0008H\u0016J\u0012\u0010\u00c4\u0001\u001a\u00020\u00182\u0007\u0010\u00c5\u0001\u001a\u00020\u0008H\u0002J\u0012\u0010\u00c6\u0001\u001a\u00020\u00182\u0007\u0010\u00c5\u0001\u001a\u00020\u0008H\u0002J\u001a\u0010\u00c6\u0001\u001a\u00020\u00182\u0007\u0010\u00c7\u0001\u001a\u00020\u00082\u0008\u0010\u00c8\u0001\u001a\u00030\u00c9\u0001J\u001a\u0010\u00c4\u0001\u001a\u00020\u00182\u0007\u0010\u00c7\u0001\u001a\u00020\u00082\u0008\u0010\u00c8\u0001\u001a\u00030\u00c9\u0001J\t\u0010\u00ca\u0001\u001a\u00020aH\u0017J\t\u0010\u00cb\u0001\u001a\u00020aH\u0016J\t\u0010\u00c6\u0001\u001a\u00020\u0018H\u0016J\t\u0010\u00cc\u0001\u001a\u00020\u0018H\u0017J\t\u0010\u00cd\u0001\u001a\u00020aH\u0017J\t\u0010\u00ce\u0001\u001a\u00020aH\u0016J\t\u0010\u00c4\u0001\u001a\u00020\u0018H\u0016J\t\u0010\u00cf\u0001\u001a\u00020\u0018H\u0016J\u0012\u0010\u00d0\u0001\u001a\u00020a2\u0007\u0010\u00d1\u0001\u001a\u00020\u0008H\u0002J&\u0010\u00d2\u0001\u001a\u00020\u00182\u0008\u0010\u00d3\u0001\u001a\u00030\u00d4\u00012\u0007\u0010\u009d\u0001\u001a\u00020\u001c2\u0008\u0010\u00d5\u0001\u001a\u00030\u00d6\u0001H\u0014J\u001b\u0010\u00d7\u0001\u001a\u00020\u00182\u0007\u0010\u00d8\u0001\u001a\u00020\u001e2\u0007\u0010\u00d9\u0001\u001a\u00020\u0008H\u0002J%\u0010\u00d7\u0001\u001a\u00020\u00182\u0007\u0010\u00d8\u0001\u001a\u00020\u001e2\u0007\u0010\u00c7\u0001\u001a\u00020\u00082\u0008\u0010\u00c8\u0001\u001a\u00030\u00c9\u0001H\u0002J\u001a\u0010\u00da\u0001\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001c2\u0007\u0010\u00d8\u0001\u001a\u00020\u001eH\u0002J\t\u0010\u00db\u0001\u001a\u00020aH\u0016J\u0013\u0010\u00dc\u0001\u001a\u00020a2\u0008\u0010b\u001a\u0004\u0018\u00010\u0015H\u0017J\u0013\u0010\u00dd\u0001\u001a\u00020a2\u0008\u0010b\u001a\u0004\u0018\u00010\u0015H\u0016J\u0013\u0010\u00de\u0001\u001a\u00020a2\u0008\u0010b\u001a\u0004\u0018\u00010\u0015H\u0016J\u0013\u0010\u00df\u0001\u001a\u00020a2\u0008\u0008\u0001\u0010c\u001a\u00020\u0008H\u0017J\u0013\u0010\u00e0\u0001\u001a\u00020a2\u0008\u0008\u0001\u0010c\u001a\u00020\u0008H\u0016J\u0013\u0010\u00e1\u0001\u001a\u00020a2\u0008\u0008\u0001\u0010c\u001a\u00020\u0008H\u0016J\u0013\u0010\u00e2\u0001\u001a\u00020a2\u0008\u0010\u00e3\u0001\u001a\u00030\u00d4\u0001H\u0016J\u0012\u0010\u00e4\u0001\u001a\u00020a2\u0007\u0010\u00d8\u0001\u001a\u00020\u001eH\u0002J6\u0010\u00e5\u0001\u001a\u00020\u00182\u0007\u0010\u00e6\u0001\u001a\u00020\u001c2\u0007\u0010\u00e7\u0001\u001a\u00020\u00182\u0007\u0010\u00e8\u0001\u001a\u00020\u00082\u0007\u0010\u0097\u0001\u001a\u00020\u00082\u0007\u0010\u0098\u0001\u001a\u00020\u0008H\u0014J\u0014\u0010\u00e9\u0001\u001a\u00020\u00182\t\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u001cH\u0002J\n\u0010\u00ea\u0001\u001a\u00030\u00a0\u0001H\u0014J\u0016\u0010\u00eb\u0001\u001a\u00030\u00a0\u00012\n\u0010\u00ec\u0001\u001a\u0005\u0018\u00010\u00a0\u0001H\u0014J\u0015\u0010\u00ed\u0001\u001a\u00020\u00182\n\u0010\u00ec\u0001\u001a\u0005\u0018\u00010\u00a0\u0001H\u0014J\u0014\u0010\u00eb\u0001\u001a\u00030\u00a0\u00012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\n\u0010\u00ee\u0001\u001a\u00030\u00ef\u0001H\u0014J\u0015\u0010\u00f0\u0001\u001a\u00020a2\n\u0010\u00f1\u0001\u001a\u0005\u0018\u00010\u00ef\u0001H\u0014J\u0015\u0010\u00f2\u0001\u001a\u00020a2\n\u0010\u00f3\u0001\u001a\u0005\u0018\u00010\u00f4\u0001H\u0016J\u0014\u0010\u00f5\u0001\u001a\u0004\u0018\u00010\u001c2\u0007\u0010\u00f6\u0001\u001a\u00020\u0008H\u0007J\u001d\u0010\u00f7\u0001\u001a\u0004\u0018\u00010\u001c2\u0007\u0010\u00f6\u0001\u001a\u00020\u00082\u0007\u0010\u00f8\u0001\u001a\u00020\u001cH\u0002J+\u0010\u00f9\u0001\u001a\u00020a2\u0007\u0010\u00fa\u0001\u001a\u00020\u00082\u000c\u0008\u0002\u0010\u00fb\u0001\u001a\u0005\u0018\u00010\u00fc\u00012\t\u0008\u0002\u0010\u00fd\u0001\u001a\u00020\u0008H\u0002J\t\u0010\u00fe\u0001\u001a\u00020aH\u0002J\n\u0010\u00ff\u0001\u001a\u00030\u00fc\u0001H\u0002R$\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00088W@WX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00088W@WX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\"\u001a\u00060#R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010$\u001a\u00060%R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010&\u001a\n (*\u0004\u0018\u00010\'0\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010*\u001a\u0004\u0018\u00010)2\u0008\u0010\u000b\u001a\u0004\u0018\u00010)@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008+\u0010,R\u000e\u0010-\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u000200X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u000200X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u000203X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u00104\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00085\u00106\u001a\u0004\u00087\u0010\u000e\"\u0004\u00088\u0010\u0010R\"\u0010:\u001a\u0004\u0018\u0001092\u0008\u0010\u000b\u001a\u0004\u0018\u000109@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008;\u0010<R\u0010\u0010=\u001a\u0004\u0018\u00010>X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010@\u001a\u00020\u00082\u0008\u0008\u0001\u0010?\u001a\u00020\u00088W@VX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010\u000e\"\u0004\u0008B\u0010\u0010R$\u0010C\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\u0018@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010\u0019\"\u0004\u0008D\u0010ER\u0016\u0010F\u001a\u0004\u0018\u00010G8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008H\u0010IR\u0014\u0010J\u001a\u00020\u00188BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010\u0019R\u000e\u0010K\u001a\u00020LX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010M\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u000200X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010O\u001a\u000200X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010P\u001a\u0008\u0012\u0004\u0012\u0002000QX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010R\u001a\u00020SX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010T\u001a\u0008\u0018\u00010UR\u00020\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010V\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010W\u001a\u00020\u00188\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008X\u00106\u001a\u0004\u0008Y\u0010\u0019\"\u0004\u0008Z\u0010ER\u0010\u0010[\u001a\u0004\u0018\u00010\\X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010]\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010^\u001a\u00020_X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010g\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008g\u0010\u0019R$\u0010h\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008i\u0010\u000e\"\u0004\u0008j\u0010\u0010R\u0011\u0010k\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010\u000eR\u0014\u0010m\u001a\u00020\u00188BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008n\u0010\u0019R\u0014\u0010o\u001a\u00020\u00188BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008p\u0010\u0019R$\u0010v\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\u0018@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008v\u0010\u0019\"\u0004\u0008w\u0010ER\u0011\u0010x\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008x\u0010\u0019R$\u0010y\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\u0018@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008y\u0010\u0019\"\u0004\u0008z\u0010ER&\u0010{\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00088G@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008|\u0010\u000e\"\u0004\u0008}\u0010\u0010R\u0010\u0010~\u001a\u0004\u0018\u00010\u007fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0082\u0001\u001a\u00030\u0083\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0080\u0002\u001a\u00030\u0081\u0002*\u00020\u001c8\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u0082\u0002\u0010\u0083\u0002\u00a8\u0006\u0093\u0002"
    }
    d2 = {
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout;",
        "Landroid/view/ViewGroup;",
        "Landroidx/customview/widget/Openable;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyle",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "value",
        "sliderFadeColor",
        "getSliderFadeColor",
        "()I",
        "setSliderFadeColor",
        "(I)V",
        "coveredFadeColor",
        "getCoveredFadeColor",
        "setCoveredFadeColor",
        "shadowDrawableLeft",
        "Landroid/graphics/drawable/Drawable;",
        "shadowDrawableRight",
        "isSlideable",
        "",
        "()Z",
        "_isSlideable",
        "slideableView",
        "Landroid/view/View;",
        "currentSlideOffset",
        "",
        "currentParallaxOffset",
        "slideRange",
        "touchTargetMin",
        "overlappingPaneHandler",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;",
        "draggableDividerHandler",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;",
        "cancelEvent",
        "Landroid/view/MotionEvent;",
        "kotlin.jvm.PlatformType",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;",
        "activeTouchHandler",
        "setActiveTouchHandler",
        "(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;)V",
        "preservedOpenState",
        "awaitingFirstLayout",
        "tmpRect",
        "Landroid/graphics/Rect;",
        "tmpRect2",
        "foldBoundsCalculator",
        "Landroidx/slidingpanelayout/widget/FoldBoundsCalculator;",
        "lockMode",
        "getLockMode$annotations",
        "()V",
        "getLockMode",
        "setLockMode",
        "Landroidx/window/layout/FoldingFeature;",
        "foldingFeature",
        "setFoldingFeature",
        "(Landroidx/window/layout/FoldingFeature;)V",
        "whileAttachedToVisibleWindowJob",
        "Lkotlinx/coroutines/Job;",
        "parallaxBy",
        "parallaxDistance",
        "getParallaxDistance",
        "setParallaxDistance",
        "isOverlappingEnabled",
        "setOverlappingEnabled",
        "(Z)V",
        "systemGestureInsets",
        "Landroidx/core/graphics/Insets;",
        "getSystemGestureInsets",
        "()Landroidx/core/graphics/Insets;",
        "isLayoutRtl",
        "windowInfoTracker",
        "Landroidx/window/layout/WindowInfoTracker;",
        "userResizingDividerDrawable",
        "computedDividerExclusionRect",
        "dividerGestureExclusionRect",
        "gestureExclusionRectsList",
        "",
        "accessibilityManager",
        "Landroid/view/accessibility/AccessibilityManager;",
        "accessibilityProvider",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;",
        "isDividerHovered",
        "isAccessibilityEnabledForTesting",
        "isAccessibilityEnabledForTesting$slidingpanelayout_release$annotations",
        "isAccessibilityEnabledForTesting$slidingpanelayout_release",
        "setAccessibilityEnabledForTesting$slidingpanelayout_release",
        "getAccessibilityViewIdMethod",
        "Ljava/lang/reflect/Method;",
        "pendingA11yDividerPositionUpdates",
        "a11yDividerPositionUpdateRunnable",
        "Ljava/lang/Runnable;",
        "setUserResizingDividerDrawable",
        "",
        "drawable",
        "resId",
        "setUserResizingDividerTint",
        "colorStateList",
        "Landroid/content/res/ColorStateList;",
        "isDividerDragging",
        "splitDividerPosition",
        "getSplitDividerPosition",
        "setSplitDividerPosition",
        "visualDividerPosition",
        "getVisualDividerPosition",
        "dividerAtLeftEdge",
        "getDividerAtLeftEdge",
        "dividerAtRightEdge",
        "getDividerAtRightEdge",
        "createUserResizingDividerDrawableState",
        "",
        "viewState",
        "remove",
        "element",
        "isUserResizingEnabled",
        "setUserResizingEnabled",
        "isUserResizable",
        "isChildClippingToResizeDividerEnabled",
        "setChildClippingToResizeDividerEnabled",
        "paneSpacing",
        "getPaneSpacing",
        "setPaneSpacing",
        "onUserResizingDividerClickListener",
        "Landroid/view/View$OnClickListener;",
        "setOnUserResizingDividerClickListener",
        "listener",
        "userResizeBehavior",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;",
        "setUserResizeBehavior",
        "computeDividerTargetRect",
        "outRect",
        "dividerPositionX",
        "setPanelSlideListener",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;",
        "addSlideableStateListener",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SlideableStateListener;",
        "removeSlideableStateListener",
        "addPanelSlideListener",
        "removePanelSlideListener",
        "dispatchOnPanelSlide",
        "panel",
        "updateObscuredViewsVisibility",
        "setAllChildrenVisible",
        "updateDividerDrawableBounds",
        "updateGestureExclusion",
        "drawableStateChanged",
        "drawableHotspotChanged",
        "x",
        "y",
        "verifyDrawable",
        "who",
        "jumpDrawablesToCurrentState",
        "addView",
        "child",
        "index",
        "params",
        "Landroid/view/ViewGroup$LayoutParams;",
        "removeView",
        "view",
        "onAttachedToWindow",
        "onWindowVisibilityChanged",
        "visibility",
        "whileAttachedToVisibleWindow",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onDetachedFromWindow",
        "getMinimumChildWidth",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "remeasureForFoldingFeature",
        "onLayout",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "requestChildFocus",
        "focused",
        "selectActiveTouchHandler",
        "onInterceptTouchEvent",
        "ev",
        "onTouchEvent",
        "dispatchHoverEvent",
        "event",
        "onResolvePointerIcon",
        "Landroid/view/PointerIcon;",
        "pointerIndex",
        "closePane",
        "initialVelocity",
        "openPane",
        "duration",
        "interpolator",
        "Landroid/view/animation/Interpolator;",
        "smoothSlideOpen",
        "open",
        "canSlide",
        "smoothSlideClosed",
        "close",
        "isOpen",
        "onPanelDragged",
        "newLeft",
        "drawChild",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawingTime",
        "",
        "smoothSlideTo",
        "slideOffset",
        "velocity",
        "computeScrollOffset",
        "computeScroll",
        "setShadowDrawable",
        "setShadowDrawableLeft",
        "setShadowDrawableRight",
        "setShadowResource",
        "setShadowResourceLeft",
        "setShadowResourceRight",
        "draw",
        "c",
        "parallaxOtherViews",
        "canScroll",
        "v",
        "checkV",
        "dx",
        "isDimmed",
        "generateDefaultLayoutParams",
        "generateLayoutParams",
        "p",
        "checkLayoutParams",
        "onSaveInstanceState",
        "Landroid/os/Parcelable;",
        "onRestoreInstanceState",
        "state",
        "onProvideVirtualStructure",
        "structure",
        "Landroid/view/ViewStructure;",
        "findViewByAccessibilityIdTraversal",
        "accessibilityId",
        "findViewByAccessibilityIdRootedAtCurrentView",
        "currentView",
        "sendAccessibilityEventForDivider",
        "eventType",
        "contentDescription",
        "",
        "contentChangeType",
        "sendDividerPositionUpdateA11yEvents",
        "getDividerContentDescription",
        "spLayoutParams",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;",
        "getSpLayoutParams",
        "(Landroid/view/View;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;",
        "LockMode",
        "TouchBlocker",
        "LayoutParams",
        "SavedState",
        "AccessibilityDelegate",
        "AccessibilityProvider",
        "SlideableStateListener",
        "PanelSlideListener",
        "SimplePanelSlideListener",
        "TouchHandler",
        "OverlappingPaneHandler",
        "DraggableDividerHandler",
        "AbsDraggableDividerHandler",
        "UserResizeBehavior",
        "Companion",
        "slidingpanelayout_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$Companion;

.field public static final LOCK_MODE_LOCKED:I = 0x3

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x2

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x1

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field public static final SPLIT_DIVIDER_ACCESSIBILITY_RESIZE_LEFT:I = 0x0

.field public static final SPLIT_DIVIDER_ACCESSIBILITY_RESIZE_RIGHT:I = 0x1

.field public static final SPLIT_DIVIDER_POSITION_AUTO:I = -0x1

.field public static final USER_RESIZE_RELAYOUT_WHEN_COMPLETE:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

.field public static final USER_RESIZE_RELAYOUT_WHEN_MOVED:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;


# instance fields
.field private _isSlideable:Z

.field private final a11yDividerPositionUpdateRunnable:Ljava/lang/Runnable;

.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private accessibilityProvider:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;

.field private activeTouchHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;

.field private awaitingFirstLayout:Z

.field private final cancelEvent:Landroid/view/MotionEvent;

.field private final computedDividerExclusionRect:Landroid/graphics/Rect;

.field private currentParallaxOffset:F

.field private currentSlideOffset:F

.field private final dividerGestureExclusionRect:Landroid/graphics/Rect;

.field private final draggableDividerHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;

.field private final foldBoundsCalculator:Landroidx/slidingpanelayout/widget/FoldBoundsCalculator;

.field private foldingFeature:Landroidx/window/layout/FoldingFeature;

.field private final gestureExclusionRectsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private getAccessibilityViewIdMethod:Ljava/lang/reflect/Method;

.field private isAccessibilityEnabledForTesting:Z

.field private isChildClippingToResizeDividerEnabled:Z

.field private isDividerHovered:Z

.field private isOverlappingEnabled:Z

.field private isUserResizingEnabled:Z

.field private lockMode:I

.field private onUserResizingDividerClickListener:Landroid/view/View$OnClickListener;

.field private final overlappingPaneHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;

.field private paneSpacing:I

.field private parallaxDistance:I

.field private pendingA11yDividerPositionUpdates:Z

.field private preservedOpenState:Z

.field private shadowDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private shadowDrawableRight:Landroid/graphics/drawable/Drawable;

.field private slideRange:I

.field private slideableView:Landroid/view/View;

.field private splitDividerPosition:I

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRect2:Landroid/graphics/Rect;

.field private final touchTargetMin:I

.field private userResizeBehavior:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

.field private userResizingDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private whileAttachedToVisibleWindowJob:Lkotlinx/coroutines/Job;

.field private final windowInfoTracker:Landroidx/window/layout/WindowInfoTracker;


# direct methods
.method public static synthetic $r8$lambda$QbRUUbKCXAw5eUORPAmIWVNvBP0(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 0

    invoke-static {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a11yDividerPositionUpdateRunnable$lambda$0(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->Companion:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$Companion;

    .line 3070
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$Companion$USER_RESIZE_RELAYOUT_WHEN_COMPLETE$1;

    invoke-direct {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$Companion$USER_RESIZE_RELAYOUT_WHEN_COMPLETE$1;-><init>()V

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

    sput-object v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->USER_RESIZE_RELAYOUT_WHEN_COMPLETE:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

    .line 3109
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$Companion$USER_RESIZE_RELAYOUT_WHEN_MOVED$1;

    invoke-direct {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$Companion$USER_RESIZE_RELAYOUT_WHEN_MOVED$1;-><init>()V

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

    sput-object v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->USER_RESIZE_RELAYOUT_WHEN_MOVED:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    invoke-direct/range {v1 .. v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .local v2, "context":Landroid/content/Context;
    .local v3, "attrs":Landroid/util/AttributeSet;
    invoke-direct/range {v1 .. v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 293
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->currentSlideOffset:F

    .line 304
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/16 v1, 0x30

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->touchTargetMin:I

    .line 306
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;

    invoke-direct {v0, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->overlappingPaneHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;

    .line 307
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;

    invoke-direct {v0, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->draggableDividerHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;

    .line 309
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->cancelEvent:Landroid/view/MotionEvent;

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->awaitingFirstLayout:Z

    .line 325
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->tmpRect:Landroid/graphics/Rect;

    .line 326
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->tmpRect2:Landroid/graphics/Rect;

    .line 327
    new-instance v1, Landroidx/slidingpanelayout/widget/FoldBoundsCalculator;

    invoke-direct {v1}, Landroidx/slidingpanelayout/widget/FoldBoundsCalculator;-><init>()V

    iput-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->foldBoundsCalculator:Landroidx/slidingpanelayout/widget/FoldBoundsCalculator;

    .line 372
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOverlappingEnabled:Z

    .line 397
    sget-object v1, Landroidx/window/layout/WindowInfoTracker;->Companion:Landroidx/window/layout/WindowInfoTracker$Companion;

    invoke-virtual {v1, p1}, Landroidx/window/layout/WindowInfoTracker$Companion;->getOrCreate(Landroid/content/Context;)Landroidx/window/layout/WindowInfoTracker;

    move-result-object v1

    iput-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->windowInfoTracker:Landroidx/window/layout/WindowInfoTracker;

    .line 402
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->computedDividerExclusionRect:Landroid/graphics/Rect;

    .line 403
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dividerGestureExclusionRect:Landroid/graphics/Rect;

    .line 404
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dividerGestureExclusionRect:Landroid/graphics/Rect;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->gestureExclusionRectsList:Ljava/util/List;

    .line 418
    new-instance v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$$ExternalSyntheticLambda0;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    iput-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a11yDividerPositionUpdateRunnable:Ljava/lang/Runnable;

    .line 495
    const/4 v1, -0x1

    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->splitDividerPosition:I

    .line 623
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isChildClippingToResizeDividerEnabled:Z

    .line 657
    sget-object v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->USER_RESIZE_RELAYOUT_WHEN_COMPLETE:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

    iput-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->userResizeBehavior:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

    .line 676
    nop

    .line 677
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setWillNotDraw(Z)V

    .line 678
    move-object v2, p0

    check-cast v2, Landroid/view/View;

    new-instance v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;

    invoke-direct {v3, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    check-cast v3, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 679
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setImportantForAccessibility(I)V

    .line 681
    nop

    .line 683
    sget-object v2, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout:[I

    const-string v3, "SlidingPaneLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    sget v3, Landroidx/slidingpanelayout/R$style;->Widget_SlidingPaneLayout:I

    .line 681
    move-object v4, p1

    .line 3153
    .local v2, "attrs$iv":[I
    .local v3, "defStyleRes$iv":I
    .local v4, "$this$withStyledAttributes$iv":Landroid/content/Context;
    const/4 v5, 0x0

    .local v5, "defStyleAttr$iv":I
    const/4 v6, 0x0

    .line 3157
    .local v6, "$i$f$withStyledAttributes":I
    invoke-virtual {v4, p2, v2, v5, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v8, v7

    .local v8, "$this$_init__u24lambda_u246":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    .line 686
    .local v9, "$i$a$-withStyledAttributes$default-SlidingPaneLayout$1":I
    nop

    .line 687
    sget v10, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout_isOverlappingEnabled:I

    invoke-virtual {v8, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 686
    invoke-virtual {p0, v10}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setOverlappingEnabled(Z)V

    .line 688
    nop

    .line 689
    sget v10, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout_isUserResizingEnabled:I

    invoke-virtual {v8, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 688
    invoke-virtual {p0, v10}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setUserResizingEnabled(Z)V

    .line 690
    nop

    .line 691
    sget v10, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout_userResizingDividerDrawable:I

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 690
    iput-object v10, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->userResizingDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 693
    sget v10, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout_userResizingDividerTint:I

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    if-eqz v10, :cond_0

    .local v10, "$this$lambda_u246_u24lambda_u245":Landroid/content/res/ColorStateList;
    const/4 v11, 0x0

    .line 694
    .local v11, "$i$a$-apply-SlidingPaneLayout$1$1":I
    invoke-virtual {p0, v10}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setUserResizingDividerTint(Landroid/content/res/ColorStateList;)V

    .line 695
    nop

    .line 693
    .end local v10    # "$this$lambda_u246_u24lambda_u245":Landroid/content/res/ColorStateList;
    .end local v11    # "$i$a$-apply-SlidingPaneLayout$1$1":I
    nop

    .line 697
    :cond_0
    nop

    .line 698
    nop

    .line 699
    sget v10, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout_isChildClippingToResizeDividerEnabled:I

    .line 700
    nop

    .line 698
    invoke-virtual {v8, v10, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 697
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setChildClippingToResizeDividerEnabled(Z)V

    .line 703
    nop

    .line 706
    sget v0, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout_userResizeBehavior:I

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 705
    nop

    .line 704
    .local v0, "behaviorConstant":I
    packed-switch v0, :pswitch_data_0

    .line 711
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 712
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " is not a valid userResizeBehavior value"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 711
    :pswitch_0
    sget-object v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->USER_RESIZE_RELAYOUT_WHEN_MOVED:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

    goto :goto_0

    .line 709
    :pswitch_1
    sget-object v10, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->USER_RESIZE_RELAYOUT_WHEN_COMPLETE:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

    .line 703
    .end local v0    # "behaviorConstant":I
    :goto_0
    iput-object v10, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->userResizeBehavior:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

    .line 715
    sget v0, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout_paneSpacing:I

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setPaneSpacing(I)V

    .line 716
    nop

    .line 3157
    .end local v8    # "$this$_init__u24lambda_u246":Landroid/content/res/TypedArray;
    .end local v9    # "$i$a$-withStyledAttributes$default-SlidingPaneLayout$1":I
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3158
    nop

    .line 717
    .end local v2    # "attrs$iv":[I
    .end local v3    # "defStyleRes$iv":I
    .end local v4    # "$this$withStyledAttributes$iv":Landroid/content/Context;
    .end local v5    # "defStyleAttr$iv":I
    .end local v6    # "$i$f$withStyledAttributes":I
    nop

    .line 718
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 717
    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 719
    nop

    .line 243
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 243
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 244
    const/4 p2, 0x0

    .line 243
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 244
    const/4 p3, 0x0

    .line 243
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 244
    return-void
.end method

.method private static final a11yDividerPositionUpdateRunnable$lambda$0(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 13
    .param p0, "this$0"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 419
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getDividerAtLeftEdge()Z

    move-result v0

    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getDividerAtRightEdge()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 420
    nop

    .line 421
    nop

    .line 422
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getDividerContentDescription()Ljava/lang/String;

    move-result-object v3

    .line 420
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v2, 0x4000

    const/4 v4, 0x0

    move-object v1, p0

    .end local p0    # "this$0":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .local v1, "this$0":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    invoke-static/range {v1 .. v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sendAccessibilityEventForDivider$default(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;ILjava/lang/String;IILjava/lang/Object;)V

    goto :goto_0

    .line 419
    .end local v1    # "this$0":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .restart local p0    # "this$0":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    :cond_0
    move-object v1, p0

    .line 426
    .end local p0    # "this$0":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .restart local v1    # "this$0":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    :goto_0
    nop

    .line 427
    nop

    .line 426
    nop

    .line 428
    nop

    .line 426
    const/4 v11, 0x2

    const/4 v12, 0x0

    const/16 v8, 0x800

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v7, v1

    .end local v1    # "this$0":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .local v7, "this$0":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    invoke-static/range {v7 .. v12}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sendAccessibilityEventForDivider$default(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;ILjava/lang/String;IILjava/lang/Object;)V

    .line 430
    .end local v7    # "this$0":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .restart local v1    # "this$0":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    const/4 p0, 0x0

    iput-boolean p0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->pendingA11yDividerPositionUpdates:Z

    .line 431
    return-void
.end method

.method public static final synthetic access$closePane(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;I)Z
    .locals 1
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .param p1, "initialVelocity"    # I

    .line 241
    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(I)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$computeDividerTargetRect(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 1
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "dividerPositionX"    # I

    .line 241
    invoke-direct {p0, p1, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->computeDividerTargetRect(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getAccessibilityProvider$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;
    .locals 1
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 241
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->accessibilityProvider:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;

    return-object v0
.end method

.method public static final synthetic access$getCurrentSlideOffset$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)F
    .locals 1
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 241
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->currentSlideOffset:F

    return v0
.end method

.method public static final synthetic access$getDividerAtLeftEdge(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 241
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getDividerAtLeftEdge()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getDividerAtRightEdge(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 241
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getDividerAtRightEdge()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$getDividerContentDescription(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 241
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getDividerContentDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getDraggableDividerHandler$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;
    .locals 1
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 241
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->draggableDividerHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;

    return-object v0
.end method

.method public static final synthetic access$getMinimumChildWidth(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/View;)I
    .locals 1
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .param p1, "child"    # Landroid/view/View;

    .line 241
    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getMinimumChildWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getOnUserResizingDividerClickListener$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 241
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->onUserResizingDividerClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public static final synthetic access$getSlideRange$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)I
    .locals 1
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 241
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->slideRange:I

    return v0
.end method

.method public static final synthetic access$getSlideableView$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroid/view/View;
    .locals 1
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 241
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->slideableView:Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic access$getTmpRect$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 241
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->tmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static final synthetic access$getUserResizeBehavior$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;
    .locals 1
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 241
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->userResizeBehavior:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

    return-object v0
.end method

.method public static final synthetic access$isDimmed(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/View;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .param p1, "child"    # Landroid/view/View;

    .line 241
    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$isLayoutRtl(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 241
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtl()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$onInterceptTouchEvent$s408734394(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .param p1, "p0"    # Landroid/view/MotionEvent;

    .line 241
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$onPanelDragged(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .param p1, "newLeft"    # I

    .line 241
    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->onPanelDragged(I)V

    return-void
.end method

.method public static final synthetic access$onTouchEvent$s408734394(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .param p1, "p0"    # Landroid/view/MotionEvent;

    .line 241
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$setAccessibilityProvider$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;)V
    .locals 0
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .param p1, "<set-?>"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;

    .line 241
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->accessibilityProvider:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityProvider;

    return-void
.end method

.method public static final synthetic access$setAllChildrenVisible(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 0
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 241
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    return-void
.end method

.method public static final synthetic access$setFoldingFeature(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroidx/window/layout/FoldingFeature;)V
    .locals 0
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .param p1, "value"    # Landroidx/window/layout/FoldingFeature;

    .line 241
    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setFoldingFeature(Landroidx/window/layout/FoldingFeature;)V

    return-void
.end method

.method public static final synthetic access$setPreservedOpenState$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .param p1, "<set-?>"    # Z

    .line 241
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->preservedOpenState:Z

    return-void
.end method

.method public static final synthetic access$updateObscuredViewsVisibility(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 0
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .param p1, "panel"    # Landroid/view/View;

    .line 241
    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$whileAttachedToVisibleWindow(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 241
    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->whileAttachedToVisibleWindow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final closePane(I)Z
    .locals 2
    .param p1, "initialVelocity"    # I

    .line 1438
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1439
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->preservedOpenState:Z

    .line 1441
    :cond_0
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->awaitingFirstLayout:Z

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1445
    :cond_1
    return v1

    .line 1442
    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->preservedOpenState:Z

    .line 1443
    const/4 v0, 0x1

    return v0
.end method

.method private final computeDividerTargetRect(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 10
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "dividerPositionX"    # I

    .line 722
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->userResizingDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 723
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 724
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 725
    return-object p1

    .line 728
    :cond_0
    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->touchTargetMin:I

    .line 729
    .local v1, "touchTargetMin":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 730
    .local v2, "dividerWidth":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 731
    .local v3, "dividerHeight":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 732
    .local v4, "width":I
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 733
    .local v5, "height":I
    div-int/lit8 v6, v4, 0x2

    sub-int v6, p2, v6

    .line 734
    .local v6, "left":I
    add-int v7, v6, v4

    .line 735
    .local v7, "right":I
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v9, v5, 0x2

    sub-int/2addr v8, v9

    .line 736
    .local v8, "top":I
    add-int v9, v8, v5

    .line 737
    .local v9, "bottom":I
    invoke-virtual {p1, v6, v8, v7, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 738
    return-object p1
.end method

.method private final computeScrollOffset(Landroid/view/View;F)I
    .locals 7
    .param p1, "slideableView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 1705
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtl()Z

    move-result v0

    .line 1706
    .local v0, "isLayoutRtl":Z
    move-object v1, p1

    .local v1, "$this$spLayoutParams$iv":Landroid/view/View;
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    const/4 v3, 0x0

    .line 3251
    .local v3, "$i$f$getSpLayoutParams":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 3252
    .local v4, "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected child: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " had unexpected LayoutParams: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SlidingPaneLayout"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    invoke-virtual {v2, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    goto :goto_0

    .line 3256
    :cond_0
    move-object v5, v4

    .line 3252
    :goto_0
    nop

    .line 3253
    const-string v6, "null cannot be cast to non-null type androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 3252
    nop

    .line 1706
    .end local v1    # "$this$spLayoutParams$iv":Landroid/view/View;
    .end local v2    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .end local v3    # "$i$f$getSpLayoutParams":I
    .end local v4    # "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    nop

    .line 1707
    .local v5, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    if-eqz v0, :cond_1

    .line 1708
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v1

    iget v2, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 1709
    .local v1, "startBound":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1710
    .local v2, "childWidth":I
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    iget v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->slideRange:I

    int-to-float v6, v6

    mul-float v6, v6, p2

    add-float/2addr v4, v6

    int-to-float v6, v2

    add-float/2addr v4, v6

    sub-float/2addr v3, v4

    float-to-int v1, v3

    .end local v1    # "startBound":I
    .end local v2    # "childWidth":I
    goto :goto_1

    .line 1712
    :cond_1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v1

    iget v2, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    .line 1713
    .restart local v1    # "startBound":I
    int-to-float v2, v1

    iget v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->slideRange:I

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    move v1, v2

    .line 1707
    .end local v1    # "startBound":I
    :goto_1
    return v1
.end method

.method private final createUserResizingDividerDrawableState([I)[I
    .locals 5
    .param p1, "viewState"    # [I

    .line 563
    const v0, 0x1010367

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v1

    const-string v2, "copyOf(this, newSize)"

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDividerHovered:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 574
    :cond_0
    const v0, 0x10100a7

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDividerDragging()Z

    move-result v1

    if-nez v1, :cond_1

    .line 575
    return-object p1

    .line 578
    :cond_1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDividerDragging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 580
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    .local v2, "stateArray":[I
    const/4 v3, 0x0

    .line 581
    .local v3, "$i$a$-also-SlidingPaneLayout$createUserResizingDividerDrawableState$2":I
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->getLastIndex([I)I

    move-result v4

    aput v0, v2, v4

    .line 582
    nop

    .line 580
    .end local v2    # "stateArray":[I
    .end local v3    # "$i$a$-also-SlidingPaneLayout$createUserResizingDividerDrawableState$2":I
    goto :goto_0

    .line 584
    :cond_2
    invoke-direct {p0, p1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->remove([II)[I

    move-result-object v1

    .line 578
    :goto_0
    return-object v1

    .line 564
    :cond_3
    :goto_1
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDividerHovered:Z

    if-eqz v1, :cond_4

    .line 566
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    .restart local v2    # "stateArray":[I
    const/4 v3, 0x0

    .line 567
    .local v3, "$i$a$-also-SlidingPaneLayout$createUserResizingDividerDrawableState$1":I
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->getLastIndex([I)I

    move-result v4

    aput v0, v2, v4

    .line 568
    nop

    .line 566
    .end local v2    # "stateArray":[I
    .end local v3    # "$i$a$-also-SlidingPaneLayout$createUserResizingDividerDrawableState$1":I
    goto :goto_2

    .line 570
    :cond_4
    invoke-direct {p0, p1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->remove([II)[I

    move-result-object v1

    .line 564
    :goto_2
    return-object v1
.end method

.method private final dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2
    .param p1, "panel"    # Landroid/view/View;

    .line 800
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->overlappingPaneHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;

    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->currentSlideOffset:F

    invoke-virtual {v0, p1, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dispatchOnPanelSlide(Landroid/view/View;F)V

    .line 801
    return-void
.end method

.method private final findViewByAccessibilityIdRootedAtCurrentView(ILandroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "accessibilityId"    # I
    .param p2, "currentView"    # Landroid/view/View;

    .line 2350
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_3

    .line 2352
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getAccessibilityViewIdMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2353
    const-class v0, Landroid/view/View;

    const-string v2, "getAccessibilityViewId"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v2, v0

    .local v2, "it":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 2354
    .local v3, "$i$a$-also-SlidingPaneLayout$findViewByAccessibilityIdRootedAtCurrentView$getAccessibilityViewIdMethod$1":I
    iput-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getAccessibilityViewIdMethod:Ljava/lang/reflect/Method;

    .line 2355
    nop

    .line 2353
    .end local v2    # "it":Ljava/lang/reflect/Method;
    .end local v3    # "$i$a$-also-SlidingPaneLayout$findViewByAccessibilityIdRootedAtCurrentView$getAccessibilityViewIdMethod$1":I
    nop

    .line 2352
    :cond_0
    nop

    .line 2351
    nop

    .line 2356
    .local v0, "getAccessibilityViewIdMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2357
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2358
    return-object p2

    .line 2360
    :cond_1
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 2361
    const/4 v1, 0x0

    .local v1, "i":I
    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 2363
    nop

    .line 2364
    nop

    .line 2365
    move-object v3, p2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "getChildAt(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2363
    invoke-direct {p0, p1, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->findViewByAccessibilityIdRootedAtCurrentView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 2362
    nop

    .line 2367
    .local v3, "foundView":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 2368
    return-object v3

    .line 2361
    .end local v3    # "foundView":Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2375
    .end local v0    # "getAccessibilityViewIdMethod":Ljava/lang/reflect/Method;
    .end local v1    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getDividerAtLeftEdge()Z
    .locals 5

    .line 547
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->paneSpacing:I

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 546
    nop

    .line 548
    .local v0, "paneSpacing":I
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getVisualDividerPosition()I

    move-result v2

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private final getDividerAtRightEdge()Z
    .locals 5

    .line 556
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->paneSpacing:I

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 555
    nop

    .line 557
    .local v0, "paneSpacing":I
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getVisualDividerPosition()I

    move-result v2

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v4, v0, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private final getDividerContentDescription()Ljava/lang/String;
    .locals 4

    .line 2418
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getDividerAtLeftEdge()Z

    move-result v0

    const-string v1, ", "

    if-eqz v0, :cond_0

    .line 2419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroidx/slidingpanelayout/R$string;->draggable_divider_handler_state_left_edge:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2420
    nop

    .line 2419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2421
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroidx/slidingpanelayout/R$string;->draggable_divider_handler:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2422
    :cond_0
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getDividerAtRightEdge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroidx/slidingpanelayout/R$string;->draggable_divider_handler_state_right_edge:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2424
    nop

    .line 2423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2425
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroidx/slidingpanelayout/R$string;->draggable_divider_handler:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2427
    :cond_1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroidx/slidingpanelayout/R$string;->draggable_divider_handler:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2426
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2418
    :goto_0
    return-object v0
.end method

.method public static synthetic getLockMode$annotations()V
    .locals 0

    return-void
.end method

.method private final getMinimumChildWidth(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 973
    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchBlocker;

    if-eqz v0, :cond_0

    .line 974
    move-object v0, p1

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchBlocker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchBlocker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    goto :goto_0

    .line 975
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    .line 973
    :goto_0
    return v0
.end method

.method private final getSpLayoutParams(Landroid/view/View;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .locals 4
    .param p1, "$this$spLayoutParams"    # Landroid/view/View;

    const/4 v0, 0x0

    .line 3142
    .local v0, "$i$f$getSpLayoutParams":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3143
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected child: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " had unexpected LayoutParams: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SlidingPaneLayout"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    goto :goto_0

    .line 3147
    :cond_0
    move-object v2, v1

    .line 3143
    :goto_0
    nop

    .line 3144
    const-string v3, "null cannot be cast to non-null type androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 3143
    return-object v2
.end method

.method private final getSystemGestureInsets()Landroidx/core/graphics/Insets;
    .locals 2

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "gestureInsets":Landroidx/core/graphics/Insets;
    invoke-static {}, Landroidx/slidingpanelayout/widget/SlidingPaneLayoutKt;->access$getEdgeSizeUsingSystemGestureInsets$p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    .line 386
    .local v1, "rootInsetsCompat":Landroidx/core/view/WindowInsetsCompat;
    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->getSystemGestureInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 391
    .end local v1    # "rootInsetsCompat":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    return-object v0
.end method

.method public static synthetic isAccessibilityEnabledForTesting$slidingpanelayout_release$annotations()V
    .locals 0

    return-void
.end method

.method private final isDimmed(Landroid/view/View;)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .line 1875
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1876
    return v0

    .line 1878
    :cond_0
    move-object v1, p1

    .local v1, "$this$spLayoutParams$iv":Landroid/view/View;
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    const/4 v3, 0x0

    .line 3257
    .local v3, "$i$f$getSpLayoutParams":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 3258
    .local v4, "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected child: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " had unexpected LayoutParams: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SlidingPaneLayout"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    invoke-virtual {v2, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    goto :goto_0

    .line 3262
    :cond_1
    move-object v5, v4

    .line 3258
    :goto_0
    nop

    .line 3259
    const-string v6, "null cannot be cast to non-null type androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 3258
    nop

    .line 1878
    .end local v1    # "$this$spLayoutParams$iv":Landroid/view/View;
    .end local v2    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .end local v3    # "$i$f$getSpLayoutParams":I
    .end local v4    # "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    nop

    .line 1879
    .local v5, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->currentSlideOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private final isLayoutRtl()Z
    .locals 2

    .line 395
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final onPanelDragged(I)V
    .locals 10
    .param p1, "newLeft"    # I

    .line 1570
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->slideableView:Landroid/view/View;

    .line 1571
    .local v0, "slideableView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1573
    const/4 v1, 0x0

    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->currentSlideOffset:F

    .line 1574
    return-void

    .line 1576
    :cond_0
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtl()Z

    move-result v1

    .line 1577
    .local v1, "isLayoutRtl":Z
    move-object v2, v0

    .local v2, "$this$spLayoutParams$iv":Landroid/view/View;
    move-object v3, p0

    .local v3, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    const/4 v4, 0x0

    .line 3239
    .local v4, "$i$f$getSpLayoutParams":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 3240
    .local v5, "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3241
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected child: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " had unexpected LayoutParams: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SlidingPaneLayout"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    invoke-virtual {v3, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    goto :goto_0

    .line 3244
    :cond_1
    move-object v6, v5

    .line 3240
    :goto_0
    nop

    .line 3241
    const-string v7, "null cannot be cast to non-null type androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 3240
    nop

    .line 1577
    .end local v2    # "$this$spLayoutParams$iv":Landroid/view/View;
    .end local v3    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .end local v4    # "$i$f$getSpLayoutParams":I
    .end local v5    # "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    nop

    .line 1578
    .local v6, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1579
    .local v2, "childWidth":I
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, v2

    goto :goto_1

    :cond_2
    move v3, p1

    .line 1580
    .local v3, "newStart":I
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    .line 1581
    .local v4, "paddingStart":I
    :goto_2
    if-eqz v1, :cond_4

    iget v5, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    :cond_4
    iget v5, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    .line 1582
    .local v5, "lpMargin":I
    :goto_3
    add-int v7, v4, v5

    .line 1583
    .local v7, "startBound":I
    sub-int v8, v3, v7

    int-to-float v8, v8

    iget v9, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->slideRange:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->currentSlideOffset:F

    .line 1584
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getParallaxDistance()I

    move-result v8

    if-eqz v8, :cond_5

    .line 1585
    iget v8, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->currentSlideOffset:F

    invoke-direct {p0, v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 1587
    :cond_5
    invoke-direct {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    .line 1588
    return-void
.end method

.method private final openPane(I)Z
    .locals 2
    .param p1, "initialVelocity"    # I

    .line 1449
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1450
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->preservedOpenState:Z

    .line 1452
    :cond_0
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->awaitingFirstLayout:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1456
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1453
    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->preservedOpenState:Z

    .line 1454
    return v1
.end method

.method private final parallaxOtherViews(F)V
    .locals 8
    .param p1, "slideOffset"    # F

    .line 1820
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtl()Z

    move-result v0

    .line 1821
    .local v0, "isLayoutRtl":Z
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    .line 1822
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1823
    invoke-virtual {p0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1824
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->slideableView:Landroid/view/View;

    if-eq v3, v4, :cond_1

    .line 1825
    const/4 v4, 0x1

    int-to-float v4, v4

    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->currentParallaxOffset:F

    sub-float v5, v4, v5

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getParallaxDistance()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    .line 1826
    .local v5, "oldOffset":I
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->currentParallaxOffset:F

    .line 1827
    sub-float/2addr v4, p1

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getParallaxDistance()I

    move-result v6

    int-to-float v6, v6

    mul-float v4, v4, v6

    float-to-int v4, v4

    .line 1828
    .local v4, "newOffset":I
    sub-int v6, v5, v4

    .line 1829
    .local v6, "dx":I
    if-eqz v0, :cond_0

    neg-int v7, v6

    goto :goto_1

    :cond_0
    move v7, v6

    :goto_1
    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1822
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "newOffset":I
    .end local v5    # "oldOffset":I
    .end local v6    # "dx":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1831
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private final remeasureForFoldingFeature(Landroidx/window/layout/FoldingFeature;)Z
    .locals 26
    .param p1, "foldingFeature"    # Landroidx/window/layout/FoldingFeature;

    .line 1192
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->tmpRect:Landroid/graphics/Rect;

    .line 1193
    .local v1, "leftSplitBounds":Landroid/graphics/Rect;
    iget-object v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->tmpRect2:Landroid/graphics/Rect;

    .line 1195
    .local v2, "rightSplitBounds":Landroid/graphics/Rect;
    iget-object v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->foldBoundsCalculator:Landroidx/slidingpanelayout/widget/FoldBoundsCalculator;

    .line 1196
    nop

    .line 1197
    nop

    .line 1198
    nop

    .line 1199
    nop

    .line 1195
    move-object/from16 v4, p1

    invoke-virtual {v3, v4, v0, v1, v2}, Landroidx/slidingpanelayout/widget/FoldBoundsCalculator;->splitViewPositions(Landroidx/window/layout/FoldingFeature;Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    .line 1194
    nop

    .line 1201
    .local v3, "hasFold":Z
    if-eqz v3, :cond_a

    .line 1204
    move-object v5, v0

    check-cast v5, Landroid/view/ViewGroup;

    .local v5, "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    const/4 v6, 0x0

    .line 3212
    .local v6, "$i$f$forEachIndexed":I
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v9, 0x0

    :goto_0
    const-string v10, "null cannot be cast to non-null type androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams"

    const-string v12, " had unexpected LayoutParams: "

    const-string v13, "Unexpected child: "

    const-string v14, "SlidingPaneLayout"

    const-string/jumbo v15, "too many children to split"

    const/16 v16, 0x0

    const-string v11, "getChildAt(index)"

    if-ge v9, v7, :cond_6

    .line 3213
    .local v9, "index$iv":I
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move v11, v9

    .local v8, "child":Landroid/view/View;
    .local v11, "i":I
    const/16 v19, 0x0

    .line 1205
    .local v19, "$i$a$-forEachIndexed-SlidingPaneLayout$remeasureForFoldingFeature$1":I
    move-object/from16 v20, v1

    .end local v1    # "leftSplitBounds":Landroid/graphics/Rect;
    .local v20, "leftSplitBounds":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    move-object/from16 v21, v2

    const/16 v2, 0x8

    .end local v2    # "rightSplitBounds":Landroid/graphics/Rect;
    .local v21, "rightSplitBounds":Landroid/graphics/Rect;
    if-eq v1, v2, :cond_5

    .line 1207
    packed-switch v11, :pswitch_data_0

    .line 1209
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1210
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1209
    :pswitch_0
    move-object/from16 v1, v21

    goto :goto_1

    .line 1208
    :pswitch_1
    move-object/from16 v1, v20

    .line 1207
    :goto_1
    nop

    .line 1206
    nop

    .line 1212
    .local v1, "splitView":Landroid/graphics/Rect;
    move-object v2, v8

    .local v2, "$this$spLayoutParams$iv":Landroid/view/View;
    move-object/from16 v15, p0

    .local v15, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    const/16 v18, 0x0

    .line 3214
    .local v18, "$i$f$getSpLayoutParams":I
    move-object/from16 v22, v1

    .end local v1    # "splitView":Landroid/graphics/Rect;
    .local v22, "splitView":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3215
    .local v1, "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v15, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 3216
    move/from16 v23, v3

    .end local v3    # "hasFold":Z
    .local v23, "hasFold":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v12, 0x20

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    invoke-virtual {v15, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    goto :goto_2

    .line 3219
    .end local v23    # "hasFold":Z
    .restart local v3    # "hasFold":Z
    :cond_0
    move/from16 v23, v3

    .end local v3    # "hasFold":Z
    .restart local v23    # "hasFold":Z
    move-object v3, v1

    .line 3215
    :goto_2
    nop

    .line 3216
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 3215
    nop

    .line 1212
    .end local v1    # "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "$this$spLayoutParams$iv":Landroid/view/View;
    .end local v15    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .end local v18    # "$i$f$getSpLayoutParams":I
    nop

    .line 1214
    .local v3, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move-object v1, v3

    .local v1, "$this$canExpandWidth$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    const/4 v2, 0x0

    .line 3220
    .local v2, "$i$f$getCanExpandWidth":I
    iget v10, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/4 v12, -0x1

    if-eq v10, v12, :cond_2

    iget v10, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v12, 0x0

    cmpl-float v10, v10, v12

    if-lez v10, :cond_1

    goto :goto_3

    :cond_1
    const/4 v10, 0x0

    goto :goto_4

    :cond_2
    :goto_3
    const/4 v10, 0x1

    .line 1214
    .end local v1    # "$this$canExpandWidth$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v2    # "$i$f$getCanExpandWidth":I
    :goto_4
    if-nez v10, :cond_3

    return v16

    .line 1216
    :cond_3
    invoke-direct {v0, v8}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getMinimumChildWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v3, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1219
    .local v1, "minChildWidth":I
    move-object v2, v3

    .local v2, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    const/4 v10, 0x0

    .line 3221
    .local v10, "$i$f$getHorizontalMargin$slidingpanelayout_release":I
    iget v12, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v13, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    .line 1219
    .end local v2    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v10    # "$i$f$getHorizontalMargin$slidingpanelayout_release":I
    add-int/2addr v12, v1

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v12, v2, :cond_4

    return v16

    .line 1220
    :cond_4
    goto :goto_5

    .line 1205
    .end local v1    # "minChildWidth":I
    .end local v22    # "splitView":Landroid/graphics/Rect;
    .end local v23    # "hasFold":Z
    .local v3, "hasFold":Z
    :cond_5
    move/from16 v23, v3

    .line 3213
    .end local v3    # "hasFold":Z
    .end local v8    # "child":Landroid/view/View;
    .end local v11    # "i":I
    .end local v19    # "$i$a$-forEachIndexed-SlidingPaneLayout$remeasureForFoldingFeature$1":I
    .restart local v23    # "hasFold":Z
    :goto_5
    nop

    .line 3212
    nop

    .end local v9    # "index$iv":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v23

    goto/16 :goto_0

    .line 3222
    .end local v20    # "leftSplitBounds":Landroid/graphics/Rect;
    .end local v21    # "rightSplitBounds":Landroid/graphics/Rect;
    .end local v23    # "hasFold":Z
    .local v1, "leftSplitBounds":Landroid/graphics/Rect;
    .local v2, "rightSplitBounds":Landroid/graphics/Rect;
    .restart local v3    # "hasFold":Z
    :cond_6
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move/from16 v23, v3

    .line 1222
    .end local v1    # "leftSplitBounds":Landroid/graphics/Rect;
    .end local v2    # "rightSplitBounds":Landroid/graphics/Rect;
    .end local v3    # "hasFold":Z
    .end local v5    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .end local v6    # "$i$f$forEachIndexed":I
    .restart local v20    # "leftSplitBounds":Landroid/graphics/Rect;
    .restart local v21    # "rightSplitBounds":Landroid/graphics/Rect;
    .restart local v23    # "hasFold":Z
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .line 3223
    .local v2, "$i$f$forEachIndexed":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_9

    .line 3224
    .local v5, "index$iv":I
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move v7, v5

    .local v6, "child":Landroid/view/View;
    .local v7, "i":I
    const/4 v8, 0x0

    .line 1223
    .local v8, "$i$a$-forEachIndexed-SlidingPaneLayout$remeasureForFoldingFeature$2":I
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v0, 0x8

    if-eq v9, v0, :cond_8

    .line 1225
    packed-switch v7, :pswitch_data_1

    .line 1227
    move-object/from16 v24, v1

    .end local v1    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .local v24, "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1228
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1227
    .end local v24    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .restart local v1    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    :pswitch_2
    move-object/from16 v9, v21

    goto :goto_7

    .line 1226
    :pswitch_3
    move-object/from16 v9, v20

    .line 1225
    :goto_7
    nop

    .line 1224
    nop

    .line 1230
    .local v9, "splitView":Landroid/graphics/Rect;
    move-object/from16 v18, v6

    .local v18, "$this$spLayoutParams$iv":Landroid/view/View;
    move-object/from16 v19, p0

    .local v19, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    const/16 v22, 0x0

    .line 3225
    .local v22, "$i$f$getSpLayoutParams":I
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3226
    .local v0, "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v24, v1

    move-object/from16 v1, v19

    .end local v19    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .local v1, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .restart local v24    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    invoke-virtual {v1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 3227
    move/from16 v19, v2

    .end local v2    # "$i$f$forEachIndexed":I
    .local v19, "$i$f$forEachIndexed":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v25, v3

    move-object/from16 v3, v18

    .end local v18    # "$this$spLayoutParams$iv":Landroid/view/View;
    .local v3, "$this$spLayoutParams$iv":Landroid/view/View;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    .end local v3    # "$this$spLayoutParams$iv":Landroid/view/View;
    .restart local v18    # "$this$spLayoutParams$iv":Landroid/view/View;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    invoke-virtual {v1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    goto :goto_8

    .line 3230
    .end local v19    # "$i$f$forEachIndexed":I
    .restart local v2    # "$i$f$forEachIndexed":I
    :cond_7
    move/from16 v19, v2

    move/from16 v25, v3

    const/16 v3, 0x20

    .end local v2    # "$i$f$forEachIndexed":I
    .restart local v19    # "$i$f$forEachIndexed":I
    move-object v2, v0

    .line 3226
    :goto_8
    nop

    .line 3227
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 3226
    nop

    .line 1230
    .end local v0    # "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .end local v18    # "$this$spLayoutParams$iv":Landroid/view/View;
    .end local v22    # "$i$f$getSpLayoutParams":I
    nop

    .line 1234
    .local v2, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    move-object v1, v2

    .local v1, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    const/16 v17, 0x0

    .line 3231
    .local v17, "$i$f$getHorizontalMargin$slidingpanelayout_release":I
    iget v3, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    iget v0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v0

    .line 1234
    .end local v1    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v17    # "$i$f$getHorizontalMargin$slidingpanelayout_release":I
    sub-int v0, v22, v3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 1235
    nop

    .line 1233
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1232
    nop

    .line 1241
    .local v0, "childWidthSpec":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1240
    nop

    .line 1243
    .local v1, "childHeightSpec":I
    invoke-virtual {v6, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1244
    goto :goto_9

    .line 1223
    .end local v0    # "childWidthSpec":I
    .end local v9    # "splitView":Landroid/graphics/Rect;
    .end local v19    # "$i$f$forEachIndexed":I
    .end local v24    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .local v1, "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .local v2, "$i$f$forEachIndexed":I
    :cond_8
    move-object/from16 v24, v1

    move/from16 v19, v2

    move/from16 v25, v3

    .line 3224
    .end local v1    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .end local v2    # "$i$f$forEachIndexed":I
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "i":I
    .end local v8    # "$i$a$-forEachIndexed-SlidingPaneLayout$remeasureForFoldingFeature$2":I
    .restart local v19    # "$i$f$forEachIndexed":I
    .restart local v24    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    :goto_9
    nop

    .line 3223
    nop

    .end local v5    # "index$iv":I
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v19

    move-object/from16 v1, v24

    move/from16 v3, v25

    const/16 v16, 0x0

    goto/16 :goto_6

    .line 3232
    .end local v19    # "$i$f$forEachIndexed":I
    .end local v24    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .restart local v1    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .restart local v2    # "$i$f$forEachIndexed":I
    :cond_9
    move-object/from16 v24, v1

    move/from16 v19, v2

    .end local v1    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .end local v2    # "$i$f$forEachIndexed":I
    .restart local v19    # "$i$f$forEachIndexed":I
    .restart local v24    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    goto :goto_a

    .line 1201
    .end local v19    # "$i$f$forEachIndexed":I
    .end local v20    # "leftSplitBounds":Landroid/graphics/Rect;
    .end local v21    # "rightSplitBounds":Landroid/graphics/Rect;
    .end local v23    # "hasFold":Z
    .end local v24    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .local v1, "leftSplitBounds":Landroid/graphics/Rect;
    .local v2, "rightSplitBounds":Landroid/graphics/Rect;
    .local v3, "hasFold":Z
    :cond_a
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move/from16 v23, v3

    .line 1246
    .end local v1    # "leftSplitBounds":Landroid/graphics/Rect;
    .end local v2    # "rightSplitBounds":Landroid/graphics/Rect;
    .end local v3    # "hasFold":Z
    .restart local v20    # "leftSplitBounds":Landroid/graphics/Rect;
    .restart local v21    # "rightSplitBounds":Landroid/graphics/Rect;
    .restart local v23    # "hasFold":Z
    :goto_a
    return v23

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private final remove([II)[I
    .locals 5
    .param p1, "$this$remove"    # [I
    .param p2, "element"    # I

    .line 590
    const/4 v0, 0x0

    .line 591
    .local v0, "found":Z
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 592
    aget v4, p1, v3

    if-ne v4, p2, :cond_0

    const/4 v0, 0x1

    .line 593
    :cond_0
    if-eqz v0, :cond_1

    add-int/lit8 v4, v3, 0x1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    aget v4, p1, v4

    aput v4, v2, v3

    .line 591
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private final selectActiveTouchHandler()Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;
    .locals 1

    .line 1362
    nop

    .line 1363
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->overlappingPaneHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;

    goto :goto_0

    .line 1365
    :cond_0
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isUserResizable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1366
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->draggableDividerHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;

    goto :goto_0

    .line 1367
    :cond_1
    const/4 v0, 0x0

    .line 1362
    :goto_0
    invoke-direct {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setActiveTouchHandler(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;)V

    .line 1368
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->activeTouchHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;

    return-object v0
.end method

.method private final sendAccessibilityEventForDivider(ILjava/lang/String;I)V
    .locals 8
    .param p1, "eventType"    # I
    .param p2, "contentDescription"    # Ljava/lang/String;
    .param p3, "contentChangeType"    # I

    .line 2384
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isAccessibilityEnabledForTesting:Z

    if-nez v0, :cond_0

    .line 2385
    return-void

    .line 2387
    :cond_0
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2388
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    .line 2390
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    move-object v3, v2

    .local v3, "$this$sendAccessibilityEventForDivider_u24lambda_u2424":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v4, 0x0

    .line 2391
    .local v4, "$i$a$-apply-SlidingPaneLayout$sendAccessibilityEventForDivider$1":I
    invoke-virtual {v3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 2392
    invoke-virtual {v3, p3}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 2394
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2395
    const-class v5, Landroid/widget/Button;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2396
    move-object v5, p2

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2398
    move-object v5, v3

    check-cast v5, Landroid/view/accessibility/AccessibilityRecord;

    .line 2399
    move-object v6, p0

    check-cast v6, Landroid/view/View;

    .line 2400
    nop

    .line 2397
    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 2402
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2403
    nop

    .end local v3    # "$this$sendAccessibilityEventForDivider_u24lambda_u2424":Landroid/view/accessibility/AccessibilityEvent;
    .end local v4    # "$i$a$-apply-SlidingPaneLayout$sendAccessibilityEventForDivider$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2390
    nop

    .line 2387
    invoke-interface {v0, v1, v2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2405
    :cond_1
    return-void
.end method

.method static synthetic sendAccessibilityEventForDivider$default(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;ILjava/lang/String;IILjava/lang/Object;)V
    .locals 0

    .line 2378
    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 2380
    const/4 p2, 0x0

    .line 2378
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 2381
    const/4 p3, 0x0

    .line 2378
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sendAccessibilityEventForDivider(ILjava/lang/String;I)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sendAccessibilityEventForDivider"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final sendDividerPositionUpdateA11yEvents()V
    .locals 3

    .line 2410
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->pendingA11yDividerPositionUpdates:Z

    if-eqz v0, :cond_0

    .line 2411
    return-void

    .line 2413
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->pendingA11yDividerPositionUpdates:Z

    .line 2414
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a11yDividerPositionUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2415
    return-void
.end method

.method private final setActiveTouchHandler(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;)V
    .locals 3
    .param p1, "value"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;

    .line 312
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->activeTouchHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->activeTouchHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->cancelEvent:Landroid/view/MotionEvent;

    const-string v2, "cancelEvent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 315
    :cond_0
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->activeTouchHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;

    .line 317
    :cond_1
    return-void
.end method

.method private final setAllChildrenVisible()V
    .locals 9

    .line 850
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .local v0, "$this$forEach$iv":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .line 3176
    .local v1, "$i$f$forEach":I
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 3177
    .local v4, "index$iv":I
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "getChildAt(index)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .local v5, "child":Landroid/view/View;
    const/4 v6, 0x0

    .line 851
    .local v6, "$i$a$-forEach-SlidingPaneLayout$setAllChildrenVisible$1":I
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 852
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 854
    :cond_0
    nop

    .line 3177
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "$i$a$-forEach-SlidingPaneLayout$setAllChildrenVisible$1":I
    nop

    .line 3176
    nop

    .end local v4    # "index$iv":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3179
    :cond_1
    nop

    .line 855
    .end local v0    # "$this$forEach$iv":Landroid/view/ViewGroup;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method private final setFoldingFeature(Landroidx/window/layout/FoldingFeature;)V
    .locals 1
    .param p1, "value"    # Landroidx/window/layout/FoldingFeature;

    .line 338
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->foldingFeature:Landroidx/window/layout/FoldingFeature;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->foldingFeature:Landroidx/window/layout/FoldingFeature;

    .line 340
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->requestLayout()V

    .line 342
    :cond_0
    return-void
.end method

.method private final smoothSlideTo(FI)Z
    .locals 5
    .param p1, "slideOffset"    # F
    .param p2, "velocity"    # I

    .line 1655
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1657
    return v1

    .line 1659
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->slideableView:Landroid/view/View;

    if-nez v0, :cond_1

    return v1

    .line 1660
    .local v0, "slideableView":Landroid/view/View;
    :cond_1
    invoke-direct {p0, v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->computeScrollOffset(Landroid/view/View;F)I

    move-result v2

    .line 1661
    .local v2, "x":I
    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->overlappingPaneHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v0, v2, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1662
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    .line 1663
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->postInvalidateOnAnimation()V

    .line 1664
    const/4 v1, 0x1

    return v1

    .line 1666
    :cond_2
    return v1
.end method

.method private final smoothSlideTo(FILandroid/view/animation/Interpolator;)Z
    .locals 8
    .param p1, "slideOffset"    # F
    .param p2, "duration"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 1681
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1683
    return v1

    .line 1685
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->slideableView:Landroid/view/View;

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v3, v0

    .line 1686
    .local v3, "slideableView":Landroid/view/View;
    invoke-direct {p0, v3, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->computeScrollOffset(Landroid/view/View;F)I

    move-result v4

    .line 1688
    .local v4, "x":I
    nop

    .line 1689
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->overlappingPaneHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;

    .line 1690
    nop

    .line 1691
    nop

    .line 1692
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    .line 1693
    nop

    .line 1694
    nop

    .line 1689
    move v6, p2

    move-object v7, p3

    .end local p2    # "duration":I
    .end local p3    # "interpolator":Landroid/view/animation/Interpolator;
    .local v6, "duration":I
    .local v7, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual/range {v2 .. v7}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->smoothSlideViewTo(Landroid/view/View;IIILandroid/view/animation/Interpolator;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1697
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    .line 1698
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->postInvalidateOnAnimation()V

    .line 1699
    const/4 p2, 0x1

    return p2

    .line 1701
    :cond_2
    return v1
.end method

.method private final updateDividerDrawableBounds(I)V
    .locals 7
    .param p1, "dividerPositionX"    # I

    .line 859
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 860
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->userResizingDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .local v0, "$this$updateDividerDrawableBounds_u24lambda_u249":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 861
    .local v1, "$i$a$-apply-SlidingPaneLayout$updateDividerDrawableBounds$1":I
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 862
    .local v2, "layoutCenterY":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    .line 863
    .local v3, "dividerLeft":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    .line 864
    .local v4, "dividerTop":I
    nop

    .line 865
    nop

    .line 866
    nop

    .line 867
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v3

    .line 868
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v4

    .line 864
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 870
    nop

    .line 860
    .end local v0    # "$this$updateDividerDrawableBounds_u24lambda_u249":Landroid/graphics/drawable/Drawable;
    .end local v1    # "$i$a$-apply-SlidingPaneLayout$updateDividerDrawableBounds$1":I
    .end local v2    # "layoutCenterY":I
    .end local v3    # "dividerLeft":I
    .end local v4    # "dividerTop":I
    nop

    .line 871
    :cond_0
    return-void
.end method

.method private final updateGestureExclusion(I)V
    .locals 2
    .param p1, "dividerPositionX"    # I

    .line 874
    if-gez p1, :cond_0

    .line 875
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->computedDividerExclusionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 877
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->computedDividerExclusionRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->computeDividerTargetRect(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    .line 881
    :goto_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->computedDividerExclusionRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dividerGestureExclusionRect:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 882
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->computedDividerExclusionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setSystemGestureExclusionRects(Landroid/view/View;Ljava/util/List;)V

    goto :goto_1

    .line 885
    :cond_1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dividerGestureExclusionRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->computedDividerExclusionRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 887
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->gestureExclusionRectsList:Ljava/util/List;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setSystemGestureExclusionRects(Landroid/view/View;Ljava/util/List;)V

    .line 890
    :cond_2
    :goto_1
    return-void
.end method

.method private final updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 20
    .param p1, "panel"    # Landroid/view/View;

    .line 804
    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtl()Z

    move-result v1

    .line 805
    .local v1, "isLayoutRtl":Z
    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    .line 806
    .local v2, "startBound":I
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 807
    .local v3, "endBound":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v4

    .line 808
    .local v4, "topBound":I
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 809
    .local v5, "bottomBound":I
    const/4 v6, 0x0

    .line 810
    .local v6, "left":I
    const/4 v7, 0x0

    .line 811
    .local v7, "right":I
    const/4 v8, 0x0

    .line 812
    .local v8, "top":I
    const/4 v9, 0x0

    .line 813
    .local v9, "bottom":I
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isOpaque()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 814
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 815
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    .line 816
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    .line 817
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    goto :goto_2

    .line 819
    :cond_2
    const/4 v6, 0x0

    .line 820
    const/4 v8, 0x0

    .line 821
    const/4 v7, 0x0

    .line 822
    const/4 v9, 0x0

    .line 824
    :goto_2
    move-object/from16 v10, p0

    check-cast v10, Landroid/view/ViewGroup;

    .local v10, "$this$forEach$iv":Landroid/view/ViewGroup;
    const/4 v11, 0x0

    .line 3172
    .local v11, "$i$f$forEach":I
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v12, :cond_8

    .line 3173
    .local v14, "index$iv":I
    invoke-virtual {v10, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    const-string v13, "getChildAt(index)"

    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .local v15, "child":Landroid/view/View;
    const/4 v13, 0x0

    .line 825
    .local v13, "$i$a$-forEach-SlidingPaneLayout$updateObscuredViewsVisibility$1":I
    if-ne v15, v0, :cond_3

    .line 827
    return-void

    .line 829
    :cond_3
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v0

    move/from16 v16, v1

    .end local v1    # "isLayoutRtl":Z
    .local v16, "isLayoutRtl":Z
    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    .line 831
    if-eqz v16, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 830
    nop

    .line 832
    .local v0, "clampedChildLeft":I
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v4, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 834
    .local v1, "clampedChildTop":I
    move/from16 v17, v2

    if-eqz v16, :cond_5

    goto :goto_5

    :cond_5
    move v2, v3

    .end local v2    # "startBound":I
    .local v17, "startBound":I
    :goto_5
    move/from16 v18, v3

    .end local v3    # "endBound":I
    .local v18, "endBound":I
    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v2

    .line 833
    nop

    .line 835
    .local v2, "clampedChildRight":I
    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {v5, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v3

    .line 836
    .local v3, "clampedChildBottom":I
    nop

    .line 837
    nop

    .line 838
    if-lt v0, v6, :cond_6

    .line 839
    if-lt v1, v8, :cond_6

    .line 840
    if-gt v2, v7, :cond_6

    .line 841
    if-gt v3, v9, :cond_6

    .line 843
    const/16 v19, 0x4

    move/from16 v19, v0

    const/4 v0, 0x4

    goto :goto_6

    .line 844
    :cond_6
    move/from16 v19, v0

    const/4 v0, 0x0

    .line 836
    .end local v0    # "clampedChildLeft":I
    .local v19, "clampedChildLeft":I
    :goto_6
    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 829
    .end local v1    # "clampedChildTop":I
    .end local v17    # "startBound":I
    .end local v18    # "endBound":I
    .end local v19    # "clampedChildLeft":I
    .local v2, "startBound":I
    .local v3, "endBound":I
    :cond_7
    move/from16 v17, v2

    move/from16 v18, v3

    .line 846
    .end local v2    # "startBound":I
    .end local v3    # "endBound":I
    .restart local v17    # "startBound":I
    .restart local v18    # "endBound":I
    :goto_7
    nop

    .line 3173
    .end local v13    # "$i$a$-forEach-SlidingPaneLayout$updateObscuredViewsVisibility$1":I
    .end local v15    # "child":Landroid/view/View;
    nop

    .line 3172
    nop

    .end local v14    # "index$iv":I
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    goto :goto_3

    .line 3175
    .end local v16    # "isLayoutRtl":Z
    .end local v17    # "startBound":I
    .end local v18    # "endBound":I
    .local v1, "isLayoutRtl":Z
    .restart local v2    # "startBound":I
    .restart local v3    # "endBound":I
    :cond_8
    nop

    .line 847
    .end local v10    # "$this$forEach$iv":Landroid/view/ViewGroup;
    .end local v11    # "$i$f$forEach":I
    return-void
.end method

.method private final whileAttachedToVisibleWindow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 957
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->windowInfoTracker:Landroidx/window/layout/WindowInfoTracker;

    .line 958
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroidx/window/layout/WindowInfoTracker;->windowLayoutInfo(Landroid/content/Context;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 959
    nop

    .local v0, "$this$mapNotNull$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v1, 0x0

    .line 3180
    .local v1, "$i$f$mapNotNull":I
    move-object v2, v0

    .local v2, "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    .line 3181
    .local v3, "$i$f$unsafeTransform":I
    const/4 v4, 0x0

    .line 3182
    .local v4, "$i$f$unsafeFlow":I
    new-instance v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$whileAttachedToVisibleWindow$$inlined$mapNotNull$1;

    invoke-direct {v5, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$whileAttachedToVisibleWindow$$inlined$mapNotNull$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    .line 3183
    .end local v4    # "$i$f$unsafeFlow":I
    nop

    .line 3184
    .end local v2    # "$this$unsafeTransform$iv$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v3    # "$i$f$unsafeTransform":I
    nop

    .line 962
    .end local v0    # "$this$mapNotNull$iv":Lkotlinx/coroutines/flow/Flow;
    .end local v1    # "$i$f$mapNotNull":I
    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 963
    new-instance v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$whileAttachedToVisibleWindow$3;

    invoke-direct {v1, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$whileAttachedToVisibleWindow$3;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 964
    return-object v0
.end method


# virtual methods
.method public addPanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->overlappingPaneHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;

    invoke-virtual {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->addPanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V

    .line 786
    return-void
.end method

.method public addSlideableStateListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SlideableStateListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SlideableStateListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->overlappingPaneHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;

    invoke-virtual {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->addSlideableStateListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SlideableStateListener;)V

    .line 765
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 918
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 920
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchBlocker;

    invoke-direct {v0, p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchBlocker;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/View;)V

    check-cast v0, Landroid/view/View;

    .line 921
    .local v0, "detailView":Landroid/view/View;
    invoke-super {p0, v0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 922
    return-void

    .line 924
    .end local v0    # "detailView":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 925
    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1845
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1846
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 1847
    .local v0, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    .line 1848
    .local v2, "scrollY":I
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 1850
    .local v3, "count":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_0
    const/4 v5, -0x1

    if-ge v5, v4, :cond_1

    .line 1853
    move-object v5, p1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1854
    .local v7, "child":Landroid/view/View;
    nop

    .line 1855
    add-int v5, p4, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1856
    add-int v5, p4, v0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1857
    add-int v5, p5, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1858
    add-int v5, p5, v2

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1859
    nop

    .line 1860
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1861
    nop

    .line 1862
    nop

    .line 1863
    add-int v5, p4, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v10, v5, v6

    .line 1864
    add-int v5, p5, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v5, v6

    .line 1859
    const/4 v8, 0x1

    move-object v6, p0

    move v9, p3

    invoke-virtual/range {v6 .. v11}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1867
    return v1

    .line 1850
    .end local v7    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1871
    .end local v0    # "scrollX":I
    .end local v2    # "scrollY":I
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_1
    if-eqz p2, :cond_3

    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, p3

    goto :goto_1

    :cond_2
    neg-int v0, p3

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public canSlide()Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Renamed to {@link #isSlideable()} - this method is going away soon!"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "isSlideable"
            imports = {}
        .end subannotation
    .end annotation

    .line 1530
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1897
    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 0

    .line 1546
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane()Z

    .line 1547
    return-void
.end method

.method public closePane()Z
    .locals 1

    .line 1556
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(I)Z

    move-result v0

    return v0
.end method

.method public final closePane(ILandroid/view/animation/Interpolator;)Z
    .locals 2
    .param p1, "duration"    # I
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    const-string v0, "interpolator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1488
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1489
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->preservedOpenState:Z

    .line 1491
    :cond_0
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->awaitingFirstLayout:Z

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, p1, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->smoothSlideTo(FILandroid/view/animation/Interpolator;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1495
    :cond_1
    return v1

    .line 1492
    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->preservedOpenState:Z

    .line 1493
    const/4 v0, 0x1

    return v0
.end method

.method public computeScroll()V
    .locals 1

    .line 1718
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->overlappingPaneHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->onComputeScroll()V

    .line 1719
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1382
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isUserResizable()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 1387
    :cond_0
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    const/4 v6, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1386
    :goto_0
    move v7, v1

    .line 1388
    .local v7, "a11yEnabled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 1410
    :pswitch_1
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDividerHovered:Z

    if-eqz v1, :cond_4

    .line 1411
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDividerHovered:Z

    .line 1412
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->drawableStateChanged()V

    .line 1413
    if-eqz v7, :cond_4

    .line 1414
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v1, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sendAccessibilityEventForDivider$default(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;ILjava/lang/String;IILjava/lang/Object;)V

    goto :goto_2

    .line 1392
    :pswitch_2
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->draggableDividerHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->dividerBoundsContains(II)Z

    move-result v1

    .line 1391
    move v8, v1

    .line 1394
    .local v8, "hoverOnDivider":Z
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDividerHovered:Z

    xor-int/2addr v1, v8

    if-eqz v1, :cond_4

    .line 1395
    iput-boolean v8, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDividerHovered:Z

    .line 1396
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->drawableStateChanged()V

    .line 1397
    if-eqz v7, :cond_3

    .line 1399
    if-eqz v8, :cond_2

    .line 1400
    const/16 v1, 0x80

    goto :goto_1

    .line 1402
    :cond_2
    const/16 v1, 0x100

    .line 1399
    :goto_1
    nop

    .line 1398
    nop

    .line 1404
    .local v1, "eventType":I
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sendAccessibilityEventForDivider$default(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;ILjava/lang/String;IILjava/lang/Object;)V

    .line 1406
    .end local v1    # "eventType":I
    :cond_3
    return v6

    .line 1419
    .end local v8    # "hoverOnDivider":Z
    :cond_4
    :goto_2
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1383
    .end local v7    # "a11yEnabled":Z
    :cond_5
    :goto_3
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1785
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1786
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtl()Z

    move-result v0

    .line 1788
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_0

    .line 1789
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->shadowDrawableRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1791
    :cond_0
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->shadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1788
    :goto_0
    nop

    .line 1787
    nop

    .line 1793
    .local v1, "shadowDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    invoke-virtual {p0, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    .line 1794
    .local v2, "shadowView":Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 1795
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1796
    .local v4, "top":I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1797
    .local v5, "bottom":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 1798
    .local v6, "shadowWidth":I
    const/4 v7, 0x0

    .line 1799
    .local v7, "left":I
    const/4 v8, 0x0

    .line 1800
    .local v8, "right":I
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1801
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    .line 1802
    add-int v8, v7, v6

    goto :goto_2

    .line 1804
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 1805
    sub-int v7, v8, v6

    .line 1807
    :goto_2
    invoke-virtual {v1, v7, v4, v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1808
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1812
    .end local v4    # "top":I
    .end local v5    # "bottom":I
    .end local v6    # "shadowWidth":I
    .end local v7    # "left":I
    .end local v8    # "right":I
    :cond_3
    nop

    .line 1813
    nop

    .line 1811
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->userResizingDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 1812
    if-eqz v4, :cond_5

    .line 1811
    nop

    .line 1812
    move-object v5, v4

    .line 3159
    .local v5, "it":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 1812
    .local v6, "$i$a$-takeIf-SlidingPaneLayout$draw$1":I
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isUserResizable()Z

    move-result v5

    .end local v5    # "it":Landroid/graphics/drawable/Drawable;
    .end local v6    # "$i$a$-takeIf-SlidingPaneLayout$draw$1":I
    if-eqz v5, :cond_4

    move-object v3, v4

    .line 1813
    :cond_4
    if-eqz v3, :cond_5

    .line 1811
    nop

    .line 1813
    nop

    .local v3, "divider":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 1814
    .local v4, "$i$a$-let-SlidingPaneLayout$draw$2":I
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getVisualDividerPosition()I

    move-result v5

    invoke-direct {p0, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->updateDividerDrawableBounds(I)V

    .line 1815
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1816
    nop

    .line 1813
    .end local v3    # "divider":Landroid/graphics/drawable/Drawable;
    .end local v4    # "$i$a$-let-SlidingPaneLayout$draw$2":I
    goto :goto_3

    .line 1812
    :cond_5
    nop

    .line 1817
    :goto_3
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1595
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 1596
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getSystemGestureInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 1597
    .local v0, "gestureInsets":Landroidx/core/graphics/Insets;
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtl()Z

    move-result v4

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    move-result v5

    xor-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 1598
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->overlappingPaneHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;

    .line 1599
    nop

    .line 1600
    if-eqz v0, :cond_0

    iget v5, v0, Landroidx/core/graphics/Insets;->left:I

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 1598
    :goto_0
    invoke-virtual {v4, v1, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->setEdgeTrackingEnabled(II)V

    goto :goto_2

    .line 1603
    :cond_1
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->overlappingPaneHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;

    .line 1604
    nop

    .line 1605
    if-eqz v0, :cond_2

    iget v5, v0, Landroidx/core/graphics/Insets;->right:I

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 1603
    :goto_1
    invoke-virtual {v4, v2, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->setEdgeTrackingEnabled(II)V

    .end local v0    # "gestureInsets":Landroidx/core/graphics/Insets;
    goto :goto_2

    .line 1609
    :cond_3
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->overlappingPaneHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->disableEdgeTracking()V

    .line 1611
    :goto_2
    move-object v0, p2

    .local v0, "$this$spLayoutParams$iv":Landroid/view/View;
    move-object v4, p0

    .local v4, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    const/4 v5, 0x0

    .line 3245
    .local v5, "$i$f$getSpLayoutParams":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 3246
    .local v6, "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4, v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 3247
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected child: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " had unexpected LayoutParams: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SlidingPaneLayout"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    invoke-virtual {v4, v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    goto :goto_3

    .line 3250
    :cond_4
    move-object v7, v6

    .line 3246
    :goto_3
    nop

    .line 3247
    const-string v8, "null cannot be cast to non-null type androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 3246
    nop

    .line 1611
    .end local v0    # "$this$spLayoutParams$iv":Landroid/view/View;
    .end local v4    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .end local v5    # "$i$f$getSpLayoutParams":I
    .end local v6    # "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    nop

    .line 1612
    .local v7, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1613
    .local v0, "save":I
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->slideableView:Landroid/view/View;

    if-eqz v4, :cond_6

    .line 1615
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 1616
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1617
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->tmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->tmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->slideableView:Landroid/view/View;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    goto :goto_4

    .line 1619
    :cond_5
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->tmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->tmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->slideableView:Landroid/view/View;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1621
    :goto_4
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1623
    :cond_6
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v4

    if-nez v4, :cond_9

    iget-boolean v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isChildClippingToResizeDividerEnabled:Z

    if-eqz v4, :cond_9

    .line 1624
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getVisualDividerPosition()I

    move-result v4

    .line 1626
    .local v4, "visualDividerPosition":I
    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->paneSpacing:I

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v5

    invoke-static {v5, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v5

    .line 1625
    nop

    .line 1627
    .local v5, "paneSpacing":I
    if-ltz v4, :cond_9

    .line 1628
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->tmpRect:Landroid/graphics/Rect;

    .local v6, "$this$drawChild_u24lambda_u2419":Landroid/graphics/Rect;
    const/4 v8, 0x0

    .line 1629
    .local v8, "$i$a$-with-SlidingPaneLayout$drawChild$1":I
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtl()Z

    move-result v9

    invoke-virtual {p0, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-ne p2, v10, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    xor-int/2addr v1, v9

    if-eqz v1, :cond_8

    .line 1631
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v1

    iput v1, v6, Landroid/graphics/Rect;->left:I

    .line 1632
    div-int/lit8 v1, v5, 0x2

    sub-int v1, v4, v1

    iput v1, v6, Landroid/graphics/Rect;->right:I

    goto :goto_6

    .line 1635
    :cond_8
    add-int/lit8 v1, v5, 0x1

    div-int/2addr v1, v2

    add-int/2addr v1, v4

    iput v1, v6, Landroid/graphics/Rect;->left:I

    .line 1636
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v6, Landroid/graphics/Rect;->right:I

    .line 1638
    :goto_6
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v1

    iput v1, v6, Landroid/graphics/Rect;->top:I

    .line 1639
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v6, Landroid/graphics/Rect;->bottom:I

    .line 1640
    nop

    .line 1628
    .end local v6    # "$this$drawChild_u24lambda_u2419":Landroid/graphics/Rect;
    .end local v8    # "$i$a$-with-SlidingPaneLayout$drawChild$1":I
    nop

    .line 1641
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1644
    .end local v4    # "visualDividerPosition":I
    .end local v5    # "paneSpacing":I
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    move v2, v1

    .line 3159
    .local v2, "it":Z
    const/4 v3, 0x0

    .line 1644
    .local v3, "$i$a$-also-SlidingPaneLayout$drawChild$2":I
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .end local v2    # "it":Z
    .end local v3    # "$i$a$-also-SlidingPaneLayout$drawChild$2":I
    return v1
.end method

.method public drawableHotspotChanged(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 904
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->drawableHotspotChanged(FF)V

    .line 906
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->userResizingDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3159
    .local v0, "it":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 906
    .local v1, "$i$a$-let-SlidingPaneLayout$drawableHotspotChanged$1":I
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 907
    .end local v0    # "it":Landroid/graphics/drawable/Drawable;
    .end local v1    # "$i$a$-let-SlidingPaneLayout$drawableHotspotChanged$1":I
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 893
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 895
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->userResizingDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .local v0, "$this$drawableStateChanged_u24lambda_u2410":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 896
    .local v1, "$i$a$-apply-SlidingPaneLayout$drawableStateChanged$1":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getDrawableState()[I

    move-result-object v2

    const-string v3, "getDrawableState(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->createUserResizingDividerDrawableState([I)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 897
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 899
    :cond_0
    nop

    .line 895
    .end local v0    # "$this$drawableStateChanged_u24lambda_u2410":Landroid/graphics/drawable/Drawable;
    .end local v1    # "$i$a$-apply-SlidingPaneLayout$drawableStateChanged$1":I
    nop

    .line 900
    :cond_1
    return-void
.end method

.method public final findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 2
    .param p1, "accessibilityId"    # I

    .line 2330
    nop

    .line 2340
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, p1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->findViewByAccessibilityIdRootedAtCurrentView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2341
    :catch_0
    move-exception v0

    .line 2342
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 2330
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1883
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1901
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1887
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 1888
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0

    .line 1889
    :cond_0
    if-nez p1, :cond_1

    .line 1890
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 1892
    :cond_1
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 1887
    :goto_0
    return-object v0
.end method

.method public getCoveredFadeColor()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This field is no longer populated by SlidingPaneLayout"
    .end annotation

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public final getLockMode()I
    .locals 1

    .line 330
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->lockMode:I

    return v0
.end method

.method public final getPaneSpacing()I
    .locals 1

    .line 637
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->paneSpacing:I

    return v0
.end method

.method public getParallaxDistance()I
    .locals 1

    .line 355
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->parallaxDistance:I

    return v0
.end method

.method public getSliderFadeColor()I
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "This field is no longer populated by SlidingPaneLayout."
    .end annotation

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public final getSplitDividerPosition()I
    .locals 1

    .line 495
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->splitDividerPosition:I

    return v0
.end method

.method public final getVisualDividerPosition()I
    .locals 13

    .line 515
    nop

    .line 516
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isUserResizable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto/16 :goto_3

    .line 517
    :cond_0
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDividerDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->draggableDividerHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->getDragPositionX()I

    move-result v0

    goto/16 :goto_3

    .line 518
    :cond_1
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->splitDividerPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 520
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->paneSpacing:I

    .line 521
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    .line 522
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 519
    nop

    .line 523
    .local v0, "paneSpacing":I
    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->splitDividerPosition:I

    .line 524
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    .line 525
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .end local v0    # "paneSpacing":I
    goto/16 :goto_3

    .line 528
    :cond_2
    const/4 v0, 0x0

    .line 529
    .local v0, "leftChild":Landroid/view/View;
    const/4 v2, 0x0

    .line 530
    .local v2, "rightChild":Landroid/view/View;
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtl()Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "getChildAt(...)"

    if-eqz v3, :cond_3

    .line 531
    invoke-virtual {p0, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    .end local v0    # "leftChild":Landroid/view/View;
    .local v3, "leftChild":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v2    # "rightChild":Landroid/view/View;
    .local v0, "rightChild":Landroid/view/View;
    goto :goto_0

    .line 534
    .end local v3    # "leftChild":Landroid/view/View;
    .local v0, "leftChild":Landroid/view/View;
    .restart local v2    # "rightChild":Landroid/view/View;
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    .line 535
    .end local v0    # "leftChild":Landroid/view/View;
    .restart local v3    # "leftChild":Landroid/view/View;
    invoke-virtual {p0, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    .end local v2    # "rightChild":Landroid/view/View;
    .local v0, "rightChild":Landroid/view/View;
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v1

    move-object v2, v3

    .local v2, "$this$spLayoutParams$iv":Landroid/view/View;
    move-object v4, p0

    .local v4, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    const/4 v5, 0x0

    .line 3160
    .local v5, "$i$f$getSpLayoutParams":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 3161
    .local v6, "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4, v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v7

    const/16 v8, 0x20

    const-string v9, " had unexpected LayoutParams: "

    const-string v10, "Unexpected child: "

    const-string v11, "SlidingPaneLayout"

    if-nez v7, :cond_4

    .line 3162
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    invoke-virtual {v4, v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    goto :goto_1

    .line 3165
    :cond_4
    move-object v7, v6

    .line 3161
    :goto_1
    nop

    .line 3162
    const-string v12, "null cannot be cast to non-null type androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 3161
    nop

    .end local v2    # "$this$spLayoutParams$iv":Landroid/view/View;
    .end local v4    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .end local v5    # "$i$f$getSpLayoutParams":I
    .end local v6    # "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    .line 537
    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 538
    move-object v2, v0

    .restart local v2    # "$this$spLayoutParams$iv":Landroid/view/View;
    move-object v4, p0

    .restart local v4    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    const/4 v5, 0x0

    .line 3166
    .restart local v5    # "$i$f$getSpLayoutParams":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 3167
    .restart local v6    # "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4, v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 3168
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    invoke-virtual {v4, v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    goto :goto_2

    .line 3171
    :cond_5
    move-object v7, v6

    .line 3167
    :goto_2
    nop

    .line 3168
    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 3167
    nop

    .end local v2    # "$this$spLayoutParams$iv":Landroid/view/View;
    .end local v4    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .end local v5    # "$i$f$getSpLayoutParams":I
    .end local v6    # "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    .line 537
    sub-int/2addr v1, v2

    .line 538
    nop

    .line 537
    div-int/lit8 v1, v1, 0x2

    move v0, v1

    .line 540
    .end local v0    # "rightChild":Landroid/view/View;
    .end local v3    # "leftChild":Landroid/view/View;
    :goto_3
    return v0
.end method

.method public final isAccessibilityEnabledForTesting$slidingpanelayout_release()Z
    .locals 1

    .line 410
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isAccessibilityEnabledForTesting:Z

    return v0
.end method

.method public final isChildClippingToResizeDividerEnabled()Z
    .locals 1

    .line 623
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isChildClippingToResizeDividerEnabled:Z

    return v0
.end method

.method public final isDividerDragging()Z
    .locals 1

    .line 480
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->draggableDividerHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->isDragging()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 4

    .line 1566
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->currentSlideOffset:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpg-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public final isOverlappingEnabled()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOverlappingEnabled:Z

    return v0
.end method

.method public isSlideable()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->_isSlideable:Z

    return v0
.end method

.method public final isUserResizable()Z
    .locals 1

    .line 620
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isUserResizingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->userResizingDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isUserResizingEnabled()Z
    .locals 1

    .line 603
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isUserResizingEnabled:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 913
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 914
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->userResizingDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 915
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 936
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 937
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->awaitingFirstLayout:Z

    .line 938
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->whileAttachedToVisibleWindowJob:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 939
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 967
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->whileAttachedToVisibleWindowJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 968
    :cond_0
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->awaitingFirstLayout:Z

    .line 969
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 970
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1374
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->selectActiveTouchHandler()Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1250
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->foldingFeature:Landroidx/window/layout/FoldingFeature;

    .line 1251
    .local v1, "foldingFeature":Landroidx/window/layout/FoldingFeature;
    nop

    .line 1252
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    .line 1253
    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->splitDividerPosition:I

    if-ne v2, v3, :cond_0

    .line 1254
    if-eqz v1, :cond_0

    .line 1259
    invoke-direct {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->remeasureForFoldingFeature(Landroidx/window/layout/FoldingFeature;)Z

    .line 1262
    :cond_0
    invoke-direct {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtl()Z

    move-result v2

    .line 1263
    .local v2, "isLayoutRtl":Z
    sub-int v4, p4, p2

    .line 1264
    .local v4, "width":I
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v5

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v5

    .line 1265
    .local v5, "paddingStart":I
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v6

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v6

    .line 1266
    .local v6, "paddingEnd":I
    :goto_1
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v7

    .line 1267
    .local v7, "paddingTop":I
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v8

    .line 1268
    .local v8, "childCount":I
    move v9, v5

    .line 1269
    .local v9, "xStart":I
    move v10, v9

    .line 1270
    .local v10, "nextXStart":I
    iget-boolean v11, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->awaitingFirstLayout:Z

    if-eqz v11, :cond_4

    .line 1271
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-boolean v11, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->preservedOpenState:Z

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_2
    iput v11, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->currentSlideOffset:F

    .line 1273
    :cond_4
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v8, :cond_e

    .line 1274
    invoke-virtual {v0, v11}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1275
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_5

    .line 1276
    move-object/from16 v18, v1

    move/from16 v19, v2

    goto/16 :goto_a

    .line 1278
    :cond_5
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v13

    .local v14, "$this$spLayoutParams$iv":Landroid/view/View;
    move-object/from16 v15, p0

    .local v15, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    const/16 v16, 0x0

    .line 3233
    .local v16, "$i$f$getSpLayoutParams":I
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3234
    .local v3, "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v15, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 3235
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v1

    .end local v1    # "foldingFeature":Landroidx/window/layout/FoldingFeature;
    .local v18, "foldingFeature":Landroidx/window/layout/FoldingFeature;
    const-string v1, "Unexpected child: "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v12, " had unexpected LayoutParams: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v12, 0x20

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v12, "SlidingPaneLayout"

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    invoke-virtual {v15, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_4

    .line 3238
    .end local v18    # "foldingFeature":Landroidx/window/layout/FoldingFeature;
    .restart local v1    # "foldingFeature":Landroidx/window/layout/FoldingFeature;
    :cond_6
    move-object/from16 v18, v1

    .end local v1    # "foldingFeature":Landroidx/window/layout/FoldingFeature;
    .restart local v18    # "foldingFeature":Landroidx/window/layout/FoldingFeature;
    move-object v1, v3

    .line 3234
    :goto_4
    nop

    .line 3235
    const-string v12, "null cannot be cast to non-null type androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams"

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 3234
    nop

    .line 1278
    .end local v3    # "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    .end local v14    # "$this$spLayoutParams$iv":Landroid/view/View;
    .end local v15    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .end local v16    # "$i$f$getSpLayoutParams":I
    nop

    .line 1279
    .local v1, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1280
    .local v3, "childWidth":I
    const/4 v12, 0x0

    .line 1281
    .local v12, "offset":I
    iget-boolean v14, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v14, :cond_9

    .line 1282
    iget v14, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v15, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v14, v15

    .line 1283
    .local v14, "margin":I
    sub-int v15, v4, v6

    invoke-static {v10, v15}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v15

    sub-int/2addr v15, v9

    sub-int/2addr v15, v14

    .line 1284
    .local v15, "range":I
    iput v15, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->slideRange:I

    .line 1285
    if-eqz v2, :cond_7

    move/from16 v19, v2

    .end local v2    # "isLayoutRtl":Z
    .local v19, "isLayoutRtl":Z
    iget v2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    goto :goto_5

    .end local v19    # "isLayoutRtl":Z
    .restart local v2    # "isLayoutRtl":Z
    :cond_7
    move/from16 v19, v2

    .end local v2    # "isLayoutRtl":Z
    .restart local v19    # "isLayoutRtl":Z
    iget v2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    .line 1286
    .local v2, "lpMargin":I
    :goto_5
    add-int v20, v9, v2

    add-int v20, v20, v15

    div-int/lit8 v21, v3, 0x2

    move/from16 v22, v2

    .end local v2    # "lpMargin":I
    .local v22, "lpMargin":I
    add-int v2, v20, v21

    move/from16 v20, v3

    .end local v3    # "childWidth":I
    .local v20, "childWidth":I
    sub-int v3, v4, v6

    if-le v2, v3, :cond_8

    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 1287
    int-to-float v2, v15

    iget v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->currentSlideOffset:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 1288
    .local v2, "pos":I
    add-int v3, v2, v22

    add-int/2addr v9, v3

    .line 1289
    int-to-float v3, v2

    move-object/from16 v21, v1

    .end local v1    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .local v21, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->slideRange:I

    int-to-float v1, v1

    div-float/2addr v3, v1

    iput v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->currentSlideOffset:F

    .end local v2    # "pos":I
    .end local v14    # "margin":I
    .end local v15    # "range":I
    .end local v22    # "lpMargin":I
    goto :goto_7

    .line 1290
    .end local v19    # "isLayoutRtl":Z
    .end local v20    # "childWidth":I
    .end local v21    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .restart local v1    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .local v2, "isLayoutRtl":Z
    .restart local v3    # "childWidth":I
    :cond_9
    move-object/from16 v21, v1

    move/from16 v19, v2

    move/from16 v20, v3

    .end local v1    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v2    # "isLayoutRtl":Z
    .end local v3    # "childWidth":I
    .restart local v19    # "isLayoutRtl":Z
    .restart local v20    # "childWidth":I
    .restart local v21    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getParallaxDistance()I

    move-result v1

    if-eqz v1, :cond_a

    .line 1291
    const/4 v1, 0x1

    int-to-float v1, v1

    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->currentSlideOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getParallaxDistance()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    float-to-int v12, v1

    .line 1292
    move v9, v10

    goto :goto_7

    .line 1294
    :cond_a
    move v9, v10

    .line 1296
    :goto_7
    const/4 v1, 0x0

    .line 1297
    .local v1, "childRight":I
    const/4 v2, 0x0

    .line 1298
    .local v2, "childLeft":I
    if-eqz v19, :cond_b

    .line 1299
    sub-int v3, v4, v9

    add-int/2addr v3, v12

    .line 1300
    .end local v1    # "childRight":I
    .local v3, "childRight":I
    sub-int v1, v3, v20

    .end local v2    # "childLeft":I
    .local v1, "childLeft":I
    goto :goto_8

    .line 1302
    .end local v3    # "childRight":I
    .local v1, "childRight":I
    .restart local v2    # "childLeft":I
    :cond_b
    sub-int v2, v9, v12

    .line 1303
    add-int v3, v2, v20

    move v1, v2

    .line 1305
    .end local v2    # "childLeft":I
    .local v1, "childLeft":I
    .restart local v3    # "childRight":I
    :goto_8
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v7

    .line 1306
    .local v2, "childBottom":I
    invoke-virtual {v13, v1, v7, v3, v2}, Landroid/view/View;->layout(IIII)V

    .line 1309
    iget v14, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->paneSpacing:I

    sub-int v15, v4, v5

    sub-int/2addr v15, v6

    invoke-static {v14, v15}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v14

    .line 1308
    nop

    .line 1313
    .local v14, "paneSpacing":I
    nop

    .line 1314
    if-eqz v18, :cond_c

    .line 1315
    invoke-interface/range {v18 .. v18}, Landroidx/window/layout/FoldingFeature;->getOrientation()Landroidx/window/layout/FoldingFeature$Orientation;

    move-result-object v15

    move/from16 v16, v1

    .end local v1    # "childLeft":I
    .local v16, "childLeft":I
    sget-object v1, Landroidx/window/layout/FoldingFeature$Orientation;->VERTICAL:Landroidx/window/layout/FoldingFeature$Orientation;

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1316
    invoke-interface/range {v18 .. v18}, Landroidx/window/layout/FoldingFeature;->isSeparating()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1318
    invoke-interface/range {v18 .. v18}, Landroidx/window/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, v14

    goto :goto_9

    .line 1314
    .end local v16    # "childLeft":I
    .restart local v1    # "childLeft":I
    :cond_c
    move/from16 v16, v1

    .line 1321
    .end local v1    # "childLeft":I
    .restart local v16    # "childLeft":I
    :cond_d
    move v1, v14

    .line 1313
    :goto_9
    nop

    .line 1312
    nop

    .line 1323
    .local v1, "nextXOffset":I
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v17

    add-int v15, v15, v17

    add-int/2addr v10, v15

    .line 1273
    .end local v1    # "nextXOffset":I
    .end local v2    # "childBottom":I
    .end local v3    # "childRight":I
    .end local v12    # "offset":I
    .end local v13    # "child":Landroid/view/View;
    .end local v14    # "paneSpacing":I
    .end local v16    # "childLeft":I
    .end local v20    # "childWidth":I
    .end local v21    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    :goto_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v18

    move/from16 v2, v19

    const/4 v3, -0x1

    goto/16 :goto_3

    .end local v18    # "foldingFeature":Landroidx/window/layout/FoldingFeature;
    .end local v19    # "isLayoutRtl":Z
    .local v1, "foldingFeature":Landroidx/window/layout/FoldingFeature;
    .local v2, "isLayoutRtl":Z
    :cond_e
    move-object/from16 v18, v1

    move/from16 v19, v2

    .line 1325
    .end local v1    # "foldingFeature":Landroidx/window/layout/FoldingFeature;
    .end local v2    # "isLayoutRtl":Z
    .end local v11    # "i":I
    .restart local v18    # "foldingFeature":Landroidx/window/layout/FoldingFeature;
    .restart local v19    # "isLayoutRtl":Z
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isUserResizable()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1326
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getVisualDividerPosition()I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->updateGestureExclusion(I)V

    .line 1328
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->invalidate()V

    .line 1329
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_f

    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isAccessibilityEnabledForTesting:Z

    if-eqz v1, :cond_11

    .line 1330
    :cond_f
    invoke-direct {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sendDividerPositionUpdateA11yEvents()V

    goto :goto_b

    .line 1333
    :cond_10
    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->updateGestureExclusion(I)V

    .line 1335
    :cond_11
    :goto_b
    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->awaitingFirstLayout:Z

    if-eqz v1, :cond_13

    .line 1336
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1337
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getParallaxDistance()I

    move-result v1

    if-eqz v1, :cond_12

    .line 1338
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->currentSlideOffset:F

    invoke-direct {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 1341
    :cond_12
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->slideableView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    .line 1343
    :cond_13
    const/4 v15, 0x0

    iput-boolean v15, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->awaitingFirstLayout:Z

    .line 1344
    return-void
.end method

.method protected onMeasure(II)V
    .locals 47
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 979
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 980
    .local v2, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 981
    .local v3, "widthSize":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 982
    .local v4, "heightMode":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 983
    .local v5, "heightSize":I
    const/4 v6, 0x0

    .line 984
    .local v6, "layoutHeight":I
    const/4 v7, 0x0

    .line 985
    .local v7, "maxLayoutHeight":I
    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 987
    :sswitch_0
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v9

    sub-int v7, v8, v9

    .line 988
    move v6, v7

    goto :goto_0

    .line 990
    :sswitch_1
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v9

    sub-int v7, v8, v9

    .line 992
    :goto_0
    const/4 v8, 0x0

    .line 993
    .local v8, "weightSum":F
    const/4 v9, 0x0

    .line 994
    .local v9, "canSlide":Z
    invoke-direct {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtl()Z

    move-result v10

    .line 995
    .local v10, "isLayoutRtl":Z
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v11

    sub-int v11, v3, v11

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v11

    .line 997
    .local v11, "widthAvailable":I
    iget v13, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->paneSpacing:I

    invoke-static {v13, v11}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v13

    invoke-static {v13, v12}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v13

    .line 999
    .local v13, "paneSpacing":I
    const/4 v14, 0x0

    .local v14, "widthRemaining":I
    sub-int v14, v11, v13

    .line 1000
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v15

    .line 1001
    .local v15, "childCount":I
    const/4 v12, 0x2

    if-gt v15, v12, :cond_2a

    .line 1006
    const/4 v12, 0x0

    iput-object v12, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->slideableView:Landroid/view/View;

    .line 1009
    iget-boolean v12, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOverlappingEnabled:Z

    .line 1011
    .local v12, "allowOverlappingPanes":Z
    const/16 v16, 0x0

    .line 1016
    .local v16, "skippedChildMeasure":Z
    move/from16 v17, v4

    .end local v4    # "heightMode":I
    .local v17, "heightMode":I
    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    .local v4, "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    const/16 v18, 0x0

    .line 3185
    .local v18, "$i$f$forEachIndexed":I
    move/from16 v19, v5

    .end local v5    # "heightSize":I
    .local v19, "heightSize":I
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move/from16 v20, v16

    move/from16 v16, v8

    const/4 v8, 0x0

    .end local v8    # "weightSum":F
    .local v16, "weightSum":F
    .local v20, "skippedChildMeasure":Z
    :goto_1
    move/from16 v21, v10

    .end local v10    # "isLayoutRtl":Z
    .local v21, "isLayoutRtl":Z
    const-string v10, "null cannot be cast to non-null type androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams"

    move/from16 v23, v11

    .end local v11    # "widthAvailable":I
    .local v23, "widthAvailable":I
    const-string v11, " had unexpected LayoutParams: "

    move/from16 v25, v12

    .end local v12    # "allowOverlappingPanes":Z
    .local v25, "allowOverlappingPanes":Z
    const-string v12, "Unexpected child: "

    move/from16 v26, v13

    .end local v13    # "paneSpacing":I
    .local v26, "paneSpacing":I
    const-string v13, "SlidingPaneLayout"

    move/from16 v27, v15

    .end local v15    # "childCount":I
    .local v27, "childCount":I
    const-string v15, "getChildAt(index)"

    move/from16 v28, v9

    .end local v9    # "canSlide":Z
    .local v28, "canSlide":Z
    const/16 v29, 0x0

    const/16 v31, 0x1

    if-ge v8, v5, :cond_10

    .line 3186
    .local v8, "index$iv":I
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move v15, v8

    .local v9, "child":Landroid/view/View;
    .local v15, "i":I
    const/16 v33, 0x0

    .line 1017
    .local v33, "$i$a$-forEachIndexed-SlidingPaneLayout$onMeasure$1":I
    move-object/from16 v34, v9

    .local v34, "$this$spLayoutParams$iv":Landroid/view/View;
    move-object/from16 v35, p0

    .local v35, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object/from16 v36, v34

    .end local v34    # "$this$spLayoutParams$iv":Landroid/view/View;
    .local v36, "$this$spLayoutParams$iv":Landroid/view/View;
    const/16 v34, 0x0

    .line 3187
    .local v34, "$i$f$getSpLayoutParams":I
    move-object/from16 v37, v4

    .end local v4    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .local v37, "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 3188
    .local v4, "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    move/from16 v38, v5

    move-object/from16 v5, v35

    .end local v35    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .local v5, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    invoke-virtual {v5, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v35

    if-nez v35, :cond_0

    .line 3189
    move/from16 v35, v8

    .end local v8    # "index$iv":I
    .local v35, "index$iv":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v12, v36

    .end local v36    # "$this$spLayoutParams$iv":Landroid/view/View;
    .local v12, "$this$spLayoutParams$iv":Landroid/view/View;
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v11, 0x20

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    invoke-virtual {v5, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    goto :goto_2

    .line 3192
    .end local v12    # "$this$spLayoutParams$iv":Landroid/view/View;
    .end local v35    # "index$iv":I
    .restart local v8    # "index$iv":I
    .restart local v36    # "$this$spLayoutParams$iv":Landroid/view/View;
    :cond_0
    move/from16 v35, v8

    move-object/from16 v12, v36

    .end local v8    # "index$iv":I
    .end local v36    # "$this$spLayoutParams$iv":Landroid/view/View;
    .restart local v12    # "$this$spLayoutParams$iv":Landroid/view/View;
    .restart local v35    # "index$iv":I
    move-object v8, v4

    .line 3188
    :goto_2
    nop

    .line 3189
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 3188
    nop

    .line 1017
    .end local v4    # "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .end local v12    # "$this$spLayoutParams$iv":Landroid/view/View;
    .end local v34    # "$i$f$getSpLayoutParams":I
    nop

    .line 1018
    .local v8, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 1019
    const/4 v4, 0x0

    iput-boolean v4, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    .line 1020
    move/from16 v34, v2

    move/from16 v9, v28

    goto/16 :goto_b

    .line 1022
    :cond_1
    iget v4, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    cmpl-float v4, v4, v29

    if-lez v4, :cond_3

    .line 1023
    iget v4, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    add-float v4, v16, v4

    .line 1029
    .end local v16    # "weightSum":F
    .local v4, "weightSum":F
    iget v5, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v5, :cond_2

    .line 1030
    const/4 v5, 0x1

    .line 1031
    .end local v20    # "skippedChildMeasure":Z
    .local v5, "skippedChildMeasure":Z
    move/from16 v34, v2

    move/from16 v16, v4

    move/from16 v20, v5

    move/from16 v9, v28

    goto/16 :goto_b

    .line 1029
    .end local v5    # "skippedChildMeasure":Z
    .restart local v20    # "skippedChildMeasure":Z
    :cond_2
    move/from16 v16, v4

    .line 1034
    .end local v4    # "weightSum":F
    .restart local v16    # "weightSum":F
    :cond_3
    iget v4, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v5, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 1036
    .local v4, "horizontalMargin":I
    if-eqz v25, :cond_4

    move/from16 v5, v23

    goto :goto_3

    :cond_4
    move v5, v14

    .line 1035
    :goto_3
    nop

    .line 1040
    .local v5, "widthAvailableToChild":I
    iget v10, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    packed-switch v10, :pswitch_data_0

    .line 1052
    iget v10, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_5

    .line 1049
    :pswitch_0
    sub-int v10, v5, v4

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v10

    .line 1050
    nop

    .line 1048
    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_5

    .line 1043
    :pswitch_1
    const/4 v11, 0x0

    sub-int v10, v5, v4

    invoke-static {v10, v11}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v10

    .line 1044
    if-nez v2, :cond_5

    move v11, v2

    goto :goto_4

    .line 1045
    :cond_5
    const/high16 v11, -0x80000000

    .line 1042
    :goto_4
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1040
    :goto_5
    nop

    .line 1039
    nop

    .line 1054
    .local v10, "childWidthSpec":I
    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 1057
    .local v11, "childWidthSize":I
    nop

    .line 1058
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v12

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v13

    add-int/2addr v12, v13

    iget v13, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iget v13, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    .line 1059
    iget v13, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    .line 1056
    invoke-static {v1, v12, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v12

    .line 1055
    nop

    .line 1061
    .local v12, "childHeightSpec":I
    nop

    .line 1062
    if-nez v25, :cond_a

    .line 1063
    move-object v13, v8

    .local v13, "$this$canInfluenceParentSize$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    const/16 v22, 0x0

    .line 3193
    .local v22, "$i$f$getCanInfluenceParentSize":I
    move/from16 v34, v2

    .end local v2    # "widthMode":I
    .local v34, "widthMode":I
    iget v2, v13, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v24, v4

    const/4 v4, -0x1

    .end local v4    # "horizontalMargin":I
    .local v24, "horizontalMargin":I
    if-eq v2, v4, :cond_6

    iget v2, v13, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v2, :cond_7

    :cond_6
    iget v2, v13, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    iget v2, v13, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    if-eqz v2, :cond_8

    :cond_7
    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    .line 1063
    .end local v13    # "$this$canInfluenceParentSize$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v22    # "$i$f$getCanInfluenceParentSize":I
    :goto_6
    if-nez v4, :cond_b

    .line 1064
    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_9

    goto :goto_7

    .line 1079
    :cond_9
    sub-int/2addr v14, v11

    .line 1080
    const/16 v20, 0x1

    goto :goto_9

    .line 1062
    .end local v24    # "horizontalMargin":I
    .end local v34    # "widthMode":I
    .restart local v2    # "widthMode":I
    .restart local v4    # "horizontalMargin":I
    :cond_a
    move/from16 v34, v2

    move/from16 v24, v4

    .line 1066
    .end local v2    # "widthMode":I
    .end local v4    # "horizontalMargin":I
    .restart local v24    # "horizontalMargin":I
    .restart local v34    # "widthMode":I
    :cond_b
    :goto_7
    invoke-virtual {v9, v10, v12}, Landroid/view/View;->measure(II)V

    .line 1067
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1068
    .local v2, "childWidth":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1069
    .local v4, "childHeight":I
    if-le v4, v6, :cond_c

    .line 1070
    sparse-switch v17, :sswitch_data_1

    goto :goto_8

    .line 1073
    :sswitch_2
    move v6, v4

    goto :goto_8

    .line 1071
    :sswitch_3
    invoke-static {v4, v7}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v6

    .line 1076
    :cond_c
    :goto_8
    sub-int/2addr v14, v2

    .line 1083
    .end local v2    # "childWidth":I
    .end local v4    # "childHeight":I
    :goto_9
    if-lez v15, :cond_f

    .line 1084
    if-eqz v25, :cond_d

    if-gez v14, :cond_d

    const/4 v2, 0x1

    goto :goto_a

    :cond_d
    const/4 v2, 0x0

    :goto_a
    iput-boolean v2, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    .line 1085
    iget-boolean v2, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    or-int v2, v28, v2

    .line 1086
    .end local v28    # "canSlide":Z
    .local v2, "canSlide":Z
    iget-boolean v4, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v4, :cond_e

    .line 1087
    iput-object v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->slideableView:Landroid/view/View;

    .line 1090
    :cond_e
    move/from16 v28, v2

    .end local v2    # "canSlide":Z
    .restart local v28    # "canSlide":Z
    :cond_f
    move/from16 v9, v28

    .line 3186
    .end local v5    # "widthAvailableToChild":I
    .end local v8    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v10    # "childWidthSpec":I
    .end local v11    # "childWidthSize":I
    .end local v12    # "childHeightSpec":I
    .end local v15    # "i":I
    .end local v24    # "horizontalMargin":I
    .end local v28    # "canSlide":Z
    .end local v33    # "$i$a$-forEachIndexed-SlidingPaneLayout$onMeasure$1":I
    .local v9, "canSlide":Z
    :goto_b
    nop

    .line 3185
    nop

    .end local v35    # "index$iv":I
    add-int/lit8 v8, v35, 0x1

    move/from16 v10, v21

    move/from16 v11, v23

    move/from16 v12, v25

    move/from16 v13, v26

    move/from16 v15, v27

    move/from16 v2, v34

    move-object/from16 v4, v37

    move/from16 v5, v38

    goto/16 :goto_1

    .line 3194
    .end local v9    # "canSlide":Z
    .end local v34    # "widthMode":I
    .end local v37    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .local v2, "widthMode":I
    .local v4, "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .restart local v28    # "canSlide":Z
    :cond_10
    move/from16 v34, v2

    move-object/from16 v37, v4

    .line 1099
    .end local v2    # "widthMode":I
    .end local v4    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .end local v18    # "$i$f$forEachIndexed":I
    .restart local v34    # "widthMode":I
    if-nez v28, :cond_11

    cmpl-float v2, v16, v29

    if-gtz v2, :cond_11

    if-eqz v20, :cond_27

    .line 1100
    :cond_11
    const/4 v2, 0x0

    .line 1101
    .local v2, "totalMeasuredWidth":I
    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    .restart local v4    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .line 3195
    .local v5, "$i$f$forEachIndexed":I
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v9, v6

    const/4 v6, 0x0

    .end local v6    # "layoutHeight":I
    .local v9, "layoutHeight":I
    :goto_c
    if-ge v6, v8, :cond_26

    .line 3196
    .local v6, "index$iv":I
    move/from16 v18, v2

    .end local v2    # "totalMeasuredWidth":I
    .local v18, "totalMeasuredWidth":I
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v33, v6

    .local v2, "child":Landroid/view/View;
    .local v33, "index":I
    const/16 v35, 0x0

    .line 1102
    .local v35, "$i$a$-forEachIndexed-SlidingPaneLayout$onMeasure$2":I
    move-object/from16 v36, v4

    .end local v4    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .local v36, "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    move/from16 v37, v5

    const/16 v5, 0x8

    .end local v5    # "$i$f$forEachIndexed":I
    .local v37, "$i$f$forEachIndexed":I
    if-eq v4, v5, :cond_25

    .line 1103
    move-object v4, v2

    .local v4, "$this$spLayoutParams$iv":Landroid/view/View;
    move-object/from16 v22, p0

    .local v22, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    const/16 v38, 0x0

    .line 3197
    .local v38, "$i$f$getSpLayoutParams":I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 3198
    .local v5, "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    move/from16 v39, v6

    move-object/from16 v6, v22

    .end local v22    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .local v6, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .local v39, "index$iv":I
    invoke-virtual {v6, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v22

    if-nez v22, :cond_12

    .line 3199
    move/from16 v22, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v40, v4

    const/16 v4, 0x20

    .end local v4    # "$this$spLayoutParams$iv":Landroid/view/View;
    .local v40, "$this$spLayoutParams$iv":Landroid/view/View;
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    invoke-virtual {v6, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    goto :goto_d

    .line 3202
    .end local v40    # "$this$spLayoutParams$iv":Landroid/view/View;
    .restart local v4    # "$this$spLayoutParams$iv":Landroid/view/View;
    :cond_12
    move-object/from16 v40, v4

    move/from16 v22, v8

    const/16 v4, 0x20

    .end local v4    # "$this$spLayoutParams$iv":Landroid/view/View;
    .restart local v40    # "$this$spLayoutParams$iv":Landroid/view/View;
    move-object v8, v5

    .line 3198
    :goto_d
    nop

    .line 3199
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 3198
    nop

    .line 1103
    .end local v5    # "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .end local v38    # "$i$f$getSpLayoutParams":I
    .end local v40    # "$this$spLayoutParams$iv":Landroid/view/View;
    nop

    .line 1104
    .restart local v8    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    move-object v5, v8

    .local v5, "$this$canInfluenceParentSize$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    const/4 v6, 0x0

    .line 3203
    .local v6, "$i$f$getCanInfluenceParentSize":I
    iget v4, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    move/from16 v38, v6

    const/4 v6, -0x1

    .end local v6    # "$i$f$getCanInfluenceParentSize":I
    .local v38, "$i$f$getCanInfluenceParentSize":I
    if-eq v4, v6, :cond_13

    iget v4, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v4, :cond_14

    :cond_13
    iget v4, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_15

    iget v4, v5, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    if-eqz v4, :cond_15

    :cond_14
    const/4 v4, 0x1

    goto :goto_e

    :cond_15
    const/4 v4, 0x0

    .line 1104
    .end local v5    # "$this$canInfluenceParentSize$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v38    # "$i$f$getCanInfluenceParentSize":I
    :goto_e
    if-eqz v4, :cond_18

    move-object v4, v8

    .local v4, "$this$weightOnlyWidth$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    const/4 v5, 0x0

    .line 3206
    .local v5, "$i$f$getWeightOnlyWidth":I
    iget v6, v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v6, :cond_16

    iget v6, v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v29

    if-lez v6, :cond_16

    const/4 v4, 0x1

    goto :goto_f

    :cond_16
    const/4 v4, 0x0

    .line 1104
    .end local v4    # "$this$weightOnlyWidth$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v5    # "$i$f$getWeightOnlyWidth":I
    :goto_f
    if-eqz v4, :cond_17

    goto :goto_10

    :cond_17
    const/4 v4, 0x0

    goto :goto_11

    :cond_18
    :goto_10
    const/4 v4, 0x1

    .line 1105
    .local v4, "skippedFirstPass":Z
    :goto_11
    if-eqz v4, :cond_19

    const/4 v5, 0x0

    goto :goto_12

    :cond_19
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1107
    .local v5, "measuredWidth":I
    :goto_12
    nop

    .line 1110
    if-eqz v28, :cond_1a

    move-object v6, v8

    .local v6, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    const/16 v38, 0x0

    .line 3207
    .local v38, "$i$f$getHorizontalMargin$slidingpanelayout_release":I
    move-object/from16 v40, v10

    iget v10, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v41, v10

    iget v10, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int v10, v41, v10

    .line 1110
    .end local v6    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v38    # "$i$f$getHorizontalMargin$slidingpanelayout_release":I
    sub-int v6, v23, v10

    goto/16 :goto_15

    .line 1111
    :cond_1a
    move-object/from16 v40, v10

    iget v6, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v29

    if-lez v6, :cond_1f

    .line 1112
    iget v6, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->splitDividerPosition:I

    .line 1113
    .local v6, "dividerPos":I
    if-nez v28, :cond_1e

    const/4 v10, -0x1

    if-ne v6, v10, :cond_1b

    move/from16 v43, v6

    goto :goto_14

    .line 1120
    :cond_1b
    div-int/lit8 v10, v26, 0x2

    .line 1121
    .local v10, "paneSpacingLeftHalf":I
    sub-int v38, v26, v10

    .line 1123
    .local v38, "paneSpacingRightHalf":I
    nop

    .line 1125
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v41

    sub-int v41, v3, v41

    move/from16 v42, v10

    .end local v10    # "paneSpacingLeftHalf":I
    .local v42, "paneSpacingLeftHalf":I
    sub-int v10, v41, v38

    .line 1124
    invoke-static {v6, v10}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v10

    .line 1127
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v41

    move/from16 v43, v6

    .end local v6    # "dividerPos":I
    .local v43, "dividerPos":I
    add-int v6, v41, v42

    invoke-static {v10, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v6

    .line 1122
    nop

    .line 1128
    .local v6, "clampedPos":I
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 1129
    .local v10, "availableWidthDivider":I
    if-nez v33, :cond_1c

    const/16 v41, 0x1

    goto :goto_13

    :cond_1c
    const/16 v41, 0x0

    :goto_13
    xor-int v41, v41, v21

    if-eqz v41, :cond_1d

    .line 1130
    nop

    .line 1131
    move-object/from16 v41, v8

    .local v41, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    const/16 v44, 0x0

    .line 3208
    .local v44, "$i$f$getHorizontalMargin$slidingpanelayout_release":I
    move/from16 v45, v6

    move-object/from16 v6, v41

    move/from16 v41, v10

    .end local v10    # "availableWidthDivider":I
    .local v6, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .local v41, "availableWidthDivider":I
    .local v45, "clampedPos":I
    iget v10, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v46, v10

    iget v10, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int v10, v46, v10

    .line 1130
    .end local v6    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v44    # "$i$f$getHorizontalMargin$slidingpanelayout_release":I
    sub-int v10, v41, v10

    .line 1132
    nop

    .line 1130
    sub-int v6, v10, v42

    goto :goto_15

    .line 1136
    .end local v41    # "availableWidthDivider":I
    .end local v45    # "clampedPos":I
    .local v6, "clampedPos":I
    .restart local v10    # "availableWidthDivider":I
    :cond_1d
    move/from16 v45, v6

    move/from16 v41, v10

    .line 1137
    .end local v6    # "clampedPos":I
    .end local v10    # "availableWidthDivider":I
    .restart local v41    # "availableWidthDivider":I
    .restart local v45    # "clampedPos":I
    move-object v6, v8

    .local v6, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    const/4 v10, 0x0

    .line 3209
    .local v10, "$i$f$getHorizontalMargin$slidingpanelayout_release":I
    move/from16 v44, v10

    .end local v10    # "$i$f$getHorizontalMargin$slidingpanelayout_release":I
    .restart local v44    # "$i$f$getHorizontalMargin$slidingpanelayout_release":I
    iget v10, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v46, v10

    iget v10, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int v10, v46, v10

    .line 1136
    .end local v6    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v44    # "$i$f$getHorizontalMargin$slidingpanelayout_release":I
    sub-int v6, v23, v10

    .line 1138
    nop

    .line 1136
    sub-int v6, v6, v41

    .line 1139
    nop

    .line 1136
    sub-int v6, v6, v38

    .end local v38    # "paneSpacingRightHalf":I
    .end local v41    # "availableWidthDivider":I
    .end local v42    # "paneSpacingLeftHalf":I
    .end local v43    # "dividerPos":I
    .end local v45    # "clampedPos":I
    goto :goto_15

    .line 1113
    .local v6, "dividerPos":I
    :cond_1e
    move/from16 v43, v6

    .line 1115
    .end local v6    # "dividerPos":I
    .restart local v43    # "dividerPos":I
    :goto_14
    const/4 v6, 0x0

    invoke-static {v14, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v10

    .line 1117
    .local v10, "widthToDistribute":I
    iget v6, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    move/from16 v38, v6

    int-to-float v6, v10

    mul-float v6, v6, v38

    div-float v6, v6, v16

    invoke-static {v6}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v6

    .line 1116
    nop

    .line 1118
    .local v6, "addedWidth":I
    add-int/2addr v6, v5

    .end local v6    # "addedWidth":I
    .end local v10    # "widthToDistribute":I
    goto :goto_15

    .line 1143
    .end local v43    # "dividerPos":I
    :cond_1f
    iget v6, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/4 v10, -0x1

    if-ne v6, v10, :cond_20

    .line 1144
    move-object v6, v8

    .local v6, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    const/16 v32, 0x0

    .line 3210
    .local v32, "$i$f$getHorizontalMargin$slidingpanelayout_release":I
    iget v10, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    move/from16 v41, v10

    iget v10, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int v10, v41, v10

    .line 1144
    .end local v6    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v32    # "$i$f$getHorizontalMargin$slidingpanelayout_release":I
    sub-int v6, v23, v10

    sub-int v6, v6, v18

    goto :goto_15

    .line 1146
    :cond_20
    iget v6, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-lez v6, :cond_21

    iget v6, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    goto :goto_15

    .line 1147
    :cond_21
    move v6, v5

    .line 1107
    :goto_15
    nop

    .line 1106
    nop

    .line 1149
    .local v6, "newWidth":I
    if-nez v4, :cond_23

    if-eq v5, v6, :cond_22

    goto :goto_16

    :cond_22
    move/from16 v30, v5

    goto :goto_17

    .line 1150
    :cond_23
    :goto_16
    move/from16 v30, v5

    const/high16 v10, 0x40000000    # 2.0f

    .end local v5    # "measuredWidth":I
    .local v30, "measuredWidth":I
    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1153
    .local v5, "childWidthSpec":I
    nop

    .line 1154
    nop

    .line 1155
    nop

    .line 1156
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v32

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v41

    add-int v32, v32, v41

    iget v10, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->topMargin:I

    add-int v32, v32, v10

    iget v10, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->bottomMargin:I

    add-int v10, v32, v10

    .line 1152
    invoke-static {v2, v4, v1, v10}, Landroidx/slidingpanelayout/widget/SlidingPaneLayoutKt;->access$getChildHeightMeasureSpec(Landroid/view/View;ZII)I

    move-result v10

    .line 1151
    nop

    .line 1158
    .local v10, "childHeightSpec":I
    invoke-virtual {v2, v5, v10}, Landroid/view/View;->measure(II)V

    .line 1159
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1160
    .local v1, "childHeight":I
    if-le v1, v9, :cond_24

    .line 1161
    sparse-switch v17, :sswitch_data_2

    goto :goto_17

    .line 1164
    :sswitch_4
    move v9, v1

    goto :goto_17

    .line 1162
    :sswitch_5
    invoke-static {v1, v7}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v9

    .line 1168
    .end local v1    # "childHeight":I
    .end local v5    # "childWidthSpec":I
    .end local v10    # "childHeightSpec":I
    :cond_24
    :goto_17
    iget v1, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v6

    iget v5, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    add-int v1, v18, v1

    .line 1169
    .end local v18    # "totalMeasuredWidth":I
    .local v1, "totalMeasuredWidth":I
    move v2, v1

    goto :goto_18

    .line 1102
    .end local v1    # "totalMeasuredWidth":I
    .end local v4    # "skippedFirstPass":Z
    .end local v8    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .end local v30    # "measuredWidth":I
    .end local v39    # "index$iv":I
    .local v6, "index$iv":I
    .restart local v18    # "totalMeasuredWidth":I
    :cond_25
    move/from16 v39, v6

    move/from16 v22, v8

    move-object/from16 v40, v10

    .end local v6    # "index$iv":I
    .restart local v39    # "index$iv":I
    move/from16 v2, v18

    .line 3196
    .end local v18    # "totalMeasuredWidth":I
    .end local v33    # "index":I
    .end local v35    # "$i$a$-forEachIndexed-SlidingPaneLayout$onMeasure$2":I
    .local v2, "totalMeasuredWidth":I
    :goto_18
    nop

    .line 3195
    nop

    .end local v39    # "index$iv":I
    add-int/lit8 v6, v39, 0x1

    move/from16 v1, p2

    move/from16 v8, v22

    move-object/from16 v4, v36

    move/from16 v5, v37

    move-object/from16 v10, v40

    goto/16 :goto_c

    .line 3211
    .end local v36    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .end local v37    # "$i$f$forEachIndexed":I
    .local v4, "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .local v5, "$i$f$forEachIndexed":I
    :cond_26
    move/from16 v18, v2

    move-object/from16 v36, v4

    move/from16 v37, v5

    .end local v2    # "totalMeasuredWidth":I
    .end local v4    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .end local v5    # "$i$f$forEachIndexed":I
    .restart local v18    # "totalMeasuredWidth":I
    .restart local v36    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .restart local v37    # "$i$f$forEachIndexed":I
    move v6, v9

    .line 1176
    .end local v9    # "layoutHeight":I
    .end local v18    # "totalMeasuredWidth":I
    .end local v36    # "$this$forEachIndexed$iv":Landroid/view/ViewGroup;
    .end local v37    # "$i$f$forEachIndexed":I
    .local v6, "layoutHeight":I
    :cond_27
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1177
    .local v1, "measuredHeight":I
    invoke-virtual {v0, v3, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setMeasuredDimension(II)V

    .line 1178
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v2

    move/from16 v9, v28

    .end local v28    # "canSlide":Z
    .local v9, "canSlide":Z
    if-eq v9, v2, :cond_28

    .line 1179
    iput-boolean v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->_isSlideable:Z

    .line 1180
    iget-object v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->overlappingPaneHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;

    invoke-virtual {v2, v9}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dispatchSlideableState(Z)V

    .line 1182
    :cond_28
    iget-object v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->overlappingPaneHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;

    invoke-virtual {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->isIdle()Z

    move-result v2

    if-nez v2, :cond_29

    if-nez v9, :cond_29

    .line 1184
    iget-object v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->overlappingPaneHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;

    invoke-virtual {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->abort()V

    .line 1186
    :cond_29
    return-void

    .line 1001
    .end local v1    # "measuredHeight":I
    .end local v16    # "weightSum":F
    .end local v17    # "heightMode":I
    .end local v19    # "heightSize":I
    .end local v20    # "skippedChildMeasure":Z
    .end local v21    # "isLayoutRtl":Z
    .end local v23    # "widthAvailable":I
    .end local v25    # "allowOverlappingPanes":Z
    .end local v26    # "paneSpacing":I
    .end local v27    # "childCount":I
    .end local v34    # "widthMode":I
    .local v2, "widthMode":I
    .local v4, "heightMode":I
    .local v5, "heightSize":I
    .local v8, "weightSum":F
    .local v10, "isLayoutRtl":Z
    .local v11, "widthAvailable":I
    .local v13, "paneSpacing":I
    .local v15, "childCount":I
    :cond_2a
    move/from16 v34, v2

    .end local v2    # "widthMode":I
    .restart local v34    # "widthMode":I
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1002
    const-string v2, "SlidingPaneLayout: More than two child views are not supported."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x0 -> :sswitch_4
    .end sparse-switch
.end method

.method public onProvideVirtualStructure(Landroid/view/ViewStructure;)V
    .locals 0
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .line 2316
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 1424
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isUserResizable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1428
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 1429
    .local v0, "x":I
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 1430
    .local v1, "y":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->draggableDividerHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;

    invoke-virtual {v2, v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->dividerBoundsContains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1431
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x3f6

    invoke-static {v2, v3}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v2

    return-object v2

    .line 1434
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v2

    return-object v2

    .line 1425
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1914
    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    if-nez v0, :cond_0

    .line 1915
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1916
    return-void

    .line 1918
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1919
    move-object v0, p1

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1920
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane()Z

    goto :goto_0

    .line 1922
    :cond_1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane()Z

    .line 1924
    :goto_0
    move-object v0, p1

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->preservedOpenState:Z

    .line 1925
    move-object v0, p1

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->getLockMode()I

    move-result v0

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->lockMode:I

    .line 1926
    move-object v0, p1

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->getSplitDividerPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setSplitDividerPosition(I)V

    .line 1927
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1905
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1906
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1907
    .local v1, "state":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    move-result v2

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->preservedOpenState:Z

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->setOpen(Z)V

    .line 1908
    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->lockMode:I

    invoke-virtual {v1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->setLockMode(I)V

    .line 1909
    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->splitDividerPosition:I

    invoke-virtual {v1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->setSplitDividerPosition(I)V

    .line 1910
    move-object v2, v1

    check-cast v2, Landroid/os/Parcelable;

    return-object v2
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1347
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1349
    if-eq p1, p3, :cond_0

    .line 1350
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->awaitingFirstLayout:Z

    .line 1352
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1378
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->selectActiveTouchHandler()Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 9
    .param p1, "visibility"    # I

    .line 942
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 943
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->whileAttachedToVisibleWindowJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v3, v0

    .line 3159
    .local v3, "$this$onWindowVisibilityChanged_u24lambda_u2412":Lkotlinx/coroutines/Job;
    const/4 v4, 0x0

    .line 943
    .local v4, "$i$a$-apply-SlidingPaneLayout$onWindowVisibilityChanged$toJoin$1":I
    invoke-static {v3, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .end local v3    # "$this$onWindowVisibilityChanged_u24lambda_u2412":Lkotlinx/coroutines/Job;
    .end local v4    # "$i$a$-apply-SlidingPaneLayout$onWindowVisibilityChanged$toJoin$1":I
    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 944
    .local v0, "toJoin":Lkotlinx/coroutines/Job;
    :goto_0
    nop

    .line 945
    if-eqz p1, :cond_1

    goto :goto_1

    .line 947
    :cond_1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/os/HandlerCompat;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v3

    const-string v4, "createAsync(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2, v1, v2}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->from$default(Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lkotlinx/coroutines/android/HandlerDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    .line 948
    sget-object v5, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$onWindowVisibilityChanged$1;

    invoke-direct {v1, v0, p0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$onWindowVisibilityChanged$1;-><init>(Lkotlinx/coroutines/Job;Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v2

    .line 944
    :goto_1
    iput-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->whileAttachedToVisibleWindowJob:Lkotlinx/coroutines/Job;

    .line 954
    return-void
.end method

.method public open()V
    .locals 0

    .line 1511
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane()Z

    .line 1512
    return-void
.end method

.method public openPane()Z
    .locals 1

    .line 1521
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane(I)Z

    move-result v0

    return v0
.end method

.method public final openPane(ILandroid/view/animation/Interpolator;)Z
    .locals 2
    .param p1, "duration"    # I
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    const-string v0, "interpolator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1470
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->preservedOpenState:Z

    .line 1472
    :cond_0
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->awaitingFirstLayout:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->smoothSlideTo(FILandroid/view/animation/Interpolator;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1476
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 1473
    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->preservedOpenState:Z

    .line 1474
    return v1
.end method

.method public removePanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->overlappingPaneHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;

    invoke-virtual {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->removePanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V

    .line 797
    return-void
.end method

.method public removeSlideableStateListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SlideableStateListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SlideableStateListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->overlappingPaneHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;

    invoke-virtual {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->removeSlideableStateListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SlideableStateListener;)V

    .line 775
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 928
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchBlocker;

    if-eqz v0, :cond_0

    .line 929
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 930
    return-void

    .line 932
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 933
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 1355
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1356
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1357
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->slideableView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->preservedOpenState:Z

    .line 1359
    :cond_1
    return-void
.end method

.method public final setAccessibilityEnabledForTesting$slidingpanelayout_release(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 410
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isAccessibilityEnabledForTesting:Z

    return-void
.end method

.method public final setChildClippingToResizeDividerEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 625
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isChildClippingToResizeDividerEnabled:Z

    if-eq p1, v0, :cond_0

    .line 626
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isChildClippingToResizeDividerEnabled:Z

    .line 627
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->invalidate()V

    .line 629
    :cond_0
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation runtime Lkotlin/Deprecated;
        message = "SlidingPaneLayout no longer uses this field."
    .end annotation

    .line 266
    return-void
.end method

.method public final setLockMode(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 330
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->lockMode:I

    return-void
.end method

.method public final setOnUserResizingDividerClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 654
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->onUserResizingDividerClickListener:Landroid/view/View$OnClickListener;

    .line 655
    return-void
.end method

.method public final setOverlappingEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 374
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOverlappingEnabled:Z

    if-eq p1, v0, :cond_0

    .line 375
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOverlappingEnabled:Z

    .line 376
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->requestLayout()V

    .line 378
    :cond_0
    return-void
.end method

.method public final setPaneSpacing(I)V
    .locals 3
    .param p1, "value"    # I

    .line 640
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 641
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->paneSpacing:I

    if-eq p1, v0, :cond_1

    .line 642
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->paneSpacing:I

    .line 643
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->requestLayout()V

    .line 645
    :cond_1
    return-void

    .line 3159
    :cond_2
    const/4 v0, 0x0

    .line 640
    .local v0, "$i$a$-require-SlidingPaneLayout$paneSpacing$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "paneSpacing can\'t be negative, but the given value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-SlidingPaneLayout$paneSpacing$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;
    .annotation runtime Lkotlin/Deprecated;
        message = "Use {@link #addPanelSlideListener(PanelSlideListener)}"
    .end annotation

    .line 753
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->overlappingPaneHandler:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;

    invoke-virtual {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->setPanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V

    .line 754
    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 0
    .param p1, "parallaxBy"    # I

    .line 359
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->parallaxDistance:I

    .line 360
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->requestLayout()V

    .line 361
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Lkotlin/Deprecated;
        message = "Renamed to {@link #setShadowDrawableLeft(Drawable d)} to support LTR (left to\n      right language) and {@link #setShadowDrawableRight(Drawable d)} to support RTL (right to left\n      language) during opening/closing."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "setShadowDrawableLeft(d)"
            imports = {}
        .end subannotation
    .end annotation

    .line 1729
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1730
    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1737
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->shadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1738
    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1745
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->shadowDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1746
    return-void
.end method

.method public setShadowResource(I)V
    .locals 0
    .param p1, "resId"    # I
    .annotation runtime Lkotlin/Deprecated;
        message = "Renamed to {@link #setShadowResourceLeft(int)} to support LTR (left to\n      right language) and {@link #setShadowResourceRight(int)} to support RTL (right to left\n      language) during opening/closing."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "setShadowResourceLeft(resId)"
            imports = {}
        .end subannotation
    .end annotation

    .line 1761
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowResourceLeft(I)V

    .line 1762
    return-void
.end method

.method public setShadowResourceLeft(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1771
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 1772
    return-void
.end method

.method public setShadowResourceRight(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1781
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    .line 1782
    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 0
    .param p1, "value"    # I
    .annotation runtime Lkotlin/Deprecated;
        message = "SlidingPaneLayout no longer uses this field."
    .end annotation

    .line 255
    return-void
.end method

.method public final setSplitDividerPosition(I)V
    .locals 1
    .param p1, "value"    # I

    .line 497
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->splitDividerPosition:I

    if-eq v0, p1, :cond_0

    .line 498
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->splitDividerPosition:I

    .line 499
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->requestLayout()V

    .line 503
    :cond_0
    return-void
.end method

.method public final setUserResizeBehavior(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;)V
    .locals 1
    .param p1, "userResizeBehavior"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

    const-string/jumbo v0, "userResizeBehavior"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->userResizeBehavior:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

    .line 674
    return-void
.end method

.method public final setUserResizingDividerDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 465
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setUserResizingDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 466
    return-void
.end method

.method public final setUserResizingDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 439
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->userResizingDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 440
    .local v0, "old":Landroid/graphics/drawable/Drawable;
    if-eq p1, v0, :cond_4

    .line 441
    if-eqz v0, :cond_0

    .line 442
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 443
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 445
    :cond_0
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->userResizingDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 446
    if-eqz p1, :cond_3

    .line 447
    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 448
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getDrawableState()[I

    move-result-object v1

    const-string v2, "getDrawableState(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->createUserResizingDividerDrawableState([I)[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 451
    :cond_1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 454
    :cond_3
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->requestLayout()V

    .line 456
    :cond_4
    return-void
.end method

.method public final setUserResizingDividerTint(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 475
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->userResizingDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3159
    .local v0, "$this$setUserResizingDividerTint_u24lambda_u241":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 475
    .local v1, "$i$a$-apply-SlidingPaneLayout$setUserResizingDividerTint$1":I
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 476
    .end local v0    # "$this$setUserResizingDividerTint_u24lambda_u241":Landroid/graphics/drawable/Drawable;
    .end local v1    # "$i$a$-apply-SlidingPaneLayout$setUserResizingDividerTint$1":I
    :cond_0
    return-void
.end method

.method public final setUserResizingEnabled(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 605
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isUserResizingEnabled:Z

    if-eq p1, v0, :cond_0

    .line 606
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isUserResizingEnabled:Z

    .line 607
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->requestLayout()V

    .line 609
    :cond_0
    return-void
.end method

.method public smoothSlideClosed()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Renamed to {@link #closePane()} - this method is going away soon!"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "closePane()"
            imports = {}
        .end subannotation
    .end annotation

    .line 1538
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane()Z

    .line 1539
    return-void
.end method

.method public smoothSlideOpen()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Renamed to {@link #openPane()} - this method is going away soon!"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "openPane()"
            imports = {}
        .end subannotation
    .end annotation

    .line 1503
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane()Z

    .line 1504
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    const-string/jumbo v0, "who"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 910
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->userResizingDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
