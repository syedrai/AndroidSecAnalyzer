.class abstract enum Lcom/google/common/hash/BloomFilterStrategies;
.super Ljava/lang/Enum;
.source "BloomFilterStrategies.java"

# interfaces
.implements Lcom/google/common/hash/BloomFilter$Strategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/BloomFilterStrategies;",
        ">;",
        "Lcom/google/common/hash/BloomFilter$Strategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/hash/BloomFilterStrategies;

.field public static final enum MURMUR128_MITZ_32:Lcom/google/common/hash/BloomFilterStrategies;

.field public static final enum MURMUR128_MITZ_64:Lcom/google/common/hash/BloomFilterStrategies;


# direct methods
.method private static synthetic $values()[Lcom/google/common/hash/BloomFilterStrategies;
    .locals 3

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/hash/BloomFilterStrategies;

    sget-object v1, Lcom/google/common/hash/BloomFilterStrategies;->MURMUR128_MITZ_32:Lcom/google/common/hash/BloomFilterStrategies;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/hash/BloomFilterStrategies;->MURMUR128_MITZ_64:Lcom/google/common/hash/BloomFilterStrategies;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 45
    new-instance v0, Lcom/google/common/hash/BloomFilterStrategies$1;

    const-string v1, "MURMUR128_MITZ_32"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/hash/BloomFilterStrategies$1;-><init>(Ljava/lang/String;ILcom/google/common/hash/BloomFilterStrategies-IA;)V

    sput-object v0, Lcom/google/common/hash/BloomFilterStrategies;->MURMUR128_MITZ_32:Lcom/google/common/hash/BloomFilterStrategies;

    .line 99
    new-instance v0, Lcom/google/common/hash/BloomFilterStrategies$2;

    const-string v1, "MURMUR128_MITZ_64"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/hash/BloomFilterStrategies$2;-><init>(Ljava/lang/String;ILcom/google/common/hash/BloomFilterStrategies-IA;)V

    sput-object v0, Lcom/google/common/hash/BloomFilterStrategies;->MURMUR128_MITZ_64:Lcom/google/common/hash/BloomFilterStrategies;

    .line 39
    invoke-static {}, Lcom/google/common/hash/BloomFilterStrategies;->$values()[Lcom/google/common/hash/BloomFilterStrategies;

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/BloomFilterStrategies;->$VALUES:[Lcom/google/common/hash/BloomFilterStrategies;

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

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/hash/BloomFilterStrategies-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/BloomFilterStrategies;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/BloomFilterStrategies;
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

    .line 39
    const-class v0, Lcom/google/common/hash/BloomFilterStrategies;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/BloomFilterStrategies;

    return-object v0
.end method

.method public static values()[Lcom/google/common/hash/BloomFilterStrategies;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/common/hash/BloomFilterStrategies;->$VALUES:[Lcom/google/common/hash/BloomFilterStrategies;

    invoke-virtual {v0}, [Lcom/google/common/hash/BloomFilterStrategies;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/BloomFilterStrategies;

    return-object v0
.end method
