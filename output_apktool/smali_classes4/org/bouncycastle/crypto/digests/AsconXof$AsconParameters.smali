.class public final enum Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;
.super Ljava/lang/Enum;
.source "AsconXof.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/AsconXof;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AsconParameters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

.field public static final enum AsconXof:Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

.field public static final enum AsconXofA:Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;
    .locals 3

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

    sget-object v1, Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;->AsconXof:Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;->AsconXofA:Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

    const-string v1, "AsconXof"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;->AsconXof:Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

    .line 21
    new-instance v0, Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

    const-string v1, "AsconXofA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;->AsconXofA:Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

    .line 18
    invoke-static {}, Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;->$values()[Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;->$VALUES:[Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

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

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;
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

    .line 18
    const-class v0, Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

    return-object v0
.end method

.method public static values()[Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;
    .locals 1

    .line 18
    sget-object v0, Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;->$VALUES:[Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

    return-object v0
.end method
