.class public Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordGenerator;
.super Ljava/lang/Object;
.source "ERSEvidenceRecordGenerator.java"


# instance fields
.field private final digCalcProv:Lorg/bouncycastle/operator/DigestCalculatorProvider;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 0
    .param p1, "digCalcProv"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digCalcProv"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordGenerator;->digCalcProv:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    .line 17
    return-void
.end method


# virtual methods
.method public generate(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveTimeStamps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 29
    .local p1, "archiveTimeStamps":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 32
    new-instance v2, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;

    new-instance v3, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    .line 33
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    invoke-virtual {v4}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->toASN1Structure()Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;-><init>(Lorg/bouncycastle/asn1/tsp/CryptoInfos;Lorg/bouncycastle/asn1/tsp/EncryptionInfo;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;)V

    iget-object v4, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordGenerator;->digCalcProv:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;-><init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    .line 32
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public generate(Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;)Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;
    .locals 4
    .param p1, "archiveTimeStamp"    # Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "archiveTimeStamp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    .line 22
    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;

    new-instance v1, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    .line 23
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->toASN1Structure()Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;-><init>(Lorg/bouncycastle/asn1/tsp/CryptoInfos;Lorg/bouncycastle/asn1/tsp/EncryptionInfo;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;)V

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordGenerator;->digCalcProv:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;-><init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    .line 22
    return-object v0
.end method
