.class public Lorg/bouncycastle/cert/ocsp/OCSPRespBuilder;
.super Ljava/lang/Object;
.source "OCSPRespBuilder.java"


# static fields
.field public static final INTERNAL_ERROR:I = 0x2

.field public static final MALFORMED_REQUEST:I = 0x1

.field public static final SIG_REQUIRED:I = 0x5

.field public static final SUCCESSFUL:I = 0x0

.field public static final TRY_LATER:I = 0x3

.field public static final UNAUTHORIZED:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(ILjava/lang/Object;)Lorg/bouncycastle/cert/ocsp/OCSPResp;
    .locals 6
    .param p1, "status"    # I
    .param p2, "response"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "status",
            "response"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 31
    if-nez p2, :cond_0

    .line 33
    new-instance v0, Lorg/bouncycastle/cert/ocsp/OCSPResp;

    new-instance v1, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    new-instance v2, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;-><init>(Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;Lorg/bouncycastle/asn1/ocsp/ResponseBytes;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/ocsp/OCSPResp;-><init>(Lorg/bouncycastle/asn1/ocsp/OCSPResponse;)V

    return-object v0

    .line 36
    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    if-eqz v0, :cond_1

    .line 38
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    .line 43
    .local v0, "r":Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .local v1, "octs":Lorg/bouncycastle/asn1/ASN1OctetString;
    nop

    .line 50
    new-instance v2, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    sget-object v3, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 53
    .local v2, "rb":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    new-instance v3, Lorg/bouncycastle/cert/ocsp/OCSPResp;

    new-instance v4, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    new-instance v5, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-direct {v5, p1}, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;-><init>(I)V

    invoke-direct {v4, v5, v2}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;-><init>(Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;Lorg/bouncycastle/asn1/ocsp/ResponseBytes;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/cert/ocsp/OCSPResp;-><init>(Lorg/bouncycastle/asn1/ocsp/OCSPResponse;)V

    return-object v3

    .line 45
    .end local v1    # "octs":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v2    # "rb":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/bouncycastle/cert/ocsp/OCSPException;

    const-string v3, "can\'t encode object."

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 57
    .end local v0    # "r":Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v0, Lorg/bouncycastle/cert/ocsp/OCSPException;

    const-string/jumbo v1, "unknown response object"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
