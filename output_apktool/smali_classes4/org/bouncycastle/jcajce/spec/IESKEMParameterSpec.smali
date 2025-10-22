.class public Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;
.super Ljava/lang/Object;
.source "IESKEMParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final recipientInfo:[B

.field private final usePointCompression:Z


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "recipientInfo"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientInfo"
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;-><init>([BZ)V

    .line 26
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1
    .param p1, "recipientInfo"    # [B
    .param p2, "usePointCompression"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recipientInfo",
            "usePointCompression"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;->recipientInfo:[B

    .line 39
    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;->usePointCompression:Z

    .line 40
    return-void
.end method


# virtual methods
.method public getRecipientInfo()[B
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;->recipientInfo:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hasUsePointCompression()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;->usePointCompression:Z

    return v0
.end method
