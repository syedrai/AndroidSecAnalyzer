.class public Lorg/bouncycastle/jcajce/spec/TLSRSAPremasterSecretParameterSpec;
.super Ljava/lang/Object;
.source "TLSRSAPremasterSecretParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final protocolVersion:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "protocolVersion"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "protocolVersion"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lorg/bouncycastle/jcajce/spec/TLSRSAPremasterSecretParameterSpec;->protocolVersion:I

    .line 13
    return-void
.end method


# virtual methods
.method public getProtocolVersion()I
    .locals 1

    .line 17
    iget v0, p0, Lorg/bouncycastle/jcajce/spec/TLSRSAPremasterSecretParameterSpec;->protocolVersion:I

    return v0
.end method
