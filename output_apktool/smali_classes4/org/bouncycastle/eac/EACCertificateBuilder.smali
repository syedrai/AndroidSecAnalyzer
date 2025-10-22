.class public Lorg/bouncycastle/eac/EACCertificateBuilder;
.super Ljava/lang/Object;
.source "EACCertificateBuilder.java"


# static fields
.field private static final ZeroArray:[B


# instance fields
.field private certificateEffectiveDate:Lorg/bouncycastle/asn1/eac/PackedDate;

.field private certificateExpirationDate:Lorg/bouncycastle/asn1/eac/PackedDate;

.field private certificateHolderAuthorization:Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

.field private certificateHolderReference:Lorg/bouncycastle/asn1/eac/CertificateHolderReference;

.field private certificationAuthorityReference:Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;

.field private publicKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lorg/bouncycastle/eac/EACCertificateBuilder;->ZeroArray:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;Lorg/bouncycastle/asn1/eac/CertificateHolderReference;Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;Lorg/bouncycastle/asn1/eac/PackedDate;Lorg/bouncycastle/asn1/eac/PackedDate;)V
    .locals 0
    .param p1, "certificationAuthorityReference"    # Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;
    .param p2, "publicKey"    # Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;
    .param p3, "certificateHolderReference"    # Lorg/bouncycastle/asn1/eac/CertificateHolderReference;
    .param p4, "certificateHolderAuthorization"    # Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;
    .param p5, "certificateEffectiveDate"    # Lorg/bouncycastle/asn1/eac/PackedDate;
    .param p6, "certificateExpirationDate"    # Lorg/bouncycastle/asn1/eac/PackedDate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "certificationAuthorityReference",
            "publicKey",
            "certificateHolderReference",
            "certificateHolderAuthorization",
            "certificateEffectiveDate",
            "certificateExpirationDate"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificationAuthorityReference:Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;

    .line 40
    iput-object p2, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->publicKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    .line 41
    iput-object p3, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateHolderReference:Lorg/bouncycastle/asn1/eac/CertificateHolderReference;

    .line 42
    iput-object p4, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateHolderAuthorization:Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    .line 43
    iput-object p5, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateEffectiveDate:Lorg/bouncycastle/asn1/eac/PackedDate;

    .line 44
    iput-object p6, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateExpirationDate:Lorg/bouncycastle/asn1/eac/PackedDate;

    .line 45
    return-void
.end method

.method private buildBody()Lorg/bouncycastle/asn1/eac/CertificateBody;
    .locals 13

    .line 51
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    sget-object v2, Lorg/bouncycastle/eac/EACCertificateBuilder;->ZeroArray:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x0

    const/16 v3, 0x40

    const/16 v4, 0x29

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object v6, v0

    .line 54
    .local v6, "certificateProfileIdentifier":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    new-instance v5, Lorg/bouncycastle/asn1/eac/CertificateBody;

    iget-object v7, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificationAuthorityReference:Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;

    iget-object v8, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->publicKey:Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;

    iget-object v9, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateHolderReference:Lorg/bouncycastle/asn1/eac/CertificateHolderReference;

    iget-object v10, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateHolderAuthorization:Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    iget-object v11, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateEffectiveDate:Lorg/bouncycastle/asn1/eac/PackedDate;

    iget-object v12, p0, Lorg/bouncycastle/eac/EACCertificateBuilder;->certificateExpirationDate:Lorg/bouncycastle/asn1/eac/PackedDate;

    invoke-direct/range {v5 .. v12}, Lorg/bouncycastle/asn1/eac/CertificateBody;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;Lorg/bouncycastle/asn1/eac/CertificateHolderReference;Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;Lorg/bouncycastle/asn1/eac/PackedDate;Lorg/bouncycastle/asn1/eac/PackedDate;)V

    .line 63
    .local v5, "body":Lorg/bouncycastle/asn1/eac/CertificateBody;
    return-object v5
.end method


# virtual methods
.method public build(Lorg/bouncycastle/eac/operator/EACSigner;)Lorg/bouncycastle/eac/EACCertificateHolder;
    .locals 5
    .param p1, "signer"    # Lorg/bouncycastle/eac/operator/EACSigner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/eac/EACException;
        }
    .end annotation

    .line 71
    :try_start_0
    invoke-direct {p0}, Lorg/bouncycastle/eac/EACCertificateBuilder;->buildBody()Lorg/bouncycastle/asn1/eac/CertificateBody;

    move-result-object v0

    .line 73
    .local v0, "body":Lorg/bouncycastle/asn1/eac/CertificateBody;
    invoke-interface {p1}, Lorg/bouncycastle/eac/operator/EACSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 75
    .local v1, "vOut":Ljava/io/OutputStream;
    const-string v2, "DER"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 77
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 79
    new-instance v2, Lorg/bouncycastle/eac/EACCertificateHolder;

    new-instance v3, Lorg/bouncycastle/asn1/eac/CVCertificate;

    invoke-interface {p1}, Lorg/bouncycastle/eac/operator/EACSigner;->getSignature()[B

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/bouncycastle/asn1/eac/CVCertificate;-><init>(Lorg/bouncycastle/asn1/eac/CertificateBody;[B)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/eac/EACCertificateHolder;-><init>(Lorg/bouncycastle/asn1/eac/CVCertificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 81
    .end local v0    # "body":Lorg/bouncycastle/asn1/eac/CertificateBody;
    .end local v1    # "vOut":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/eac/EACException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to process signature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/eac/EACException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
