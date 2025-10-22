.class public Lorg/bouncycastle/asn1/dvcs/PathProcInput;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PathProcInput.java"


# instance fields
.field private acceptablePolicySet:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

.field private explicitPolicyReqd:Z

.field private inhibitAnyPolicy:Z

.field private inhibitPolicyMapping:Z


# direct methods
.method public constructor <init>([Lorg/bouncycastle/asn1/x509/PolicyInformation;)V
    .locals 1
    .param p1, "acceptablePolicySet"    # [Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "acceptablePolicySet"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    .line 31
    iput-boolean v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    .line 32
    iput-boolean v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    .line 36
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->copy([Lorg/bouncycastle/asn1/x509/PolicyInformation;)[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    .line 37
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/PolicyInformation;ZZZ)V
    .locals 1
    .param p1, "acceptablePolicySet"    # [Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .param p2, "inhibitPolicyMapping"    # Z
    .param p3, "explicitPolicyReqd"    # Z
    .param p4, "inhibitAnyPolicy"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "acceptablePolicySet",
            "inhibitPolicyMapping",
            "explicitPolicyReqd",
            "inhibitAnyPolicy"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    .line 31
    iput-boolean v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    .line 32
    iput-boolean v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    .line 41
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->copy([Lorg/bouncycastle/asn1/x509/PolicyInformation;)[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    .line 42
    iput-boolean p2, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    .line 43
    iput-boolean p3, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    .line 44
    iput-boolean p4, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    .line 45
    return-void
.end method

.method private copy([Lorg/bouncycastle/asn1/x509/PolicyInformation;)[Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .locals 3
    .param p1, "policySet"    # [Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "policySet"
        }
    .end annotation

    .line 189
    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/PolicyInformation;

    .line 191
    .local v0, "rv":[Lorg/bouncycastle/asn1/x509/PolicyInformation;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    return-object v0
.end method

.method private static fromSequence(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/x509/PolicyInformation;
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

    .line 49
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/PolicyInformation;

    .line 51
    .local v0, "tmp":[Lorg/bouncycastle/asn1/x509/PolicyInformation;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 53
    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v2

    aput-object v2, v0, v1

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/PathProcInput;
    .locals 10
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 61
    instance-of v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    return-object v0

    .line 65
    :cond_0
    if-eqz p0, :cond_4

    .line 67
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 68
    .local v0, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 69
    .local v2, "policies":Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v3, Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    invoke-static {v2}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->fromSequence(Lorg/bouncycastle/asn1/ASN1Sequence;)[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;-><init>([Lorg/bouncycastle/asn1/x509/PolicyInformation;)V

    .line 71
    .local v3, "result":Lorg/bouncycastle/asn1/dvcs/PathProcInput;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 73
    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    .line 75
    .local v5, "o":Ljava/lang/Object;
    instance-of v6, v5, Lorg/bouncycastle/asn1/ASN1Boolean;

    if-eqz v6, :cond_1

    .line 77
    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v6

    .line 78
    .local v6, "x":Lorg/bouncycastle/asn1/ASN1Boolean;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v7

    invoke-direct {v3, v7}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->setInhibitPolicyMapping(Z)V

    .line 79
    .end local v6    # "x":Lorg/bouncycastle/asn1/ASN1Boolean;
    goto :goto_1

    .line 80
    :cond_1
    instance-of v6, v5, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v6, :cond_2

    .line 82
    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v6

    .line 84
    .local v6, "t":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown tag encountered: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :pswitch_0
    invoke-static {v6, v1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v7

    .line 92
    .local v7, "x":Lorg/bouncycastle/asn1/ASN1Boolean;
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v8

    invoke-direct {v3, v8}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->setInhibitAnyPolicy(Z)V

    .line 93
    goto :goto_1

    .line 87
    .end local v7    # "x":Lorg/bouncycastle/asn1/ASN1Boolean;
    :pswitch_1
    invoke-static {v6, v1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v7

    .line 88
    .restart local v7    # "x":Lorg/bouncycastle/asn1/ASN1Boolean;
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v8

    invoke-direct {v3, v8}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->setExplicitPolicyReqd(Z)V

    .line 89
    nop

    .line 71
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "t":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v7    # "x":Lorg/bouncycastle/asn1/ASN1Boolean;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
    .end local v4    # "i":I
    :cond_3
    return-object v3

    .line 102
    .end local v0    # "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "policies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "result":Lorg/bouncycastle/asn1/dvcs/PathProcInput;
    :cond_4
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/dvcs/PathProcInput;
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

    .line 109
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/PathProcInput;

    move-result-object v0

    return-object v0
.end method

.method private setExplicitPolicyReqd(Z)V
    .locals 0
    .param p1, "explicitPolicyReqd"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "explicitPolicyReqd"
        }
    .end annotation

    .line 174
    iput-boolean p1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    .line 175
    return-void
.end method

.method private setInhibitAnyPolicy(Z)V
    .locals 0
    .param p1, "inhibitAnyPolicy"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inhibitAnyPolicy"
        }
    .end annotation

    .line 184
    iput-boolean p1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    .line 185
    return-void
.end method

.method private setInhibitPolicyMapping(Z)V
    .locals 0
    .param p1, "inhibitPolicyMapping"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inhibitPolicyMapping"
        }
    .end annotation

    .line 164
    iput-boolean p1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    .line 165
    return-void
.end method


# virtual methods
.method public getAcceptablePolicySet()[Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->copy([Lorg/bouncycastle/asn1/x509/PolicyInformation;)[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v0

    return-object v0
.end method

.method public isExplicitPolicyReqd()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    return v0
.end method

.method public isInhibitAnyPolicy()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    return v0
.end method

.method public isInhibitPolicyMapping()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 114
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 117
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    iget-object v2, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    array-length v2, v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 118
    .local v1, "pV":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 120
    iget-object v3, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 126
    .end local v1    # "pV":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-boolean v1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    if-eqz v1, :cond_1

    .line 128
    iget-boolean v1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 130
    :cond_1
    iget-boolean v1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 132
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-boolean v3, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 134
    :cond_2
    iget-boolean v1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    if-eqz v1, :cond_3

    .line 136
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-boolean v3, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 139
    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    .line 145
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    iget-boolean v2, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    iget-boolean v3, p0, Lorg/bouncycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PathProcInput: {\nacceptablePolicySet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\ninhibitPolicyMapping: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nexplicitPolicyReqd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ninhibitAnyPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    return-object v0
.end method
