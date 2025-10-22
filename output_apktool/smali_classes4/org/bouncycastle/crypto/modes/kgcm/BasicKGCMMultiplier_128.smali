.class public Lorg/bouncycastle/crypto/modes/kgcm/BasicKGCMMultiplier_128;
.super Ljava/lang/Object;
.source "BasicKGCMMultiplier_128.java"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/kgcm/KGCMMultiplier;


# instance fields
.field private final H:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/kgcm/BasicKGCMMultiplier_128;->H:[J

    return-void
.end method


# virtual methods
.method public init([J)V
    .locals 1
    .param p1, "H"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "H"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/kgcm/BasicKGCMMultiplier_128;->H:[J

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;->copy([J[J)V

    .line 11
    return-void
.end method

.method public multiplyH([J)V
    .locals 1
    .param p1, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/kgcm/BasicKGCMMultiplier_128;->H:[J

    invoke-static {p1, v0, p1}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;->multiply([J[J[J)V

    .line 16
    return-void
.end method
