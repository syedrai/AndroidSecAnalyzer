.class Lorg/bouncycastle/its/jcajce/ClassUtil;
.super Ljava/lang/Object;
.source "ClassUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGCMSpec([BI)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1
    .param p0, "nonce"    # [B
    .param p1, "tagSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "nonce",
            "tagSize"
        }
    .end annotation

    .line 12
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-direct {v0, p1, p0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    return-object v0
.end method
