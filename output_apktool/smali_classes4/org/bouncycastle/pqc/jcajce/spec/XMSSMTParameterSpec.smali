.class public Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;
.super Ljava/lang/Object;
.source "XMSSMTParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final SHA256:Ljava/lang/String; = "SHA256"

.field public static final SHA512:Ljava/lang/String; = "SHA512"

.field public static final SHAKE128:Ljava/lang/String; = "SHAKE128"

.field public static final SHAKE256:Ljava/lang/String; = "SHAKE256"

.field public static final XMSSMT_SHA2_20d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_20d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_20d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_20d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_40d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_40d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_40d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_40d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_40d8_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_40d8_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_60d12_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_60d12_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_60d3_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_60d3_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_60d6_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_60d6_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_20d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_20d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_20d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_20d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_40d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_40d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_40d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_40d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_40d8_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_40d8_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_60d12_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_60d12_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_60d3_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_60d3_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_60d6_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_60d6_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;


# instance fields
.field private final height:I

.field private final layers:I

.field private final treeDigest:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 28
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const-string v3, "SHA256"

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_20d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 29
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_20d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 30
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/16 v5, 0x28

    invoke-direct {v0, v5, v2, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_40d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 31
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v4, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_40d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 32
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/16 v6, 0x8

    invoke-direct {v0, v5, v6, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_40d8_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 33
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/16 v7, 0x3c

    const/4 v8, 0x3

    invoke-direct {v0, v7, v8, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_60d3_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 34
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/4 v9, 0x6

    invoke-direct {v0, v7, v9, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_60d6_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 35
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/16 v10, 0xc

    invoke-direct {v0, v7, v10, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_60d12_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 37
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v3, "SHA512"

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_20d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 38
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_20d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 39
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v2, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_40d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 40
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v4, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_40d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 41
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v6, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_40d8_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 42
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v7, v8, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_60d3_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 43
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v7, v9, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_60d6_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 44
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v7, v10, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_60d12_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 46
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v3, "SHAKE128"

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_20d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 47
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_20d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 48
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v2, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_40d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 49
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v4, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_40d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 50
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v6, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_40d8_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 51
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v7, v8, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_60d3_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 52
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v7, v9, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_60d6_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 53
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v7, v10, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_60d12_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 55
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v3, "SHAKE256"

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_20d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 56
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v1, v4, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_20d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 57
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v2, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_40d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 58
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v4, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_40d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 59
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v5, v6, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_40d8_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 60
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v7, v8, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_60d3_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 61
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v7, v9, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_60d6_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    .line 62
    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    invoke-direct {v0, v7, v10, v3}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_60d12_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "height"    # I
    .param p2, "layers"    # I
    .param p3, "treeDigest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "height",
            "layers",
            "treeDigest"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->height:I

    .line 71
    iput p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->layers:I

    .line 72
    iput-object p3, p0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->treeDigest:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->height:I

    return v0
.end method

.method public getLayers()I
    .locals 1

    .line 87
    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->layers:I

    return v0
.end method

.method public getTreeDigest()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->treeDigest:Ljava/lang/String;

    return-object v0
.end method
