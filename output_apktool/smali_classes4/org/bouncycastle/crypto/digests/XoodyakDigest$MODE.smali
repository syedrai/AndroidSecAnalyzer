.class final enum Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;
.super Ljava/lang/Enum;
.source "XoodyakDigest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/XoodyakDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

.field public static final enum ModeHash:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

.field public static final enum ModeKeyed:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;
    .locals 3

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    sget-object v1, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeHash:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeKeyed:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    const-string v1, "ModeHash"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeHash:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    .line 41
    new-instance v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    const-string v1, "ModeKeyed"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeKeyed:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    .line 38
    invoke-static {}, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;->$values()[Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;->$VALUES:[Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;
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

    .line 38
    const-class v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    return-object v0
.end method

.method public static values()[Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;
    .locals 1

    .line 38
    sget-object v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;->$VALUES:[Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    return-object v0
.end method
