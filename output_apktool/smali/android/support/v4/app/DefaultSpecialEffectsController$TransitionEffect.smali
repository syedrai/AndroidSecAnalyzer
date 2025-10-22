.class final Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;
.super Landroid/support/v4/app/SpecialEffectsController$Effect;
.source "DefaultSpecialEffectsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/DefaultSpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransitionEffect"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultSpecialEffectsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSpecialEffectsController.kt\nandroidx/fragment/app/DefaultSpecialEffectsController$TransitionEffect\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1250:1\n1734#2,3:1251\n1734#2,3:1254\n1863#2,2:1257\n1557#2:1259\n1628#2,3:1260\n1863#2,2:1263\n1863#2,2:1266\n1557#2:1268\n1628#2,3:1269\n1863#2,2:1272\n1863#2,2:1274\n1863#2,2:1276\n1734#2,3:1278\n1#3:1265\n*S KotlinDebug\n*F\n+ 1 DefaultSpecialEffectsController.kt\nandroidx/fragment/app/DefaultSpecialEffectsController$TransitionEffect\n*L\n757#1:1251,3\n766#1:1254,3\n772#1:1257,2\n805#1:1259\n805#1:1260,3\n806#1:1263,2\n887#1:1266,2\n913#1:1268\n913#1:1269,3\n914#1:1272,2\n839#1:1274,2\n864#1:1276,2\n834#1:1278,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u00df\u0001\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0016\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000f\u0012\u0016\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000f\u0012\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u0012\u0012\u0016\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00130\rj\u0008\u0012\u0004\u0012\u00020\u0013`\u000f\u0012\u0016\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00130\rj\u0008\u0012\u0004\u0012\u00020\u0013`\u000f\u0012\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000e0\u0012\u0012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000e0\u0012\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020?H\u0016J\u0018\u0010@\u001a\u00020=2\u0006\u0010A\u001a\u00020B2\u0006\u0010>\u001a\u00020?H\u0016J\u0010\u0010C\u001a\u00020=2\u0006\u0010>\u001a\u00020?H\u0016J@\u0010D\u001a\u001e\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000f\u0012\u0004\u0012\u00020\u000b0E2\u0006\u0010>\u001a\u00020?2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J6\u0010F\u001a\u00020=2\u0016\u0010G\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000f2\u0006\u0010>\u001a\u00020?2\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020=0IH\u0002J\u0010\u0010J\u001a\u00020=2\u0006\u0010>\u001a\u00020?H\u0016J(\u0010K\u001a\u00020=2\u0016\u0010L\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000f2\u0006\u0010M\u001a\u00020\u000eH\u0002R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001fR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R!\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R!\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010&R\u001d\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R!\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00130\rj\u0008\u0012\u0004\u0012\u00020\u0013`\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010&R!\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00130\rj\u0008\u0012\u0004\u0012\u00020\u0013`\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010&R\u001d\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000e0\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010)R\u001d\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000e0\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010)R\u0011\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010.R\u0017\u0010/\u001a\u000200\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00081\u00102\u001a\u0004\u00083\u00104R\u001c\u00105\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010$\"\u0004\u00087\u00108R\u0014\u00109\u001a\u00020\u00198VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00089\u0010.R\u0011\u0010:\u001a\u00020\u00198F\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010.\u00a8\u0006N"
    }
    d2 = {
        "Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;",
        "Landroid/support/v4/app/SpecialEffectsController$Effect;",
        "transitionInfos",
        "",
        "Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;",
        "firstOut",
        "Landroid/support/v4/app/SpecialEffectsController$Operation;",
        "lastIn",
        "transitionImpl",
        "Landroid/support/v4/app/FragmentTransitionImpl;",
        "sharedElementTransition",
        "",
        "sharedElementFirstOutViews",
        "Ljava/util/ArrayList;",
        "Landroid/view/View;",
        "Lkotlin/collections/ArrayList;",
        "sharedElementLastInViews",
        "sharedElementNameMapping",
        "Landroidx/collection/ArrayMap;",
        "",
        "enteringNames",
        "exitingNames",
        "firstOutViews",
        "lastInViews",
        "isPop",
        "",
        "<init>",
        "(Ljava/util/List;Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Z)V",
        "getTransitionInfos",
        "()Ljava/util/List;",
        "getFirstOut",
        "()Landroid/support/v4/app/SpecialEffectsController$Operation;",
        "getLastIn",
        "getTransitionImpl",
        "()Landroid/support/v4/app/FragmentTransitionImpl;",
        "getSharedElementTransition",
        "()Ljava/lang/Object;",
        "getSharedElementFirstOutViews",
        "()Ljava/util/ArrayList;",
        "getSharedElementLastInViews",
        "getSharedElementNameMapping",
        "()Landroidx/collection/ArrayMap;",
        "getEnteringNames",
        "getExitingNames",
        "getFirstOutViews",
        "getLastInViews",
        "()Z",
        "transitionSignal",
        "Landroidx/core/os/CancellationSignal;",
        "getTransitionSignal$annotations",
        "()V",
        "getTransitionSignal",
        "()Landroidx/core/os/CancellationSignal;",
        "controller",
        "getController",
        "setController",
        "(Ljava/lang/Object;)V",
        "isSeekingSupported",
        "transitioning",
        "getTransitioning",
        "onStart",
        "",
        "container",
        "Landroid/view/ViewGroup;",
        "onProgress",
        "backEvent",
        "Landroidx/activity/BackEventCompat;",
        "onCommit",
        "createMergedTransition",
        "Lkotlin/Pair;",
        "runTransition",
        "enteringViews",
        "executeTransition",
        "Lkotlin/Function0;",
        "onCancel",
        "captureTransitioningViews",
        "transitioningViews",
        "view",
        "fragment_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private controller:Ljava/lang/Object;

.field private final enteringNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final exitingNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final firstOut:Landroid/support/v4/app/SpecialEffectsController$Operation;

.field private final firstOutViews:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final isPop:Z

.field private final lastIn:Landroid/support/v4/app/SpecialEffectsController$Operation;

.field private final lastInViews:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedElementFirstOutViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedElementLastInViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedElementNameMapping:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedElementTransition:Ljava/lang/Object;

.field private final transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

.field private final transitionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final transitionSignal:Landroidx/core/os/CancellationSignal;


# direct methods
.method public static synthetic $r8$lambda$Bug1WTWb79hxSbrJqR3X9sX9Xu4(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;)V
    .locals 0

    invoke-static {p0}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->onStart$lambda$14$lambda$13$lambda$12(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RHDd8OI53zzwMfODcYSNxFPI-yg(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->createMergedTransition$lambda$22(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TJxeldDivuWUX-PmdhbNGk5-aQI(Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->onStart$lambda$6$lambda$5(Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XtvRADT-HUQbWCdGNsu65RqUlh0(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->onStart$lambda$6$lambda$4(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eFvglKr3OWlBEn6a6blgevqzCyQ(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;Ljava/lang/Object;Landroid/view/ViewGroup;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->onStart$lambda$14$lambda$13(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;Ljava/lang/Object;Landroid/view/ViewGroup;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fgwNm7m5saDalzh6pVUZNtGbF0g(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;Landroid/view/ViewGroup;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->onCommit$lambda$20(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;Landroid/view/ViewGroup;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o6RWU1V8qVAX1OnSRWEFYrGbk2k(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->createMergedTransition$lambda$23(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qJX13_OVnfCJ50A-ARA8iJwVJ9U(Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->onCommit$lambda$19$lambda$18(Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qX9vaQQ5Guxnsxq1Pu0K3J9jRgA(Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->createMergedTransition$lambda$21(Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vwgY4srHyyUJBX8jNLnVYxIyrRo(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->onStart$lambda$14$lambda$13$lambda$10(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w5FKloooK6ckFOCAE6lspG5sX3o(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;Landroid/view/ViewGroup;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->onStart$lambda$14(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;Landroid/view/ViewGroup;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/List;Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Z)V
    .locals 1
    .param p1, "transitionInfos"    # Ljava/util/List;
    .param p2, "firstOut"    # Landroid/support/v4/app/SpecialEffectsController$Operation;
    .param p3, "lastIn"    # Landroid/support/v4/app/SpecialEffectsController$Operation;
    .param p4, "transitionImpl"    # Landroid/support/v4/app/FragmentTransitionImpl;
    .param p5, "sharedElementTransition"    # Ljava/lang/Object;
    .param p6, "sharedElementFirstOutViews"    # Ljava/util/ArrayList;
    .param p7, "sharedElementLastInViews"    # Ljava/util/ArrayList;
    .param p8, "sharedElementNameMapping"    # Landroidx/collection/ArrayMap;
    .param p9, "enteringNames"    # Ljava/util/ArrayList;
    .param p10, "exitingNames"    # Ljava/util/ArrayList;
    .param p11, "firstOutViews"    # Landroidx/collection/ArrayMap;
    .param p12, "lastInViews"    # Landroidx/collection/ArrayMap;
    .param p13, "isPop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;",
            ">;",
            "Landroid/support/v4/app/SpecialEffectsController$Operation;",
            "Landroid/support/v4/app/SpecialEffectsController$Operation;",
            "Landroid/support/v4/app/FragmentTransitionImpl;",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    const-string/jumbo v0, "transitionInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transitionImpl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sharedElementFirstOutViews"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sharedElementLastInViews"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sharedElementNameMapping"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enteringNames"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exitingNames"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firstOutViews"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastInViews"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    invoke-direct {p0}, Landroid/support/v4/app/SpecialEffectsController$Effect;-><init>()V

    .line 736
    iput-object p1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionInfos:Ljava/util/List;

    .line 737
    iput-object p2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->firstOut:Landroid/support/v4/app/SpecialEffectsController$Operation;

    .line 738
    iput-object p3, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->lastIn:Landroid/support/v4/app/SpecialEffectsController$Operation;

    .line 739
    iput-object p4, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 740
    iput-object p5, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementTransition:Ljava/lang/Object;

    .line 741
    iput-object p6, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementFirstOutViews:Ljava/util/ArrayList;

    .line 742
    iput-object p7, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementLastInViews:Ljava/util/ArrayList;

    .line 743
    iput-object p8, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementNameMapping:Landroidx/collection/ArrayMap;

    .line 744
    iput-object p9, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->enteringNames:Ljava/util/ArrayList;

    .line 745
    iput-object p10, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->exitingNames:Ljava/util/ArrayList;

    .line 746
    iput-object p11, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->firstOutViews:Landroidx/collection/ArrayMap;

    .line 747
    iput-object p12, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->lastInViews:Landroidx/collection/ArrayMap;

    .line 748
    iput-boolean p13, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->isPop:Z

    .line 750
    new-instance v0, Landroidx/core/os/CancellationSignal;

    invoke-direct {v0}, Landroidx/core/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionSignal:Landroidx/core/os/CancellationSignal;

    .line 735
    return-void
.end method

.method private final captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4
    .param p1, "transitioningViews"    # Ljava/util/ArrayList;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1210
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1211
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewGroupCompat;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1213
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1216
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1217
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1218
    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1219
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 1220
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v2}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 1217
    .end local v2    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1225
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1226
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    :cond_3
    :goto_1
    return-void
.end method

.method private final createMergedTransition(Landroid/view/ViewGroup;Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/SpecialEffectsController$Operation;)Lkotlin/Pair;
    .locals 29
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "lastIn"    # Landroid/support/v4/app/SpecialEffectsController$Operation;
    .param p3, "firstOut"    # Landroid/support/v4/app/SpecialEffectsController$Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/v4/app/SpecialEffectsController$Operation;",
            "Landroid/support/v4/app/SpecialEffectsController$Operation;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 950
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Landroid/view/View;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 951
    .local v3, "nonExistentView":Landroid/view/View;
    const/4 v4, 0x0

    .line 952
    .local v4, "firstOutEpicenterView":Landroid/view/View;
    const/4 v5, 0x0

    .line 953
    .local v5, "hasLastInEpicenter":Z
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 954
    .local v6, "lastInEpicenterRect":Landroid/graphics/Rect;
    iget-object v7, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 955
    .local v8, "transitionInfo":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    invoke-virtual {v8}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->hasSharedElementTransition()Z

    move-result v11

    .line 957
    .local v11, "hasSharedElementTransition":Z
    if-eqz v11, :cond_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 958
    iget-object v12, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementNameMapping:Landroidx/collection/ArrayMap;

    check-cast v12, Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementTransition:Ljava/lang/Object;

    if-eqz v12, :cond_0

    .line 962
    invoke-virtual {v1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v12

    .line 963
    invoke-virtual {v2}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v13

    .line 964
    iget-boolean v14, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->isPop:Z

    .line 965
    iget-object v15, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->firstOutViews:Landroidx/collection/ArrayMap;

    .line 966
    nop

    .line 961
    invoke-static {v12, v13, v14, v15, v9}, Landroid/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 970
    move-object/from16 v9, p1

    check-cast v9, Landroid/view/View;

    new-instance v12, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda0;

    invoke-direct {v12, v1, v2, v0}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda0;-><init>(Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;)V

    invoke-static {v9, v12}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 979
    iget-object v9, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementFirstOutViews:Ljava/util/ArrayList;

    iget-object v12, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->firstOutViews:Landroidx/collection/ArrayMap;

    invoke-virtual {v12}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 982
    iget-object v9, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->exitingNames:Ljava/util/ArrayList;

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    const-string v12, "get(...)"

    if-nez v9, :cond_1

    .line 983
    iget-object v9, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->exitingNames:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/String;

    .line 984
    .local v9, "epicenterViewName":Ljava/lang/String;
    iget-object v13, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->firstOutViews:Landroidx/collection/ArrayMap;

    invoke-virtual {v13, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v4, v13

    check-cast v4, Landroid/view/View;

    .line 985
    iget-object v13, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 986
    iget-object v14, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementTransition:Ljava/lang/Object;

    .line 987
    nop

    .line 985
    invoke-virtual {v13, v14, v4}, Landroid/support/v4/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 990
    .end local v9    # "epicenterViewName":Ljava/lang/String;
    :cond_1
    iget-object v9, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementLastInViews:Ljava/util/ArrayList;

    iget-object v13, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->lastInViews:Landroidx/collection/ArrayMap;

    invoke-virtual {v13}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 993
    iget-object v9, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->enteringNames:Ljava/util/ArrayList;

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 994
    iget-object v9, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->enteringNames:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/String;

    .line 995
    .restart local v9    # "epicenterViewName":Ljava/lang/String;
    iget-object v10, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->lastInViews:Landroidx/collection/ArrayMap;

    invoke-virtual {v10, v9}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 996
    .local v10, "lastInEpicenterView":Landroid/view/View;
    if-eqz v10, :cond_2

    .line 997
    const/4 v5, 0x1

    .line 1001
    iget-object v12, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 1002
    .local v12, "impl":Landroid/support/v4/app/FragmentTransitionImpl;
    move-object/from16 v13, p1

    check-cast v13, Landroid/view/View;

    new-instance v14, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda2;

    invoke-direct {v14, v12, v10, v6}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda2;-><init>(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v13, v14}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 1011
    .end local v9    # "epicenterViewName":Ljava/lang/String;
    .end local v10    # "lastInEpicenterView":Landroid/view/View;
    .end local v12    # "impl":Landroid/support/v4/app/FragmentTransitionImpl;
    :cond_2
    iget-object v9, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 1012
    iget-object v10, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementTransition:Ljava/lang/Object;

    .line 1013
    nop

    .line 1014
    iget-object v12, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementFirstOutViews:Ljava/util/ArrayList;

    .line 1011
    invoke-virtual {v9, v10, v3, v12}, Landroid/support/v4/app/FragmentTransitionImpl;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1019
    iget-object v13, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 1020
    iget-object v14, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementTransition:Ljava/lang/Object;

    .line 1021
    nop

    .line 1022
    nop

    .line 1023
    nop

    .line 1024
    nop

    .line 1025
    iget-object v9, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementTransition:Ljava/lang/Object;

    .line 1026
    iget-object v10, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementLastInViews:Ljava/util/ArrayList;

    .line 1019
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    invoke-virtual/range {v13 .. v20}, Landroid/support/v4/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .end local v8    # "transitionInfo":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    .end local v11    # "hasSharedElementTransition":Z
    goto/16 :goto_0

    .line 1031
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1033
    .local v7, "enteringViews":Ljava/util/ArrayList;
    const/4 v8, 0x0

    .line 1035
    .local v8, "mergedTransition":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1037
    .local v11, "mergedNonOverlappingTransition":Ljava/lang/Object;
    iget-object v12, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionInfos:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-string v15, "FragmentManager"

    if-eqz v13, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;

    .line 1038
    .local v13, "transitionInfo":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    invoke-virtual {v13}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v9

    .line 1039
    .local v9, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    const/16 v17, 0x2

    iget-object v14, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    invoke-virtual {v13}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v14, v10}, Landroid/support/v4/app/FragmentTransitionImpl;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1040
    .local v10, "transition":Ljava/lang/Object;
    if-eqz v10, :cond_e

    .line 1042
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, v22

    .line 1043
    .local v14, "transitioningViews":Ljava/util/ArrayList;
    move/from16 v27, v5

    .end local v5    # "hasLastInEpicenter":Z
    .local v27, "hasLastInEpicenter":Z
    invoke-virtual {v9}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v5

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object/from16 v28, v12

    const-string v12, "mView"

    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v14, v5}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 1045
    iget-object v5, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementTransition:Ljava/lang/Object;

    if-eqz v5, :cond_5

    .line 1046
    if-eq v9, v2, :cond_4

    if-ne v9, v1, :cond_5

    :cond_4
    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 1044
    :goto_2
    nop

    .line 1047
    .local v5, "involvedInSharedElementTransition":Z
    if-eqz v5, :cond_7

    .line 1049
    if-ne v9, v2, :cond_6

    .line 1050
    iget-object v12, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementFirstOutViews:Ljava/util/ArrayList;

    check-cast v12, Ljava/lang/Iterable;

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 1052
    :cond_6
    iget-object v12, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementLastInViews:Ljava/util/ArrayList;

    check-cast v12, Ljava/lang/Iterable;

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :goto_3
    nop

    .line 1055
    :cond_7
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1056
    iget-object v12, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    invoke-virtual {v12, v10, v3}, Landroid/support/v4/app/FragmentTransitionImpl;->addTarget(Ljava/lang/Object;Landroid/view/View;)V

    move-object v12, v14

    goto :goto_4

    .line 1058
    :cond_8
    iget-object v12, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    invoke-virtual {v12, v10, v14}, Landroid/support/v4/app/FragmentTransitionImpl;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1059
    iget-object v12, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 1060
    nop

    .line 1061
    nop

    .line 1062
    nop

    .line 1063
    nop

    .line 1064
    nop

    .line 1065
    nop

    .line 1066
    nop

    .line 1059
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v10

    move-object/from16 v20, v10

    move-object/from16 v19, v12

    move-object/from16 v22, v14

    .end local v10    # "transition":Ljava/lang/Object;
    .end local v14    # "transitioningViews":Ljava/util/ArrayList;
    .local v20, "transition":Ljava/lang/Object;
    .local v22, "transitioningViews":Ljava/util/ArrayList;
    invoke-virtual/range {v19 .. v26}, Landroid/support/v4/app/FragmentTransitionImpl;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1068
    move-object/from16 v12, v22

    .end local v20    # "transition":Ljava/lang/Object;
    .end local v22    # "transitioningViews":Ljava/util/ArrayList;
    .restart local v10    # "transition":Ljava/lang/Object;
    .local v12, "transitioningViews":Ljava/util/ArrayList;
    invoke-virtual {v9}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFinalState()Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v14

    sget-object v1, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->GONE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    if-ne v14, v1, :cond_9

    .line 1072
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->setAwaitingContainerChanges(Z)V

    .line 1075
    new-instance v14, Ljava/util/ArrayList;

    move-object v1, v12

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1076
    .local v14, "transitioningViewsToHide":Ljava/util/ArrayList;
    invoke-virtual {v9}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1077
    iget-object v1, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 1078
    nop

    .line 1079
    invoke-virtual {v9}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1080
    nop

    .line 1077
    invoke-virtual {v1, v10, v2, v14}, Landroid/support/v4/app/FragmentTransitionImpl;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1088
    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda3;

    invoke-direct {v2, v12}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda3;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    .line 1093
    .end local v14    # "transitioningViewsToHide":Ljava/util/ArrayList;
    :cond_9
    :goto_4
    invoke-virtual {v9}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFinalState()Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v1

    sget-object v2, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    const-string v14, "View: "

    move-object/from16 v19, v3

    .end local v3    # "nonExistentView":Landroid/view/View;
    .local v19, "nonExistentView":Landroid/view/View;
    const-string v3, "next(...)"

    move/from16 v20, v5

    .end local v5    # "involvedInSharedElementTransition":Z
    .local v20, "involvedInSharedElementTransition":Z
    const-string v5, "iterator(...)"

    if-ne v1, v2, :cond_b

    .line 1094
    move-object v1, v12

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1095
    if-eqz v27, :cond_a

    .line 1096
    iget-object v1, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    invoke-virtual {v1, v10, v6}, Landroid/support/v4/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1098
    :cond_a
    invoke-static/range {v17 .. v17}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering Transition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const-string v1, ">>>>> EnteringViews <<<<<"

    invoke-static {v15, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    .line 1102
    .local v2, "view":Landroid/view/View;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1106
    .end local v2    # "view":Landroid/view/View;
    :cond_b
    iget-object v1, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    invoke-virtual {v1, v10, v4}, Landroid/support/v4/app/FragmentTransitionImpl;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V

    .line 1107
    invoke-static/range {v17 .. v17}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exiting Transition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    const-string v1, ">>>>> ExitingViews <<<<<"

    invoke-static {v15, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    .line 1111
    .restart local v2    # "view":Landroid/view/View;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1116
    .end local v2    # "view":Landroid/view/View;
    :cond_c
    invoke-virtual {v13}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->isOverlapAllowed()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 1119
    iget-object v1, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 1120
    nop

    .line 1121
    nop

    .line 1122
    nop

    .line 1119
    invoke-virtual {v1, v8, v10, v2}, Landroid/support/v4/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1118
    move-object v8, v1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v19

    move/from16 v5, v27

    move-object/from16 v12, v28

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1127
    :cond_d
    iget-object v1, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 1128
    nop

    .line 1129
    nop

    .line 1130
    nop

    .line 1127
    invoke-virtual {v1, v11, v10, v2}, Landroid/support/v4/app/FragmentTransitionImpl;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1126
    move-object v11, v1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v19

    move/from16 v5, v27

    move-object/from16 v12, v28

    const/4 v9, 0x1

    const/4 v10, 0x0

    .end local v9    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    .end local v10    # "transition":Ljava/lang/Object;
    .end local v12    # "transitioningViews":Ljava/util/ArrayList;
    .end local v13    # "transitionInfo":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    .end local v20    # "involvedInSharedElementTransition":Z
    goto/16 :goto_1

    .line 1040
    .end local v19    # "nonExistentView":Landroid/view/View;
    .end local v27    # "hasLastInEpicenter":Z
    .restart local v3    # "nonExistentView":Landroid/view/View;
    .local v5, "hasLastInEpicenter":Z
    .restart local v9    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    .restart local v10    # "transition":Ljava/lang/Object;
    .restart local v13    # "transitionInfo":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    :cond_e
    move-object/from16 v19, v3

    move/from16 v27, v5

    move-object/from16 v28, v12

    .end local v3    # "nonExistentView":Landroid/view/View;
    .end local v5    # "hasLastInEpicenter":Z
    .restart local v19    # "nonExistentView":Landroid/view/View;
    .restart local v27    # "hasLastInEpicenter":Z
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1139
    .end local v9    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    .end local v10    # "transition":Ljava/lang/Object;
    .end local v13    # "transitionInfo":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    .end local v19    # "nonExistentView":Landroid/view/View;
    .end local v27    # "hasLastInEpicenter":Z
    .restart local v3    # "nonExistentView":Landroid/view/View;
    .restart local v5    # "hasLastInEpicenter":Z
    :cond_f
    move-object/from16 v19, v3

    move/from16 v27, v5

    const/16 v17, 0x2

    .end local v3    # "nonExistentView":Landroid/view/View;
    .end local v5    # "hasLastInEpicenter":Z
    .restart local v19    # "nonExistentView":Landroid/view/View;
    .restart local v27    # "hasLastInEpicenter":Z
    iget-object v1, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 1140
    nop

    .line 1141
    nop

    .line 1142
    iget-object v2, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementTransition:Ljava/lang/Object;

    .line 1139
    invoke-virtual {v1, v8, v11, v2}, Landroid/support/v4/app/FragmentTransitionImpl;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1138
    nop

    .line 1145
    .end local v8    # "mergedTransition":Ljava/lang/Object;
    .local v1, "mergedTransition":Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Final merged transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_10
    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v7, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static final createMergedTransition$lambda$21(Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;)V
    .locals 5
    .param p0, "$lastIn"    # Landroid/support/v4/app/SpecialEffectsController$Operation;
    .param p1, "$firstOut"    # Landroid/support/v4/app/SpecialEffectsController$Operation;
    .param p2, "this$0"    # Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;

    .line 972
    invoke-virtual {p0}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 973
    invoke-virtual {p1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 974
    iget-boolean v2, p2, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->isPop:Z

    .line 975
    iget-object v3, p2, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->lastInViews:Landroidx/collection/ArrayMap;

    .line 976
    nop

    .line 971
    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    .line 978
    return-void
.end method

.method private static final createMergedTransition$lambda$22(Landroid/support/v4/app/FragmentTransitionImpl;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "$impl"    # Landroid/support/v4/app/FragmentTransitionImpl;
    .param p1, "$lastInEpicenterView"    # Landroid/view/View;
    .param p2, "$lastInEpicenterRect"    # Landroid/graphics/Rect;

    .line 1003
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1004
    return-void
.end method

.method private static final createMergedTransition$lambda$23(Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "$transitioningViews"    # Ljava/util/ArrayList;

    .line 1089
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/List;I)V

    .line 1090
    return-void
.end method

.method public static synthetic getTransitionSignal$annotations()V
    .locals 0

    return-void
.end method

.method private static final onCommit$lambda$19$lambda$18(Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;)V
    .locals 2
    .param p0, "$operation"    # Landroid/support/v4/app/SpecialEffectsController$Operation;
    .param p1, "this$0"    # Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;

    .line 920
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    nop

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transition for operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has completed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 921
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/SpecialEffectsController$Effect;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/SpecialEffectsController$Operation;->completeEffect(Landroid/support/v4/app/SpecialEffectsController$Effect;)V

    .line 927
    return-void
.end method

.method private static final onCommit$lambda$20(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;Landroid/view/ViewGroup;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;
    .param p1, "$container"    # Landroid/view/ViewGroup;
    .param p2, "$mergedTransition"    # Ljava/lang/Object;

    .line 931
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentTransitionImpl;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 932
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final onStart$lambda$14(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;Landroid/view/ViewGroup;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;
    .locals 3
    .param p0, "this$0"    # Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;
    .param p1, "$container"    # Landroid/view/ViewGroup;
    .param p2, "$mergedTransition"    # Ljava/lang/Object;
    .param p3, "$seekCancelLambda"    # Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 826
    nop

    .line 827
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentTransitionImpl;->controlDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 826
    iput-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->controller:Ljava/lang/Object;

    .line 830
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->controller:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 833
    new-instance v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda1;-><init>(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;Ljava/lang/Object;Landroid/view/ViewGroup;)V

    iput-object v0, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 869
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 871
    nop

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started executing operations from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->firstOut:Landroid/support/v4/app/SpecialEffectsController$Operation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->lastIn:Landroid/support/v4/app/SpecialEffectsController$Operation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 870
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 830
    :cond_2
    const/4 v0, 0x0

    .line 831
    .local v0, "$i$a$-check-DefaultSpecialEffectsController$TransitionEffect$onStart$4$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to start transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 830
    .end local v0    # "$i$a$-check-DefaultSpecialEffectsController$TransitionEffect$onStart$4$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final onStart$lambda$14$lambda$13(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;Ljava/lang/Object;Landroid/view/ViewGroup;)Lkotlin/Unit;
    .locals 9
    .param p0, "this$0"    # Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;
    .param p1, "$mergedTransition"    # Ljava/lang/Object;
    .param p2, "$container"    # Landroid/view/ViewGroup;

    .line 834
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionInfos:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1278
    .local v1, "$i$f$all":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1279
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;

    .local v6, "it":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    const/4 v7, 0x0

    .line 834
    .local v7, "$i$a$-all-DefaultSpecialEffectsController$TransitionEffect$onStart$4$2$1":I
    invoke-virtual {v6}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/SpecialEffectsController$Operation;->isSeeking()Z

    move-result v6

    .line 1279
    .end local v6    # "it":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    .end local v7    # "$i$a$-all-DefaultSpecialEffectsController$TransitionEffect$onStart$4$2$1":I
    if-nez v6, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 1280
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 834
    .end local v0    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$all":I
    :goto_0
    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    if-eqz v4, :cond_4

    .line 835
    invoke-static {v1}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 836
    const-string v1, "Animating to start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->controller:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p2}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda9;-><init>(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransitionImpl;->animateToStart(Ljava/lang/Object;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 848
    :cond_4
    invoke-static {v1}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 849
    const-string v1, "Completing animating immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_5
    new-instance v0, Landroidx/core/os/CancellationSignal;

    invoke-direct {v0}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 851
    nop

    .line 853
    .local v0, "cancelSignal":Landroidx/core/os/CancellationSignal;
    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 854
    iget-object v2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionInfos:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;

    invoke-virtual {v2}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 855
    nop

    .line 856
    nop

    .line 857
    nop

    .line 853
    new-instance v3, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda10;-><init>(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;)V

    invoke-virtual {v1, v2, p1, v0, v3}, Landroid/support/v4/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroid/support/v4/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    .line 866
    invoke-virtual {v0}, Landroidx/core/os/CancellationSignal;->cancel()V

    .line 868
    .end local v0    # "cancelSignal":Landroidx/core/os/CancellationSignal;
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final onStart$lambda$14$lambda$13$lambda$10(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;Landroid/view/ViewGroup;)V
    .locals 9
    .param p0, "this$0"    # Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;
    .param p1, "$container"    # Landroid/view/ViewGroup;

    .line 839
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionInfos:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1274
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;

    .local v4, "transitionInfo":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    const/4 v5, 0x0

    .line 840
    .local v5, "$i$a$-forEach-DefaultSpecialEffectsController$TransitionEffect$onStart$4$2$2$1":I
    invoke-virtual {v4}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v6

    .line 841
    .local v6, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    invoke-virtual {v6}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    .line 842
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 843
    invoke-virtual {v6}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFinalState()Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v8

    invoke-virtual {v8, v7, p1}, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 845
    :cond_0
    nop

    .line 1274
    .end local v4    # "transitionInfo":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    .end local v5    # "$i$a$-forEach-DefaultSpecialEffectsController$TransitionEffect$onStart$4$2$2$1":I
    .end local v6    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    .end local v7    # "view":Landroid/view/View;
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 1275
    :cond_1
    nop

    .line 846
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method private static final onStart$lambda$14$lambda$13$lambda$12(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;)V
    .locals 8
    .param p0, "this$0"    # Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;

    .line 858
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    nop

    .line 861
    nop

    .line 859
    const-string v0, "FragmentManager"

    const-string v1, "Transition for all operations has completed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionInfos:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1276
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;

    .local v4, "it":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    const/4 v5, 0x0

    .line 864
    .local v5, "$i$a$-forEach-DefaultSpecialEffectsController$TransitionEffect$onStart$4$2$3$1":I
    invoke-virtual {v4}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v6

    move-object v7, p0

    check-cast v7, Landroid/support/v4/app/SpecialEffectsController$Effect;

    invoke-virtual {v6, v7}, Landroid/support/v4/app/SpecialEffectsController$Operation;->completeEffect(Landroid/support/v4/app/SpecialEffectsController$Effect;)V

    .line 1276
    .end local v4    # "it":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    .end local v5    # "$i$a$-forEach-DefaultSpecialEffectsController$TransitionEffect$onStart$4$2$3$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 1277
    :cond_1
    nop

    .line 865
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method private static final onStart$lambda$6$lambda$4(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1
    .param p0, "$seekCancelLambda"    # Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 807
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static final onStart$lambda$6$lambda$5(Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;)V
    .locals 2
    .param p0, "$operation"    # Landroid/support/v4/app/SpecialEffectsController$Operation;
    .param p1, "this$0"    # Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;

    .line 814
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    nop

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transition for operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has completed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 815
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/SpecialEffectsController$Effect;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/SpecialEffectsController$Operation;->completeEffect(Landroid/support/v4/app/SpecialEffectsController$Effect;)V

    .line 821
    return-void
.end method

.method private final runTransition(Ljava/util/ArrayList;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;)V
    .locals 9
    .param p1, "enteringViews"    # Ljava/util/ArrayList;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "executeTransition"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1159
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/List;I)V

    .line 1160
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementLastInViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransitionImpl;->prepareSetNameOverridesReordered(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1161
    .local v6, "inNames":Ljava/util/ArrayList;
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1162
    const-string v0, ">>>>> Beginning transition <<<<<"

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const-string v0, ">>>>> SharedElementFirstOutViews <<<<<"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementFirstOutViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, "iterator(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, " Name: "

    const-string v5, "View: "

    const-string v7, "next(...)"

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    .line 1166
    .local v3, "view":Landroid/view/View;
    nop

    .line 1167
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1165
    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1170
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    const-string v0, ">>>>> SharedElementLastInViews <<<<<"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementLastInViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    .line 1173
    .local v2, "view":Landroid/view/View;
    nop

    .line 1174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1172
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1179
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1180
    iget-object v2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 1181
    move-object v3, p2

    check-cast v3, Landroid/view/View;

    .line 1182
    iget-object v4, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementFirstOutViews:Ljava/util/ArrayList;

    .line 1183
    iget-object v5, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementLastInViews:Ljava/util/ArrayList;

    .line 1184
    nop

    .line 1185
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementNameMapping:Landroidx/collection/ArrayMap;

    move-object v7, v0

    check-cast v7, Ljava/util/Map;

    .line 1180
    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/FragmentTransitionImpl;->setNameOverridesReordered(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1189
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/List;I)V

    .line 1190
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 1191
    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementTransition:Ljava/lang/Object;

    .line 1192
    iget-object v2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementFirstOutViews:Ljava/util/ArrayList;

    .line 1193
    iget-object v3, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementLastInViews:Ljava/util/ArrayList;

    .line 1190
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1195
    return-void
.end method


# virtual methods
.method public final getController()Ljava/lang/Object;
    .locals 1

    .line 752
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->controller:Ljava/lang/Object;

    return-object v0
.end method

.method public final getEnteringNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 744
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->enteringNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getExitingNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 745
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->exitingNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getFirstOut()Landroid/support/v4/app/SpecialEffectsController$Operation;
    .locals 1

    .line 737
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->firstOut:Landroid/support/v4/app/SpecialEffectsController$Operation;

    return-object v0
.end method

.method public final getFirstOutViews()Landroidx/collection/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 746
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->firstOutViews:Landroidx/collection/ArrayMap;

    return-object v0
.end method

.method public final getLastIn()Landroid/support/v4/app/SpecialEffectsController$Operation;
    .locals 1

    .line 738
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->lastIn:Landroid/support/v4/app/SpecialEffectsController$Operation;

    return-object v0
.end method

.method public final getLastInViews()Landroidx/collection/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 747
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->lastInViews:Landroidx/collection/ArrayMap;

    return-object v0
.end method

.method public final getSharedElementFirstOutViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 741
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementFirstOutViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSharedElementLastInViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementLastInViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSharedElementNameMapping()Landroidx/collection/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 743
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementNameMapping:Landroidx/collection/ArrayMap;

    return-object v0
.end method

.method public final getSharedElementTransition()Ljava/lang/Object;
    .locals 1

    .line 740
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementTransition:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTransitionImpl()Landroid/support/v4/app/FragmentTransitionImpl;
    .locals 1

    .line 739
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    return-object v0
.end method

.method public final getTransitionInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;",
            ">;"
        }
    .end annotation

    .line 736
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionInfos:Ljava/util/List;

    return-object v0
.end method

.method public final getTransitionSignal()Landroidx/core/os/CancellationSignal;
    .locals 1

    .line 750
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionSignal:Landroidx/core/os/CancellationSignal;

    return-object v0
.end method

.method public final getTransitioning()Z
    .locals 8

    .line 766
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionInfos:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1254
    .local v1, "$i$f$all":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1255
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;

    .local v5, "it":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    const/4 v6, 0x0

    .line 766
    .local v6, "$i$a$-all-DefaultSpecialEffectsController$TransitionEffect$transitioning$1":I
    invoke-virtual {v5}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v7

    iget-boolean v5, v7, Landroid/support/v4/app/Fragment;->mTransitioning:Z

    .line 1255
    .end local v5    # "it":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    .end local v6    # "$i$a$-all-DefaultSpecialEffectsController$TransitionEffect$transitioning$1":I
    if-nez v5, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 1256
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 766
    .end local v0    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$all":I
    :goto_0
    return v3
.end method

.method public final isPop()Z
    .locals 1

    .line 748
    iget-boolean v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->isPop:Z

    return v0
.end method

.method public isSeekingSupported()Z
    .locals 10

    .line 756
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransitionImpl;->isSeekingSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 757
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionInfos:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1251
    .local v2, "$i$f$all":I
    instance-of v3, v0, Ljava/util/Collection;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 1252
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;

    .local v6, "it":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    const/4 v7, 0x0

    .line 758
    .local v7, "$i$a$-all-DefaultSpecialEffectsController$TransitionEffect$isSeekingSupported$1":I
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x22

    if-lt v8, v9, :cond_2

    .line 759
    invoke-virtual {v6}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 760
    iget-object v8, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    invoke-virtual {v6}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->getTransition()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentTransitionImpl;->isSeekingSupported(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 1252
    .end local v6    # "it":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    .end local v7    # "$i$a$-all-DefaultSpecialEffectsController$TransitionEffect$isSeekingSupported$1":I
    :goto_0
    if-nez v6, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 1253
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x1

    .line 757
    .end local v0    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$all":I
    :goto_1
    if-eqz v0, :cond_5

    .line 762
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementTransition:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 763
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    iget-object v2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementTransition:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransitionImpl;->isSeekingSupported(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    nop

    :goto_2
    return v1
.end method

.method public onCancel(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionSignal:Landroidx/core/os/CancellationSignal;

    invoke-virtual {v0}, Landroidx/core/os/CancellationSignal;->cancel()V

    .line 1199
    return-void
.end method

.method public onCommit(Landroid/view/ViewGroup;)V
    .locals 17
    .param p1, "container"    # Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "container"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 886
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v2

    const-string v3, "FragmentManager"

    const/4 v4, 0x2

    if-nez v2, :cond_2

    .line 887
    iget-object v2, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionInfos:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1266
    .local v5, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;

    .local v8, "transitionInfo":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    const/4 v9, 0x0

    .line 888
    .local v9, "$i$a$-forEach-DefaultSpecialEffectsController$TransitionEffect$onCommit$1":I
    invoke-virtual {v8}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v10

    .line 889
    .local v10, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    invoke-static {v4}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 891
    nop

    .line 892
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SpecialEffectsController: Container "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has not been laid out. Completing operation "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 893
    nop

    .line 892
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 890
    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_0
    invoke-virtual {v8}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v11

    move-object v12, v0

    check-cast v12, Landroid/support/v4/app/SpecialEffectsController$Effect;

    invoke-virtual {v11, v12}, Landroid/support/v4/app/SpecialEffectsController$Operation;->completeEffect(Landroid/support/v4/app/SpecialEffectsController$Effect;)V

    .line 897
    nop

    .line 1266
    .end local v8    # "transitionInfo":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    .end local v9    # "$i$a$-forEach-DefaultSpecialEffectsController$TransitionEffect$onCommit$1":I
    .end local v10    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    nop

    .end local v7    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 1267
    :cond_1
    nop

    .line 898
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$forEach":I
    return-void

    .line 900
    :cond_2
    iget-object v2, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->controller:Ljava/lang/Object;

    const-string v5, " to "

    if-eqz v2, :cond_3

    .line 901
    iget-object v2, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    iget-object v6, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->controller:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentTransitionImpl;->animateToEnd(Ljava/lang/Object;)V

    .line 902
    invoke-static {v4}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 904
    nop

    .line 905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ending execution of operations from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->firstOut:Landroid/support/v4/app/SpecialEffectsController$Operation;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->lastIn:Landroid/support/v4/app/SpecialEffectsController$Operation;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 903
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 910
    :cond_3
    iget-object v2, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->lastIn:Landroid/support/v4/app/SpecialEffectsController$Operation;

    iget-object v6, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->firstOut:Landroid/support/v4/app/SpecialEffectsController$Operation;

    invoke-direct {v0, v1, v2, v6}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->createMergedTransition(Landroid/view/ViewGroup;Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/SpecialEffectsController$Operation;)Lkotlin/Pair;

    move-result-object v2

    .line 909
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .local v6, "enteringViews":Ljava/util/ArrayList;
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    .line 912
    .local v2, "mergedTransition":Ljava/lang/Object;
    iget-object v7, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionInfos:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    .line 913
    nop

    .local v7, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 1268
    .local v8, "$i$f$map":I
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v7, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v7

    .local v10, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 1269
    .local v11, "$i$f$mapTo":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 1270
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;

    .local v14, "it":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    const/4 v15, 0x0

    .line 913
    .local v15, "$i$a$-map-DefaultSpecialEffectsController$TransitionEffect$onCommit$2":I
    invoke-virtual {v14}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v14

    .line 1270
    .end local v14    # "it":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    .end local v15    # "$i$a$-map-DefaultSpecialEffectsController$TransitionEffect$onCommit$2":I
    invoke-interface {v9, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1271
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapTo":I
    check-cast v9, Ljava/util/List;

    .line 1268
    nop

    .end local v7    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$map":I
    check-cast v9, Ljava/lang/Iterable;

    .line 914
    nop

    .local v9, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 1272
    .local v7, "$i$f$forEach":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .local v11, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    const/4 v12, 0x0

    .line 915
    .local v12, "$i$a$-forEach-DefaultSpecialEffectsController$TransitionEffect$onCommit$3":I
    iget-object v13, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 916
    invoke-virtual {v11}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v14

    .line 917
    nop

    .line 918
    iget-object v15, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionSignal:Landroidx/core/os/CancellationSignal;

    .line 919
    nop

    .line 915
    const/16 v16, 0x2

    new-instance v4, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda4;

    invoke-direct {v4, v11, v0}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda4;-><init>(Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;)V

    invoke-virtual {v13, v14, v2, v15, v4}, Landroid/support/v4/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroid/support/v4/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;)V

    .line 929
    nop

    .line 1272
    .end local v11    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    .end local v12    # "$i$a$-forEach-DefaultSpecialEffectsController$TransitionEffect$onCommit$3":I
    const/4 v4, 0x2

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 1273
    :cond_5
    const/16 v16, 0x2

    .line 930
    .end local v7    # "$i$f$forEach":I
    .end local v9    # "$this$forEach$iv":Ljava/lang/Iterable;
    new-instance v4, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0, v1, v2}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda5;-><init>(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-direct {v0, v6, v1, v4}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->runTransition(Ljava/util/ArrayList;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;)V

    .line 933
    invoke-static/range {v16 .. v16}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 935
    nop

    .line 936
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Completed executing operations from "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->firstOut:Landroid/support/v4/app/SpecialEffectsController$Operation;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->lastIn:Landroid/support/v4/app/SpecialEffectsController$Operation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 934
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    .end local v2    # "mergedTransition":Ljava/lang/Object;
    .end local v6    # "enteringViews":Ljava/util/ArrayList;
    :cond_6
    :goto_3
    return-void
.end method

.method public onProgress(Landroidx/activity/BackEventCompat;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "backEvent"    # Landroidx/activity/BackEventCompat;
    .param p2, "container"    # Landroid/view/ViewGroup;

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->controller:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1265
    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 880
    .local v1, "$i$a$-let-DefaultSpecialEffectsController$TransitionEffect$onProgress$1":I
    iget-object v2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/FragmentTransitionImpl;->setCurrentPlayTime(Ljava/lang/Object;F)V

    .line 881
    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-DefaultSpecialEffectsController$TransitionEffect$onProgress$1":I
    :cond_0
    return-void
.end method

.method public onStart(Landroid/view/ViewGroup;)V
    .locals 14
    .param p1, "container"    # Landroid/view/ViewGroup;

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 771
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    const-string v1, "FragmentManager"

    if-nez v0, :cond_2

    .line 772
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionInfos:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1257
    .local v2, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;

    .local v5, "transitionInfo":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    const/4 v6, 0x0

    .line 773
    .local v6, "$i$a$-forEach-DefaultSpecialEffectsController$TransitionEffect$onStart$1":I
    invoke-virtual {v5}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v7

    .line 774
    .local v7, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    const/4 v8, 0x2

    invoke-static {v8}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 776
    nop

    .line 777
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SpecialEffectsController: Container "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has not been laid out. Skipping onStart for operation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 778
    nop

    .line 777
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 775
    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_0
    nop

    .line 1257
    .end local v5    # "transitionInfo":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    .end local v6    # "$i$a$-forEach-DefaultSpecialEffectsController$TransitionEffect$onStart$1":I
    .end local v7    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 1258
    :cond_1
    nop

    .line 782
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return-void

    .line 784
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->getTransitioning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementTransition:Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->isSeekingSupported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 786
    nop

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring shared elements transition "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->sharedElementTransition:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " between "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 788
    iget-object v2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->firstOut:Landroid/support/v4/app/SpecialEffectsController$Operation;

    .line 787
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 788
    nop

    .line 787
    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 788
    iget-object v2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->lastIn:Landroid/support/v4/app/SpecialEffectsController$Operation;

    .line 787
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 788
    nop

    .line 787
    const-string v2, " as neither fragment has set a Transition. In order to run a SharedElementTransition, you must also set either an enter or exit transition on a fragment involved in the transaction. The sharedElementTransition will run after the back gesture has been committed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 785
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->isSeekingSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->getTransitioning()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 800
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 803
    .local v0, "seekCancelLambda":Lkotlin/jvm/internal/Ref$ObjectRef;
    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->lastIn:Landroid/support/v4/app/SpecialEffectsController$Operation;

    iget-object v2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->firstOut:Landroid/support/v4/app/SpecialEffectsController$Operation;

    invoke-direct {p0, p1, v1, v2}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->createMergedTransition(Landroid/view/ViewGroup;Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/SpecialEffectsController$Operation;)Lkotlin/Pair;

    move-result-object v1

    .line 802
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .local v2, "enteringViews":Ljava/util/ArrayList;
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    .line 804
    .local v5, "mergedTransition":Ljava/lang/Object;
    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionInfos:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 805
    nop

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 1259
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v1

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 1260
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 1261
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;

    .local v10, "it":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    const/4 v11, 0x0

    .line 805
    .local v11, "$i$a$-map-DefaultSpecialEffectsController$TransitionEffect$onStart$2":I
    invoke-virtual {v10}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v10

    .line 1261
    .end local v10    # "it":Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
    .end local v11    # "$i$a$-map-DefaultSpecialEffectsController$TransitionEffect$onStart$2":I
    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1262
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 1259
    nop

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    check-cast v4, Ljava/lang/Iterable;

    .line 806
    move-object v1, v4

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 1263
    .local v9, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .local v12, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    const/4 v13, 0x0

    .line 807
    .local v13, "$i$a$-forEach-DefaultSpecialEffectsController$TransitionEffect$onStart$3":I
    new-instance v7, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda6;

    invoke-direct {v7, v0}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 808
    .local v7, "cancelRunnable":Ljava/lang/Runnable;
    iget-object v3, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionImpl:Landroid/support/v4/app/FragmentTransitionImpl;

    .line 809
    invoke-virtual {v12}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 810
    nop

    .line 811
    iget-object v6, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->transitionSignal:Landroidx/core/os/CancellationSignal;

    .line 812
    nop

    .line 813
    nop

    .line 808
    new-instance v8, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda7;

    invoke-direct {v8, v12, p0}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda7;-><init>(Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;)V

    invoke-virtual/range {v3 .. v8}, Landroid/support/v4/app/FragmentTransitionImpl;->setListenerForTransitionEnd(Landroid/support/v4/app/Fragment;Ljava/lang/Object;Landroidx/core/os/CancellationSignal;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 823
    nop

    .line 1263
    .end local v7    # "cancelRunnable":Ljava/lang/Runnable;
    .end local v12    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    .end local v13    # "$i$a$-forEach-DefaultSpecialEffectsController$TransitionEffect$onStart$3":I
    nop

    .end local v11    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 1264
    :cond_5
    nop

    .line 825
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$forEach":I
    new-instance v1, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, v5, v0}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect$$ExternalSyntheticLambda8;-><init>(Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;Landroid/view/ViewGroup;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-direct {p0, v2, p1, v1}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->runTransition(Ljava/util/ArrayList;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;)V

    .line 877
    .end local v0    # "seekCancelLambda":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v2    # "enteringViews":Ljava/util/ArrayList;
    .end local v5    # "mergedTransition":Ljava/lang/Object;
    :cond_6
    return-void
.end method

.method public final setController(Ljava/lang/Object;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Object;

    .line 752
    iput-object p1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionEffect;->controller:Ljava/lang/Object;

    return-void
.end method
