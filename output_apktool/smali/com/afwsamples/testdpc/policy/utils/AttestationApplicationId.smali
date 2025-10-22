.class public Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;
.super Ljava/lang/Object;
.source "AttestationApplicationId.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;",
        ">;"
    }
.end annotation


# static fields
.field private static final PACKAGE_INFOS_INDEX:I = 0x0

.field private static final SIGNATURE_DIGESTS_INDEX:I = 0x1


# instance fields
.field private final packageInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final signatureDigests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 45
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 46
    .local v1, "uid":I
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "packageNames":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-eqz v3, :cond_2

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    .line 51
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 54
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 55
    .local v7, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    new-instance v9, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;

    iget v10, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v10, v10

    invoke-direct {v9, v6, v10, v11}, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;-><init>(Ljava/lang/String;J)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "packageInfo":Landroid/content/pm/PackageInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    .line 62
    aget-object v3, v2, v4

    const/16 v6, 0x40

    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 63
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v6

    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v8, v6, v4

    .line 64
    .local v8, "signature":Landroid/content/pm/Signature;
    const-string v9, "SHA-256"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 65
    .local v9, "sha256":Ljava/security/MessageDigest;
    iget-object v10, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v8    # "signature":Landroid/content/pm/Signature;
    .end local v9    # "sha256":Ljava/security/MessageDigest;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 68
    :cond_1
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    new-instance v6, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;

    invoke-direct {v6, p0, v5}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;-><init>(Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId-IA;)V

    invoke-static {v4, v6}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 69
    return-void

    .line 48
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    new-instance v3, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v4, "No names found for uid"

    invoke-direct {v3, v4}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
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

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 79
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 80
    .local v0, "sequence":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->parseAttestationPackageInfos(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    .line 82
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->parseSignatures(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    .line 85
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    new-instance v3, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;

    invoke-direct {v3, p0, v2}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;-><init>(Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId-IA;)V

    invoke-static {v1, v3}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    return-void

    .line 74
    .end local v0    # "sequence":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected sequence for AttestationApplicationId, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseAttestationPackageInfos(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/List;
    .locals 5
    .param p1, "asn1Encodable"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asn1Encodable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ")",
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 143
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_1

    .line 149
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;

    .line 150
    .local v0, "set":Lorg/bouncycastle/asn1/ASN1Set;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;>;"
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 152
    .local v3, "e":Lorg/bouncycastle/asn1/ASN1Encodable;
    new-instance v4, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;

    invoke-direct {v4, v3}, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v3    # "e":Lorg/bouncycastle/asn1/ASN1Encodable;
    goto :goto_0

    .line 154
    :cond_0
    return-object v1

    .line 144
    .end local v0    # "set":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;>;"
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected set for AttestationApplicationsInfos, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseSignatures(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/List;
    .locals 5
    .param p1, "asn1Encodable"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asn1Encodable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 159
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_1

    .line 164
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;

    .line 165
    .local v0, "set":Lorg/bouncycastle/asn1/ASN1Set;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 168
    .local v3, "e":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v3    # "e":Lorg/bouncycastle/asn1/ASN1Encodable;
    goto :goto_0

    .line 170
    :cond_0
    return-object v1

    .line 160
    .end local v0    # "set":Lorg/bouncycastle/asn1/ASN1Set;
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected set for Signature digests, found "

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
.method public compareTo(Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;)I
    .locals 5
    .param p1, "other"    # Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 120
    .local v0, "res":I
    if-eqz v0, :cond_0

    return v0

    .line 121
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;

    iget-object v3, p1, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;

    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;->compareTo(Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;)I

    move-result v0

    .line 123
    if-eqz v0, :cond_1

    return v0

    .line 121
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p1, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 126
    if-eqz v0, :cond_3

    return v0

    .line 127
    :cond_3
    new-instance v1, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;-><init>(Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId-IA;)V

    .line 128
    .local v1, "cmp":Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 129
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p1, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v1, v3, v4}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId$ByteArrayComparator;->compare([B[B)I

    move-result v0

    .line 130
    if-eqz v0, :cond_4

    return v0

    .line 128
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 132
    .end local v2    # "i":I
    :cond_5
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

    .line 33
    check-cast p1, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->compareTo(Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;)I

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

    .line 137
    instance-of v0, p1, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

    .line 138
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->compareTo(Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0
.end method

.method public getAttestationPackageInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    return-object v0
.end method

.method public getSignatureDigests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "AttestationApplicationId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 101
    .local v1, "noOfInfos":I
    const/4 v2, 0x1

    .line 102
    .local v2, "i":I
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->packageInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "/"

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;

    .line 103
    .local v4, "info":Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n### Package info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ###\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .end local v4    # "info":Lcom/afwsamples/testdpc/policy/utils/AttestationPackageInfo;
    goto :goto_0

    .line 106
    :cond_0
    const/4 v2, 0x1

    .line 107
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 108
    .local v3, "noOfSigs":I
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;->signatureDigests:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 109
    .local v6, "sig":[B
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "i":I
    .local v7, "i":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\nSignature digest "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    array-length v2, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v2, :cond_1

    aget-byte v10, v6, v9

    .line 111
    .local v10, "b":B
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v11, v12, v8

    const-string v11, " %02X"

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .end local v10    # "b":B
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 113
    .end local v6    # "sig":[B
    :cond_1
    move v2, v7

    goto :goto_1

    .line 114
    .end local v7    # "i":I
    .restart local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
