.class public Lorg/bouncycastle/asn1/x500/X500Name;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "X500Name.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field private static defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;


# instance fields
.field private hashCodeValue:I

.field private isHashCodeCalculated:Z

.field private rdnSeq:Lorg/bouncycastle/asn1/DERSequence;

.field private rdns:[Lorg/bouncycastle/asn1/x500/RDN;

.field private style:Lorg/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-object v0, Lorg/bouncycastle/asn1/x500/style/BCStyle;->INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    sput-object v0, Lorg/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "dirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dirName"
        }
    .end annotation

    .line 154
    sget-object v0, Lorg/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 105
    sget-object v0, Lorg/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/String;)V
    .locals 1
    .param p1, "style"    # Lorg/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "dirName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "style",
            "dirName"
        }
    .end annotation

    .line 161
    invoke-interface {p1, p2}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->fromString(Ljava/lang/String;)[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>([Lorg/bouncycastle/asn1/x500/RDN;)V

    .line 163
    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    .line 164
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "style"    # Lorg/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "style",
            "seq"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 112
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    .line 114
    .local v0, "count":I
    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    .line 115
    new-array v1, v0, [Lorg/bouncycastle/asn1/x500/RDN;

    iput-object v1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    .line 117
    const/4 v1, 0x1

    .line 118
    .local v1, "inPlace":Z
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 120
    invoke-virtual {p2, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 121
    .local v3, "element":Lorg/bouncycastle/asn1/ASN1Encodable;
    invoke-static {v3}, Lorg/bouncycastle/asn1/x500/RDN;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v4

    .line 122
    .local v4, "rdn":Lorg/bouncycastle/asn1/x500/RDN;
    if-ne v4, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    and-int/2addr v1, v5

    .line 123
    iget-object v5, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    aput-object v4, v5, v2

    .line 118
    .end local v3    # "element":Lorg/bouncycastle/asn1/ASN1Encodable;
    .end local v4    # "rdn":Lorg/bouncycastle/asn1/x500/RDN;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "index":I
    :cond_1
    if-eqz v1, :cond_2

    .line 128
    invoke-static {p2}, Lorg/bouncycastle/asn1/DERSequence;->convert(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/DERSequence;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lorg/bouncycastle/asn1/DERSequence;

    goto :goto_2

    .line 132
    :cond_2
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v3, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v2, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lorg/bouncycastle/asn1/DERSequence;

    .line 134
    :goto_2
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/x500/X500Name;)V
    .locals 1
    .param p1, "style"    # Lorg/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "name"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "style",
            "name"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    .line 47
    iget-object v0, p2, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    .line 48
    iget-object v0, p2, Lorg/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lorg/bouncycastle/asn1/DERSequence;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lorg/bouncycastle/asn1/DERSequence;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;[Lorg/bouncycastle/asn1/x500/RDN;)V
    .locals 2
    .param p1, "style"    # Lorg/bouncycastle/asn1/x500/X500NameStyle;
    .param p2, "rDNs"    # [Lorg/bouncycastle/asn1/x500/RDN;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "style",
            "rDNs"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 146
    iput-object p1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    .line 147
    invoke-virtual {p2}, [Lorg/bouncycastle/asn1/x500/RDN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/asn1/x500/RDN;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    .line 148
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lorg/bouncycastle/asn1/DERSequence;

    .line 149
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x500/RDN;)V
    .locals 1
    .param p1, "rDNs"    # [Lorg/bouncycastle/asn1/x500/RDN;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rDNs"
        }
    .end annotation

    .line 139
    sget-object v0, Lorg/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;[Lorg/bouncycastle/asn1/x500/RDN;)V

    .line 140
    return-void
.end method

.method public static getDefaultStyle()Lorg/bouncycastle/asn1/x500/X500NameStyle;
    .locals 1

    .line 313
    sget-object v0, Lorg/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;
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

    .line 69
    instance-of v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_0

    .line 71
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0

    .line 73
    :cond_0
    if-eqz p0, :cond_1

    .line 75
    new-instance v0, Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 78
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/X500Name;
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

    .line 63
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 2
    .param p0, "style"    # Lorg/bouncycastle/asn1/x500/X500NameStyle;
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "style",
            "obj"
        }
    .end annotation

    .line 85
    instance-of v0, p1, Lorg/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lorg/bouncycastle/asn1/x500/X500Name;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/x500/X500Name;)V

    return-object v0

    .line 89
    :cond_0
    if-eqz p1, :cond_1

    .line 91
    new-instance v0, Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 94
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setDefaultStyle(Lorg/bouncycastle/asn1/x500/X500NameStyle;)V
    .locals 2
    .param p0, "style"    # Lorg/bouncycastle/asn1/x500/X500NameStyle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 298
    if-eqz p0, :cond_0

    .line 303
    sput-object p0, Lorg/bouncycastle/asn1/x500/X500Name;->defaultStyle:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    .line 304
    return-void

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cannot set style to null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 259
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 261
    return v0

    .line 264
    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/asn1/x500/X500Name;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    instance-of v1, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v1, :cond_1

    .line 266
    return v2

    .line 269
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 271
    .local v1, "derO":Lorg/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    return v0

    .line 278
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-interface {v0, p0, v3}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->areEqual(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x500/X500Name;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 280
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    return v2
.end method

.method public getAttributeTypes()[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 7

    .line 183
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    array-length v0, v0

    .local v0, "count":I
    const/4 v1, 0x0

    .line 184
    .local v1, "totalSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 186
    iget-object v3, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    aget-object v3, v3, v2

    .line 187
    .local v3, "rdn":Lorg/bouncycastle/asn1/x500/RDN;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x500/RDN;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 184
    .end local v3    # "rdn":Lorg/bouncycastle/asn1/x500/RDN;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    .end local v2    # "i":I
    :cond_0
    new-array v2, v1, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 191
    .local v2, "oids":[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v3, 0x0

    .line 192
    .local v3, "oidsOff":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 194
    iget-object v5, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    aget-object v5, v5, v4

    .line 195
    .local v5, "rdn":Lorg/bouncycastle/asn1/x500/RDN;
    invoke-virtual {v5, v2, v3}, Lorg/bouncycastle/asn1/x500/RDN;->collectAttributeTypes([Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;I)I

    move-result v6

    add-int/2addr v3, v6

    .line 192
    .end local v5    # "rdn":Lorg/bouncycastle/asn1/x500/RDN;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 197
    .end local v4    # "i":I
    :cond_1
    return-object v2
.end method

.method public getRDNs()[Lorg/bouncycastle/asn1/x500/RDN;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    invoke-virtual {v0}, [Lorg/bouncycastle/asn1/x500/RDN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/asn1/x500/RDN;

    return-object v0
.end method

.method public getRDNs(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lorg/bouncycastle/asn1/x500/RDN;
    .locals 5
    .param p1, "attributeType"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributeType"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    array-length v0, v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x500/RDN;

    .line 209
    .local v0, "res":[Lorg/bouncycastle/asn1/x500/RDN;
    const/4 v1, 0x0

    .line 211
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    array-length v3, v3

    if-eq v2, v3, :cond_1

    .line 213
    iget-object v3, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    aget-object v3, v3, v2

    .line 214
    .local v3, "rdn":Lorg/bouncycastle/asn1/x500/RDN;
    invoke-virtual {v3, p1}, Lorg/bouncycastle/asn1/x500/RDN;->containsAttributeType(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "count":I
    .local v4, "count":I
    aput-object v3, v0, v1

    move v1, v4

    .line 211
    .end local v3    # "rdn":Lorg/bouncycastle/asn1/x500/RDN;
    .end local v4    # "count":I
    .restart local v1    # "count":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v2    # "i":I
    :cond_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 222
    new-array v2, v1, [Lorg/bouncycastle/asn1/x500/RDN;

    .line 223
    .local v2, "tmp":[Lorg/bouncycastle/asn1/x500/RDN;
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    move-object v0, v2

    .line 227
    .end local v2    # "tmp":[Lorg/bouncycastle/asn1/x500/RDN;
    :cond_2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 242
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    if-eqz v0, :cond_0

    .line 244
    iget v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    return v0

    .line 247
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->isHashCodeCalculated:Z

    .line 249
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->calculateHashCode(Lorg/bouncycastle/asn1/x500/X500Name;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    .line 251
    iget v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->hashCodeValue:I

    return v0
.end method

.method public size()I
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdns:[Lorg/bouncycastle/asn1/x500/RDN;

    array-length v0, v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->rdnSeq:Lorg/bouncycastle/asn1/DERSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/bouncycastle/asn1/x500/X500Name;->style:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p0}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->toString(Lorg/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
