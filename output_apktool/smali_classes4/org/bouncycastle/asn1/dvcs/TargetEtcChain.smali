.class public Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "TargetEtcChain.java"


# instance fields
.field private chain:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private pathProcInput:Lorg/bouncycastle/asn1/dvcs/PathProcInput;

.field private target:Lorg/bouncycastle/asn1/dvcs/CertEtcToken;


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

    .line 58
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 61
    .local v0, "obj":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v0}, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    .line 63
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 65
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 66
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    .line 68
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->extractPathProcInput(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 73
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    .line 75
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 76
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->extractPathProcInput(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move v1, v2

    goto :goto_1

    .line 80
    :cond_1
    :goto_0
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/CertEtcToken;)V
    .locals 1
    .param p1, "target"    # Lorg/bouncycastle/asn1/dvcs/CertEtcToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/bouncycastle/asn1/dvcs/CertEtcToken;[Lorg/bouncycastle/asn1/dvcs/CertEtcToken;Lorg/bouncycastle/asn1/dvcs/PathProcInput;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/CertEtcToken;Lorg/bouncycastle/asn1/dvcs/PathProcInput;)V
    .locals 1
    .param p1, "target"    # Lorg/bouncycastle/asn1/dvcs/CertEtcToken;
    .param p2, "pathProcInput"    # Lorg/bouncycastle/asn1/dvcs/PathProcInput;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "pathProcInput"
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/bouncycastle/asn1/dvcs/CertEtcToken;[Lorg/bouncycastle/asn1/dvcs/CertEtcToken;Lorg/bouncycastle/asn1/dvcs/PathProcInput;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/CertEtcToken;[Lorg/bouncycastle/asn1/dvcs/CertEtcToken;)V
    .locals 1
    .param p1, "target"    # Lorg/bouncycastle/asn1/dvcs/CertEtcToken;
    .param p2, "chain"    # [Lorg/bouncycastle/asn1/dvcs/CertEtcToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "chain"
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/bouncycastle/asn1/dvcs/CertEtcToken;[Lorg/bouncycastle/asn1/dvcs/CertEtcToken;Lorg/bouncycastle/asn1/dvcs/PathProcInput;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/CertEtcToken;[Lorg/bouncycastle/asn1/dvcs/CertEtcToken;Lorg/bouncycastle/asn1/dvcs/PathProcInput;)V
    .locals 1
    .param p1, "target"    # Lorg/bouncycastle/asn1/dvcs/CertEtcToken;
    .param p2, "chain"    # [Lorg/bouncycastle/asn1/dvcs/CertEtcToken;
    .param p3, "pathProcInput"    # Lorg/bouncycastle/asn1/dvcs/PathProcInput;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "chain",
            "pathProcInput"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    .line 49
    if-eqz p2, :cond_0

    .line 51
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 54
    :cond_0
    iput-object p3, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    .line 55
    return-void
.end method

.method public static arrayFromSequence(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;
    .locals 3
    .param p0, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    .line 174
    .local v0, "tmp":[Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 176
    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    move-result-object v2

    aput-object v2, v0, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private extractPathProcInput(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 5
    .param p1, "obj"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 84
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    .line 85
    .local v0, "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag encountered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    .line 89
    nop

    .line 93
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 97
    instance-of v0, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    if-eqz v0, :cond_0

    .line 99
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    return-object v0

    .line 101
    :cond_0
    if-eqz p0, :cond_1

    .line 103
    new-instance v0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 106
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;
    .locals 1
    .param p0, "obj"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "explicit"
        }
    .end annotation

    .line 113
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getChain()[Lorg/bouncycastle/asn1/dvcs/CertEtcToken;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-static {v0}, Lorg/bouncycastle/asn1/dvcs/CertEtcToken;->arrayFromSequence(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    move-result-object v0

    return-object v0

    .line 162
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPathProcInput()Lorg/bouncycastle/asn1/dvcs/PathProcInput;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    return-object v0
.end method

.method public getTarget()Lorg/bouncycastle/asn1/dvcs/CertEtcToken;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 118
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 119
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 120
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 124
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    if-eqz v1, :cond_1

    .line 126
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 129
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    .local v0, "s":Ljava/lang/StringBuffer;
    const-string v1, "TargetEtcChain {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/bouncycastle/asn1/dvcs/CertEtcToken;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pathProcInput: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    :cond_1
    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
