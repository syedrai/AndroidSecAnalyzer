.class public final enum Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;
.super Ljava/lang/Enum;
.source "ConcatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ConcatAdapter$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StableIdMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

.field public static final enum ISOLATED_STABLE_IDS:Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

.field public static final enum NO_STABLE_IDS:Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

.field public static final enum SHARED_STABLE_IDS:Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;


# direct methods
.method private static synthetic $values()[Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;
    .locals 3

    .line 391
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    sget-object v1, Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;->ISOLATED_STABLE_IDS:Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;->SHARED_STABLE_IDS:Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 398
    new-instance v0, Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    const-string v1, "NO_STABLE_IDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;->NO_STABLE_IDS:Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    .line 412
    new-instance v0, Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    const-string v1, "ISOLATED_STABLE_IDS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;->ISOLATED_STABLE_IDS:Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    .line 423
    new-instance v0, Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    const-string v1, "SHARED_STABLE_IDS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;->SHARED_STABLE_IDS:Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    .line 391
    invoke-static {}, Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;->$values()[Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;->$VALUES:[Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

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

    .line 391
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;
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

    .line 391
    const-class v0, Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    return-object v0
.end method

.method public static values()[Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;
    .locals 1

    .line 391
    sget-object v0, Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;->$VALUES:[Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    invoke-virtual {v0}, [Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v7/widget/ConcatAdapter$Config$StableIdMode;

    return-object v0
.end method
