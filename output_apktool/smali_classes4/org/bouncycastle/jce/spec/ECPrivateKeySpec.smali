.class public Lorg/bouncycastle/jce/spec/ECPrivateKeySpec;
.super Lorg/bouncycastle/jce/spec/ECKeySpec;
.source "ECPrivateKeySpec.java"


# instance fields
.field private d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 0
    .param p1, "d"    # Ljava/math/BigInteger;
    .param p2, "spec"    # Lorg/bouncycastle/jce/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "d",
            "spec"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p2}, Lorg/bouncycastle/jce/spec/ECKeySpec;-><init>(Lorg/bouncycastle/jce/spec/ECParameterSpec;)V

    .line 25
    iput-object p1, p0, Lorg/bouncycastle/jce/spec/ECPrivateKeySpec;->d:Ljava/math/BigInteger;

    .line 26
    return-void
.end method


# virtual methods
.method public getD()Ljava/math/BigInteger;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ECPrivateKeySpec;->d:Ljava/math/BigInteger;

    return-object v0
.end method
