.class public Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;
.super Ljava/lang/Object;
.source "ISO18033KDFParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field seed:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "seed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seed"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;->seed:[B

    .line 17
    return-void
.end method


# virtual methods
.method public getSeed()[B
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ISO18033KDFParameters;->seed:[B

    return-object v0
.end method
