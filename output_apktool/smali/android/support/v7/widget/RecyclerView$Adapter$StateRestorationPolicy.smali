.class public final enum Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;
.super Ljava/lang/Enum;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StateRestorationPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

.field public static final enum ALLOW:Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

.field public static final enum PREVENT:Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

.field public static final enum PREVENT_WHEN_EMPTY:Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;


# direct methods
.method private static synthetic $values()[Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;
    .locals 3

    .line 8505
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    sget-object v1, Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8510
    new-instance v0, Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    const-string v1, "ALLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;->ALLOW:Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 8515
    new-instance v0, Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    const-string v1, "PREVENT_WHEN_EMPTY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT_WHEN_EMPTY:Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 8521
    new-instance v0, Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    const-string v1, "PREVENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;->PREVENT:Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    .line 8505
    invoke-static {}, Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;->$values()[Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;->$VALUES:[Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8505
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 8505
    const-class v0, Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-object v0
.end method

.method public static values()[Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;
    .locals 1

    .line 8505
    sget-object v0, Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;->$VALUES:[Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    invoke-virtual {v0}, [Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/widget/RecyclerView$Adapter$StateRestorationPolicy;

    return-object v0
.end method
