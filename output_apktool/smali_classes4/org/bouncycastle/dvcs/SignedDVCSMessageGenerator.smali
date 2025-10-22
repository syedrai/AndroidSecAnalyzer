.class public Lorg/bouncycastle/dvcs/SignedDVCSMessageGenerator;
.super Ljava/lang/Object;
.source "SignedDVCSMessageGenerator.java"


# instance fields
.field private final signedDataGen:Lorg/bouncycastle/cms/CMSSignedDataGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/CMSSignedDataGenerator;)V
    .locals 0
    .param p1, "signedDataGen"    # Lorg/bouncycastle/cms/CMSSignedDataGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signedDataGen"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/bouncycastle/dvcs/SignedDVCSMessageGenerator;->signedDataGen:Lorg/bouncycastle/cms/CMSSignedDataGenerator;

    .line 18
    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/dvcs/DVCSMessage;)Lorg/bouncycastle/cms/CMSSignedData;
    .locals 4
    .param p1, "message"    # Lorg/bouncycastle/dvcs/DVCSMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSException;
        }
    .end annotation

    .line 32
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/dvcs/DVCSMessage;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 34
    .local v0, "encapsulatedData":[B
    iget-object v1, p0, Lorg/bouncycastle/dvcs/SignedDVCSMessageGenerator;->signedDataGen:Lorg/bouncycastle/cms/CMSSignedDataGenerator;

    new-instance v2, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {p1}, Lorg/bouncycastle/dvcs/DVCSMessage;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Z)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v1
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 40
    .end local v0    # "encapsulatedData":[B
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/dvcs/DVCSException;

    const-string v2, "Could not encode DVCS request"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/dvcs/DVCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 36
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 38
    .local v0, "e":Lorg/bouncycastle/cms/CMSException;
    new-instance v1, Lorg/bouncycastle/dvcs/DVCSException;

    const-string v2, "Could not sign DVCS request"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/dvcs/DVCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
