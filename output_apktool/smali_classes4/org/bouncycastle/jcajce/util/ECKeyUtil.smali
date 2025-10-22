.class public Lorg/bouncycastle/jcajce/util/ECKeyUtil;
.super Ljava/lang/Object;
.source "ECKeyUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/util/ECKeyUtil$ECPublicKeyWithCompression;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKeyWithCompression(Ljava/security/interfaces/ECPublicKey;)Ljava/security/interfaces/ECPublicKey;
    .locals 1
    .param p0, "ecPublicKey"    # Ljava/security/interfaces/ECPublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ecPublicKey"
        }
    .end annotation

    .line 32
    new-instance v0, Lorg/bouncycastle/jcajce/util/ECKeyUtil$ECPublicKeyWithCompression;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jcajce/util/ECKeyUtil$ECPublicKeyWithCompression;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    return-object v0
.end method
