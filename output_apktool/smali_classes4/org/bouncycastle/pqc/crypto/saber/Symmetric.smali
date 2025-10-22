.class abstract Lorg/bouncycastle/pqc/crypto/saber/Symmetric;
.super Ljava/lang/Object;
.source "Symmetric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;,
        Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract hash_g([B[B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation
.end method

.method abstract hash_h([B[BI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "in",
            "outOffset"
        }
    .end annotation
.end method

.method abstract prf([B[BII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "in",
            "inLen",
            "outLen"
        }
    .end annotation
.end method
