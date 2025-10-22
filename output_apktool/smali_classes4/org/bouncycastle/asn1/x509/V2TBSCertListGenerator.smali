.class public Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;
.super Ljava/lang/Object;
.source "V2TBSCertListGenerator.java"


# static fields
.field private static final reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;


# instance fields
.field private crlentries:Lorg/bouncycastle/asn1/ASN1EncodableVector;

.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private issuer:Lorg/bouncycastle/asn1/x500/X500Name;

.field private nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

.field private signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Sequence;

    sput-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 53
    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 54
    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 55
    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 56
    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x3

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 57
    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 58
    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 59
    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 60
    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 61
    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 62
    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/16 v1, 0x9

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 63
    sget-object v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    const/16 v1, 0xa

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    .line 44
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 45
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 68
    return-void
.end method

.method private static createInvalidityDateExtension(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 6
    .param p0, "invalidityDate"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "invalidityDate"
        }
    .end annotation

    .line 286
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 290
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :try_start_0
    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->invalidityDate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 291
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    nop

    .line 298
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    .line 293
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error encoding reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 7
    .param p0, "reasonCode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reasonCode"
        }
    .end annotation

    .line 267
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 269
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/CRLReason;->lookup(I)Lorg/bouncycastle/asn1/x509/CRLReason;

    move-result-object v1

    .line 273
    .local v1, "crlReason":Lorg/bouncycastle/asn1/x509/CRLReason;
    :try_start_0
    sget-object v2, Lorg/bouncycastle/asn1/x509/Extension;->reasonCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 274
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/CRLReason;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    nop

    .line 281
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v2

    .line 276
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error encoding reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private generateTBSCertStructure()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 4

    .line 236
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 238
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 239
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 243
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 245
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 246
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 252
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 257
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_3

    .line 259
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 262
    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method private internalAddCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "userCertificate"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p2, "revocationDate"    # Lorg/bouncycastle/asn1/x509/Time;
    .param p3, "extensions"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userCertificate",
            "revocationDate",
            "extensions"
        }
    .end annotation

    .line 170
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 172
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 173
    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 175
    if-eqz p3, :cond_0

    .line 177
    invoke-virtual {v0, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 180
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 181
    return-void
.end method


# virtual methods
.method public addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1UTCTime;I)V
    .locals 1
    .param p1, "userCertificate"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p2, "revocationDate"    # Lorg/bouncycastle/asn1/ASN1UTCTime;
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userCertificate",
            "revocationDate",
            "reason"
        }
    .end annotation

    .line 123
    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;I)V

    .line 124
    return-void
.end method

.method public addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;I)V
    .locals 1
    .param p1, "userCertificate"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p2, "revocationDate"    # Lorg/bouncycastle/asn1/x509/Time;
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userCertificate",
            "revocationDate",
            "reason"
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;ILorg/bouncycastle/asn1/ASN1GeneralizedTime;)V

    .line 129
    return-void
.end method

.method public addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;ILorg/bouncycastle/asn1/ASN1GeneralizedTime;)V
    .locals 4
    .param p1, "userCertificate"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p2, "revocationDate"    # Lorg/bouncycastle/asn1/x509/Time;
    .param p3, "reason"    # I
    .param p4, "invalidityDate"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userCertificate",
            "revocationDate",
            "reason",
            "invalidityDate"
        }
    .end annotation

    .line 133
    if-eqz p3, :cond_3

    .line 135
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 137
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v1, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    array-length v1, v1

    if-ge p3, v1, :cond_1

    .line 139
    if-ltz p3, :cond_0

    .line 143
    sget-object v1, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/bouncycastle/asn1/ASN1Sequence;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 141
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid reason value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_1
    invoke-static {p3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 150
    :goto_0
    if-eqz p4, :cond_2

    .line 152
    invoke-static {p4}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createInvalidityDateExtension(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 155
    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p0, p1, p2, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->internalAddCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 156
    .end local v0    # "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    goto :goto_1

    .line 157
    :cond_3
    if-eqz p4, :cond_4

    .line 159
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    .line 160
    invoke-static {p4}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->createInvalidityDateExtension(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 159
    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->internalAddCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_1

    .line 164
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/Extensions;)V

    .line 166
    :goto_1
    return-void
.end method

.method public addCRLEntry(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 2
    .param p1, "userCertificate"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p2, "revocationDate"    # Lorg/bouncycastle/asn1/x509/Time;
    .param p3, "extensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userCertificate",
            "revocationDate",
            "extensions"
        }
    .end annotation

    .line 185
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 187
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 188
    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 190
    if-eqz p3, :cond_0

    .line 192
    invoke-virtual {v0, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 195
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 196
    return-void
.end method

.method public addCRLEntry(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "crlEntry"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crlEntry"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 119
    return-void
.end method

.method public generatePreTBSCertList()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 2

    .line 222
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->generateTBSCertStructure()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V2 PreTBSCertList generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "signature should not be set in PreTBSCertList generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateTBSCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;
    .locals 2

    .line 212
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Lorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-direct {p0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->generateTBSCertStructure()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/TBSCertList;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V2 TBSCertList generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 0
    .param p1, "extensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extensions"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    .line 208
    return-void
.end method

.method public setExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 1
    .param p1, "extensions"    # Lorg/bouncycastle/asn1/x509/X509Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extensions"
        }
    .end annotation

    .line 201
    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)V

    .line 202
    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/asn1/x500/X500Name;)V
    .locals 0
    .param p1, "issuer"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issuer"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 89
    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "issuer"    # Lorg/bouncycastle/asn1/x509/X509Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issuer"
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 84
    return-void
.end method

.method public setNextUpdate(Lorg/bouncycastle/asn1/ASN1UTCTime;)V
    .locals 1
    .param p1, "nextUpdate"    # Lorg/bouncycastle/asn1/ASN1UTCTime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextUpdate"
        }
    .end annotation

    .line 100
    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    .line 101
    return-void
.end method

.method public setNextUpdate(Lorg/bouncycastle/asn1/x509/Time;)V
    .locals 0
    .param p1, "nextUpdate"    # Lorg/bouncycastle/asn1/x509/Time;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextUpdate"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    .line 113
    return-void
.end method

.method public setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "signature"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 75
    return-void
.end method

.method public setThisUpdate(Lorg/bouncycastle/asn1/ASN1UTCTime;)V
    .locals 1
    .param p1, "thisUpdate"    # Lorg/bouncycastle/asn1/ASN1UTCTime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thisUpdate"
        }
    .end annotation

    .line 94
    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    .line 95
    return-void
.end method

.method public setThisUpdate(Lorg/bouncycastle/asn1/x509/Time;)V
    .locals 0
    .param p1, "thisUpdate"    # Lorg/bouncycastle/asn1/x509/Time;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "thisUpdate"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    .line 107
    return-void
.end method
