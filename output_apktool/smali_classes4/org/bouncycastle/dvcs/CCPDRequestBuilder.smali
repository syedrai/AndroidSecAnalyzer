.class public Lorg/bouncycastle/dvcs/CCPDRequestBuilder;
.super Lorg/bouncycastle/dvcs/DVCSRequestBuilder;
.source "CCPDRequestBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    new-instance v0, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;

    sget-object v1, Lorg/bouncycastle/asn1/dvcs/ServiceType;->CCPD:Lorg/bouncycastle/asn1/dvcs/ServiceType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;-><init>(Lorg/bouncycastle/asn1/dvcs/ServiceType;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/dvcs/DVCSRequestBuilder;-><init>(Lorg/bouncycastle/asn1/dvcs/DVCSRequestInformationBuilder;)V

    .line 16
    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/dvcs/MessageImprint;)Lorg/bouncycastle/dvcs/DVCSRequest;
    .locals 2
    .param p1, "messageImprint"    # Lorg/bouncycastle/dvcs/MessageImprint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageImprint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/dvcs/DVCSException;
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/bouncycastle/asn1/dvcs/Data;

    invoke-virtual {p1}, Lorg/bouncycastle/dvcs/MessageImprint;->toASN1Structure()Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dvcs/Data;-><init>(Lorg/bouncycastle/asn1/x509/DigestInfo;)V

    .line 30
    .local v0, "data":Lorg/bouncycastle/asn1/dvcs/Data;
    invoke-virtual {p0, v0}, Lorg/bouncycastle/dvcs/CCPDRequestBuilder;->createDVCRequest(Lorg/bouncycastle/asn1/dvcs/Data;)Lorg/bouncycastle/dvcs/DVCSRequest;

    move-result-object v1

    return-object v1
.end method
