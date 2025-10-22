.class public final enum Landroid/support/v4/app/SpecialEffectsController$Operation$State;
.super Ljava/lang/Enum;
.source "SpecialEffectsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/SpecialEffectsController$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/SpecialEffectsController$Operation$State$Companion;,
        Landroid/support/v4/app/SpecialEffectsController$Operation$State$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/v4/app/SpecialEffectsController$Operation$State;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0080\u0081\u0002\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000eB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rj\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroid/support/v4/app/SpecialEffectsController$Operation$State;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "REMOVED",
        "VISIBLE",
        "GONE",
        "INVISIBLE",
        "applyState",
        "",
        "view",
        "Landroid/view/View;",
        "container",
        "Landroid/view/ViewGroup;",
        "Companion",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Landroid/support/v4/app/SpecialEffectsController$Operation$State;

.field public static final Companion:Landroid/support/v4/app/SpecialEffectsController$Operation$State$Companion;

.field public static final enum GONE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

.field public static final enum INVISIBLE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

.field public static final enum REMOVED:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

.field public static final enum VISIBLE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;


# direct methods
.method private static final synthetic $values()[Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    sget-object v1, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->REMOVED:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->GONE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 500
    new-instance v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    const-string v1, "REMOVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->REMOVED:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    .line 502
    new-instance v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    const-string v1, "VISIBLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v4/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    .line 504
    new-instance v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    const-string v1, "GONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v4/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->GONE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    .line 506
    new-instance v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    const-string v1, "INVISIBLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/support/v4/app/SpecialEffectsController$Operation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->INVISIBLE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    invoke-static {}, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->$values()[Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->$VALUES:[Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    sget-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->$VALUES:[Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/app/SpecialEffectsController$Operation$State$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->Companion:Landroid/support/v4/app/SpecialEffectsController$Operation$State$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 498
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final from(I)Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    .locals 1
    .param p0, "visibility"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->Companion:Landroid/support/v4/app/SpecialEffectsController$Operation$State$Companion;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/SpecialEffectsController$Operation$State$Companion;->from(I)Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    .line 594
    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Landroid/support/v4/app/SpecialEffectsController$Operation$State;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 596
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    const-class v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 596
    check-cast v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    return-object v0
.end method

.method public static values()[Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    .locals 1

    sget-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->$VALUES:[Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 596
    check-cast v0, [Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    return-object v0
.end method


# virtual methods
.method public final applyState(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "container"    # Landroid/view/ViewGroup;

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    sget-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const-string v2, "SpecialEffectsController: Setting view "

    const-string v3, "FragmentManager"

    const/4 v4, 0x2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 559
    :pswitch_0
    invoke-static {v4}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    nop

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to INVISIBLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 550
    :pswitch_1
    invoke-static {v4}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    nop

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to GONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 530
    :pswitch_2
    invoke-static {v4}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    nop

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to VISIBLE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 537
    .local v1, "parent":Landroid/view/ViewGroup;
    :cond_3
    if-nez v1, :cond_5

    .line 538
    invoke-static {v4}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 540
    nop

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpecialEffectsController: Adding view "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 542
    nop

    .line 541
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 542
    nop

    .line 541
    const-string v2, " to Container "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 542
    nop

    .line 541
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_4
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 547
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .end local v1    # "parent":Landroid/view/ViewGroup;
    goto :goto_0

    .line 517
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 518
    .restart local v1    # "parent":Landroid/view/ViewGroup;
    :cond_6
    if-eqz v1, :cond_8

    .line 519
    invoke-static {v4}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 521
    nop

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpecialEffectsController: Removing view "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 523
    nop

    .line 522
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 523
    nop

    .line 522
    const-string v2, " from container "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 523
    nop

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_7
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 568
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_8
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
