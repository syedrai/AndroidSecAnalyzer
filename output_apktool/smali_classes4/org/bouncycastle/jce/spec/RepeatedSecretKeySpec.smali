.class public Lorg/bouncycastle/jce/spec/RepeatedSecretKeySpec;
.super Lorg/bouncycastle/jcajce/spec/RepeatedSecretKeySpec;
.source "RepeatedSecretKeySpec.java"


# instance fields
.field private algorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/spec/RepeatedSecretKeySpec;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method
