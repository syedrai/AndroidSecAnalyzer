.class public Lorg/bouncycastle/jce/spec/GOST28147ParameterSpec;
.super Lorg/bouncycastle/jcajce/spec/GOST28147ParameterSpec;
.source "GOST28147ParameterSpec.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sBoxName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sBoxName"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/spec/GOST28147ParameterSpec;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "sBoxName"    # Ljava/lang/String;
    .param p2, "iv"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sBoxName",
            "iv"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/spec/GOST28147ParameterSpec;-><init>(Ljava/lang/String;[B)V

    .line 47
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "sBox"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sBox"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/spec/GOST28147ParameterSpec;-><init>([B)V

    .line 17
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0
    .param p1, "sBox"    # [B
    .param p2, "iv"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sBox",
            "iv"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/spec/GOST28147ParameterSpec;-><init>([B[B)V

    .line 28
    return-void
.end method
