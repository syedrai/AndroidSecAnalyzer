.class Lorg/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;
.super Ljava/lang/Object;
.source "BouncyCastleProvider.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CryptoServiceProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/BouncyCastleProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JcaCryptoService"
.end annotation


# instance fields
.field private final bitsOfSecurity:I

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bitsOfSecurity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "bitsOfSecurity"
        }
    .end annotation

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;->name:Ljava/lang/String;

    .line 560
    iput p2, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;->bitsOfSecurity:I

    .line 561
    return-void
.end method


# virtual methods
.method public bitsOfSecurity()I
    .locals 1

    .line 565
    iget v0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;->bitsOfSecurity:I

    return v0
.end method

.method public getParams()Ljava/lang/Object;
    .locals 1

    .line 580
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPurpose()Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .locals 1

    .line 575
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 570
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;->name:Ljava/lang/String;

    return-object v0
.end method
