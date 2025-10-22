.class public Lorg/bouncycastle/pqc/crypto/xmss/XMSSKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "XMSSKeyParameters.java"


# static fields
.field public static final SHAKE128:Ljava/lang/String; = "SHAKE128"

.field public static final SHAKE256:Ljava/lang/String; = "SHAKE256"

.field public static final SHA_256:Ljava/lang/String; = "SHA-256"

.field public static final SHA_512:Ljava/lang/String; = "SHA-512"


# instance fields
.field private final treeDigest:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isPrivateKey"    # Z
    .param p2, "treeDigest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isPrivateKey",
            "treeDigest"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 18
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSKeyParameters;->treeDigest:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getTreeDigest()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSKeyParameters;->treeDigest:Ljava/lang/String;

    return-object v0
.end method
