.class public Lorg/bouncycastle/jce/spec/ElGamalKeySpec;
.super Ljava/lang/Object;
.source "ElGamalKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private spec:Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;)V
    .locals 0
    .param p1, "spec"    # Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spec"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/bouncycastle/jce/spec/ElGamalKeySpec;->spec:Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    .line 14
    return-void
.end method


# virtual methods
.method public getParams()Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ElGamalKeySpec;->spec:Lorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    return-object v0
.end method
