.class public final enum Lj$/libcore/api/CorePlatformApi$Status;
.super Ljava/lang/Enum;
.source "CorePlatformApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/libcore/api/CorePlatformApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/libcore/api/CorePlatformApi$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/libcore/api/CorePlatformApi$Status;

.field public static final enum LEGACY_ONLY:Lj$/libcore/api/CorePlatformApi$Status;

.field public static final enum STABLE:Lj$/libcore/api/CorePlatformApi$Status;


# direct methods
.method private static synthetic $values()[Lj$/libcore/api/CorePlatformApi$Status;
    .locals 3

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lj$/libcore/api/CorePlatformApi$Status;

    sget-object v1, Lj$/libcore/api/CorePlatformApi$Status;->STABLE:Lj$/libcore/api/CorePlatformApi$Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lj$/libcore/api/CorePlatformApi$Status;->LEGACY_ONLY:Lj$/libcore/api/CorePlatformApi$Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 55
    new-instance v0, Lj$/libcore/api/CorePlatformApi$Status;

    const-string v1, "STABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/libcore/api/CorePlatformApi$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/libcore/api/CorePlatformApi$Status;->STABLE:Lj$/libcore/api/CorePlatformApi$Status;

    .line 62
    new-instance v0, Lj$/libcore/api/CorePlatformApi$Status;

    const-string v1, "LEGACY_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lj$/libcore/api/CorePlatformApi$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/libcore/api/CorePlatformApi$Status;->LEGACY_ONLY:Lj$/libcore/api/CorePlatformApi$Status;

    .line 48
    invoke-static {}, Lj$/libcore/api/CorePlatformApi$Status;->$values()[Lj$/libcore/api/CorePlatformApi$Status;

    move-result-object v0

    sput-object v0, Lj$/libcore/api/CorePlatformApi$Status;->$VALUES:[Lj$/libcore/api/CorePlatformApi$Status;

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
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/libcore/api/CorePlatformApi$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 48
    const-class v0, Lj$/libcore/api/CorePlatformApi$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/libcore/api/CorePlatformApi$Status;

    return-object v0
.end method

.method public static values()[Lj$/libcore/api/CorePlatformApi$Status;
    .locals 1

    .line 48
    sget-object v0, Lj$/libcore/api/CorePlatformApi$Status;->$VALUES:[Lj$/libcore/api/CorePlatformApi$Status;

    invoke-virtual {v0}, [Lj$/libcore/api/CorePlatformApi$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/libcore/api/CorePlatformApi$Status;

    return-object v0
.end method
