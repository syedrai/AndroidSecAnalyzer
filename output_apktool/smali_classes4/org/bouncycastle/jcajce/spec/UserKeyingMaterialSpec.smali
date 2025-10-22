.class public Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;
.super Ljava/lang/Object;
.source "UserKeyingMaterialSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final salt:[B

.field private final userKeyingMaterial:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "userKeyingMaterial"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userKeyingMaterial"
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B[B)V

    .line 21
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1
    .param p1, "userKeyingMaterial"    # [B
    .param p2, "salt"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userKeyingMaterial",
            "salt"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->userKeyingMaterial:[B

    .line 32
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->salt:[B

    .line 33
    return-void
.end method


# virtual methods
.method public getSalt()[B
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->salt:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getUserKeyingMaterial()[B
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;->userKeyingMaterial:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
