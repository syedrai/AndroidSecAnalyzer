.class Lorg/bouncycastle/crypto/util/SSHNamedCurves$2;
.super Ljava/util/HashMap;
.source "SSHNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/SSHNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 7

    .line 42
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 44
    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "secp256r1"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "nistp256"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "secp384r1"

    aput-object v3, v2, v4

    const-string v3, "nistp384"

    aput-object v3, v2, v5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "secp521r1"

    aput-object v3, v2, v4

    const-string v3, "nistp521"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "sect163k1"

    aput-object v3, v2, v4

    const-string v3, "nistk163"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "secp192r1"

    aput-object v3, v2, v4

    const-string v3, "nistp192"

    aput-object v3, v2, v5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "secp224r1"

    aput-object v3, v2, v4

    const-string v3, "nistp224"

    aput-object v3, v2, v5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "sect233k1"

    aput-object v3, v2, v4

    const-string v3, "nistk233"

    aput-object v3, v2, v5

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "sect233r1"

    aput-object v3, v2, v4

    const-string v3, "nistb233"

    aput-object v3, v2, v5

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "sect283k1"

    aput-object v3, v2, v4

    const-string v3, "nistk283"

    aput-object v3, v2, v5

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "sect409k1"

    aput-object v3, v2, v4

    const-string v3, "nistk409"

    aput-object v3, v2, v5

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "sect409r1"

    aput-object v3, v2, v4

    const-string v3, "nistb409"

    aput-object v3, v2, v5

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "sect571k1"

    aput-object v2, v1, v4

    const-string v2, "nistt571"

    aput-object v2, v1, v5

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 58
    .local v0, "curves":[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 60
    aget-object v2, v0, v1

    .line 61
    .local v2, "item":[Ljava/lang/String;
    aget-object v3, v2, v4

    aget-object v6, v2, v5

    invoke-virtual {p0, v3, v6}, Lorg/bouncycastle/crypto/util/SSHNamedCurves$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .end local v2    # "item":[Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1
    .end local v0    # "curves":[[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
