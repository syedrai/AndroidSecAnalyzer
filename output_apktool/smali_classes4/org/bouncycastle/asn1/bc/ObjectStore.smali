.class public Lorg/bouncycastle/asn1/bc/ObjectStore;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "ObjectStore.java"


# instance fields
.field private final integrityCheck:Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

.field private final storeData:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 48
    .local v0, "sData":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v2, v0, Lorg/bouncycastle/asn1/bc/EncryptedObjectStoreData;

    if-eqz v2, :cond_0

    .line 50
    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStore;->storeData:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 52
    :cond_0
    instance-of v2, v0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;

    if-eqz v2, :cond_1

    .line 54
    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStore;->storeData:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 60
    .local v2, "seqData":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 62
    invoke-static {v2}, Lorg/bouncycastle/asn1/bc/EncryptedObjectStoreData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/EncryptedObjectStoreData;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/bc/ObjectStore;->storeData:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 66
    :cond_2
    invoke-static {v2}, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/ObjectStoreData;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/bc/ObjectStore;->storeData:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 70
    .end local v2    # "seqData":Lorg/bouncycastle/asn1/ASN1Sequence;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/bc/ObjectStore;->integrityCheck:Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    .line 71
    return-void

    .line 44
    .end local v0    # "sData":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "malformed sequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bc/EncryptedObjectStoreData;Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;)V
    .locals 0
    .param p1, "encryptedObjectStoreData"    # Lorg/bouncycastle/asn1/bc/EncryptedObjectStoreData;
    .param p2, "integrityCheck"    # Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encryptedObjectStoreData",
            "integrityCheck"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/bouncycastle/asn1/bc/ObjectStore;->storeData:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 37
    iput-object p2, p0, Lorg/bouncycastle/asn1/bc/ObjectStore;->integrityCheck:Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bc/ObjectStoreData;Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;)V
    .locals 0
    .param p1, "objectStoreData"    # Lorg/bouncycastle/asn1/bc/ObjectStoreData;
    .param p2, "integrityCheck"    # Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objectStoreData",
            "integrityCheck"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/bouncycastle/asn1/bc/ObjectStore;->storeData:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 30
    iput-object p2, p0, Lorg/bouncycastle/asn1/bc/ObjectStore;->integrityCheck:Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    .line 31
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/ObjectStore;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 75
    instance-of v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStore;

    if-eqz v0, :cond_0

    .line 77
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/bc/ObjectStore;

    return-object v0

    .line 79
    :cond_0
    if-eqz p0, :cond_1

    .line 81
    new-instance v0, Lorg/bouncycastle/asn1/bc/ObjectStore;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bc/ObjectStore;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 84
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getIntegrityCheck()Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStore;->integrityCheck:Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    return-object v0
.end method

.method public getStoreData()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStore;->storeData:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 99
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 101
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/ObjectStore;->storeData:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 102
    iget-object v1, p0, Lorg/bouncycastle/asn1/bc/ObjectStore;->integrityCheck:Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 104
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
