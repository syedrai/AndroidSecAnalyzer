.class public Lorg/bouncycastle/cert/ocsp/Req;
.super Ljava/lang/Object;
.source "Req.java"


# instance fields
.field private req:Lorg/bouncycastle/asn1/ocsp/Request;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/Request;)V
    .locals 0
    .param p1, "req"    # Lorg/bouncycastle/asn1/ocsp/Request;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "req"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/Req;->req:Lorg/bouncycastle/asn1/ocsp/Request;

    .line 14
    return-void
.end method


# virtual methods
.method public getCertID()Lorg/bouncycastle/cert/ocsp/CertificateID;
    .locals 2

    .line 18
    new-instance v0, Lorg/bouncycastle/cert/ocsp/CertificateID;

    iget-object v1, p0, Lorg/bouncycastle/cert/ocsp/Req;->req:Lorg/bouncycastle/asn1/ocsp/Request;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ocsp/Request;->getReqCert()Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/ocsp/CertificateID;-><init>(Lorg/bouncycastle/asn1/ocsp/CertID;)V

    return-object v0
.end method

.method public getSingleRequestExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/Req;->req:Lorg/bouncycastle/asn1/ocsp/Request;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/Request;->getSingleRequestExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    return-object v0
.end method
