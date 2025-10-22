.class public Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;
.super Ljava/lang/Object;
.source "DHUParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final ephemeralPrivateKey:Ljava/security/PrivateKey;

.field private final ephemeralPublicKey:Ljava/security/PublicKey;

.field private final otherPartyEphemeralKey:Ljava/security/PublicKey;

.field private final userKeyingMaterial:[B


# direct methods
.method public constructor <init>(Ljava/security/KeyPair;Ljava/security/PublicKey;)V
    .locals 3
    .param p1, "ephemeralKeyPair"    # Ljava/security/KeyPair;
    .param p2, "otherPartyEphemeralKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ephemeralKeyPair",
            "otherPartyEphemeralKey"
        }
    .end annotation

    .line 90
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyPair;Ljava/security/PublicKey;[B)V
    .locals 2
    .param p1, "ephemeralKeyPair"    # Ljava/security/KeyPair;
    .param p2, "otherPartyEphemeralKey"    # Ljava/security/PublicKey;
    .param p3, "userKeyingMaterial"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ephemeralKeyPair",
            "otherPartyEphemeralKey",
            "userKeyingMaterial"
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "ephemeralPrivateKey"    # Ljava/security/PrivateKey;
    .param p2, "otherPartyEphemeralKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ephemeralPrivateKey",
            "otherPartyEphemeralKey"
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, v0}, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V
    .locals 1
    .param p1, "ephemeralPrivateKey"    # Ljava/security/PrivateKey;
    .param p2, "otherPartyEphemeralKey"    # Ljava/security/PublicKey;
    .param p3, "userKeyingMaterial"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ephemeralPrivateKey",
            "otherPartyEphemeralKey",
            "userKeyingMaterial"
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "ephemeralPublicKey"    # Ljava/security/PublicKey;
    .param p2, "ephemeralPrivateKey"    # Ljava/security/PrivateKey;
    .param p3, "otherPartyEphemeralKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ephemeralPublicKey",
            "ephemeralPrivateKey",
            "otherPartyEphemeralKey"
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;Ljava/security/PublicKey;[B)V
    .locals 2
    .param p1, "ephemeralPublicKey"    # Ljava/security/PublicKey;
    .param p2, "ephemeralPrivateKey"    # Ljava/security/PrivateKey;
    .param p3, "otherPartyEphemeralKey"    # Ljava/security/PublicKey;
    .param p4, "userKeyingMaterial"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ephemeralPublicKey",
            "ephemeralPrivateKey",
            "otherPartyEphemeralKey",
            "userKeyingMaterial"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-eqz p2, :cond_1

    .line 35
    if-eqz p3, :cond_0

    .line 39
    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->ephemeralPublicKey:Ljava/security/PublicKey;

    .line 40
    iput-object p2, p0, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->ephemeralPrivateKey:Ljava/security/PrivateKey;

    .line 41
    iput-object p3, p0, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->otherPartyEphemeralKey:Ljava/security/PublicKey;

    .line 42
    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->userKeyingMaterial:[B

    .line 43
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "other party ephemeral key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ephemeral private key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getEphemeralPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->ephemeralPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getEphemeralPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->ephemeralPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getOtherPartyEphemeralKey()Ljava/security/PublicKey;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->otherPartyEphemeralKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getUserKeyingMaterial()[B
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/DHUParameterSpec;->userKeyingMaterial:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
