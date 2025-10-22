.class public Lorg/bouncycastle/asn1/x9/DHDomainParameters;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "DHDomainParameters.java"


# instance fields
.field private g:Lorg/bouncycastle/asn1/ASN1Integer;

.field private j:Lorg/bouncycastle/asn1/ASN1Integer;

.field private p:Lorg/bouncycastle/asn1/ASN1Integer;

.field private q:Lorg/bouncycastle/asn1/ASN1Integer;

.field private validationParms:Lorg/bouncycastle/asn1/x9/DHValidationParms;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/x9/DHValidationParms;)V
    .locals 2
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "j"    # Ljava/math/BigInteger;
    .param p5, "validationParms"    # Lorg/bouncycastle/asn1/x9/DHValidationParms;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "g",
            "q",
            "j",
            "validationParms"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 48
    if-eqz p1, :cond_2

    .line 52
    if-eqz p2, :cond_1

    .line 56
    if-eqz p3, :cond_0

    .line 61
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->p:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 62
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->g:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 63
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->q:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 64
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->j:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 65
    iput-object p5, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/bouncycastle/asn1/x9/DHValidationParms;

    .line 66
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'q\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'g\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'p\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x9/DHValidationParms;)V
    .locals 2
    .param p1, "p"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p2, "g"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p3, "q"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p4, "j"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .param p5, "validationParms"    # Lorg/bouncycastle/asn1/x9/DHValidationParms;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "g",
            "q",
            "j",
            "validationParms"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 71
    if-eqz p1, :cond_2

    .line 75
    if-eqz p2, :cond_1

    .line 79
    if-eqz p3, :cond_0

    .line 84
    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->p:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 85
    iput-object p2, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->g:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 86
    iput-object p3, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->q:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 87
    iput-object p4, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->j:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 88
    iput-object p5, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/bouncycastle/asn1/x9/DHValidationParms;

    .line 89
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'q\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'g\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'p\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

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

    .line 92
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 98
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 99
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->p:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 100
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->g:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 101
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->q:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 103
    invoke-static {v0}, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->getNext(Ljava/util/Enumeration;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 105
    .local v1, "next":Lorg/bouncycastle/asn1/ASN1Encodable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_0

    .line 107
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->j:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 108
    invoke-static {v0}, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->getNext(Ljava/util/Enumeration;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 111
    :cond_0
    if-eqz v1, :cond_1

    .line 113
    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x9/DHValidationParms;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/DHValidationParms;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/bouncycastle/asn1/x9/DHValidationParms;

    .line 115
    :cond_1
    return-void

    .line 95
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "next":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad sequence size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/DHDomainParameters;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 31
    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x9/DHDomainParameters;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid DHDomainParameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x9/DHDomainParameters;
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

    .line 26
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x9/DHDomainParameters;

    move-result-object v0

    return-object v0
.end method

.method private static getNext(Ljava/util/Enumeration;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p0, "e"    # Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 119
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getG()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->g:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getJ()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->j:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getP()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->p:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getQ()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->q:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getValidationParms()Lorg/bouncycastle/asn1/x9/DHValidationParms;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/bouncycastle/asn1/x9/DHValidationParms;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 149
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 150
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->p:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 151
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->g:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 152
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->q:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 154
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->j:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->j:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 159
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/bouncycastle/asn1/x9/DHValidationParms;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lorg/bouncycastle/asn1/x9/DHValidationParms;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 164
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
