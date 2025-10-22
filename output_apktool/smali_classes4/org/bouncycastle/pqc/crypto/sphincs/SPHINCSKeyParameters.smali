.class public Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "SPHINCSKeyParameters.java"


# static fields
.field public static final SHA3_256:Ljava/lang/String; = "SHA3-256"

.field public static final SHA512_256:Ljava/lang/String; = "SHA-512/256"


# instance fields
.field private final treeDigest:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ZLjava/lang/String;)V
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

    .line 22
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 23
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSKeyParameters;->treeDigest:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getTreeDigest()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSKeyParameters;->treeDigest:Ljava/lang/String;

    return-object v0
.end method
