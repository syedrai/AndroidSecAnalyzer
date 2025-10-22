.class public Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;
.super Ljava/lang/Object;
.source "AttestationPackageInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final PACKAGE_NAME_INDEX:I = 0x0

.field private static final VERSION_INDEX:I = 0x1


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final version:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "version"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->packageName:Ljava/lang/String;

    .line 32
    iput-wide p2, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->version:J

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 4
    .param p1, "asn1Encodable"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asn1Encodable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 42
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 44
    .local v0, "sequence":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 46
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 45
    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getStringFromAsn1OctetStreamAssumingUTF8(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    nop

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getLongFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->version:J

    .line 52
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string v3, "Converting octet stream to String triggered an UnsupportedEncodingException"

    invoke-direct {v2, v3, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 37
    .end local v0    # "sequence":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected sequence for AttestationPackageInfo, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public compareTo(Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;)I
    .locals 5
    .param p1, "other"    # Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, "res":I
    if-eqz v0, :cond_0

    return v0

    .line 75
    :cond_0
    iget-wide v1, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->version:J

    iget-wide v3, p1, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->version:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 76
    if-eqz v0, :cond_1

    return v0

    .line 77
    :cond_1
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 22
    check-cast p1, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->compareTo(Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 82
    instance-of v0, p1, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->compareTo(Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->version:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const-string v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->getVersion()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    return-object v0
.end method
