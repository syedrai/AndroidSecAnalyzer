.class public final Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "ASN1ObjectDescriptor.java"


# static fields
.field static final TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field private final baseGraphicString:Lorg/bouncycastle/asn1/ASN1GraphicString;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor$1;

    const-class v1, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1GraphicString;)V
    .locals 2
    .param p1, "baseGraphicString"    # Lorg/bouncycastle/asn1/ASN1GraphicString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseGraphicString"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 77
    if-eqz p1, :cond_0

    .line 82
    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lorg/bouncycastle/asn1/ASN1GraphicString;

    .line 83
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'baseGraphicString\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static createPrimitive([B)Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;
    .locals 2
    .param p0, "contents"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contents"
        }
    .end annotation

    .line 139
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1GraphicString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1GraphicString;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lorg/bouncycastle/asn1/ASN1GraphicString;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 32
    if-eqz p0, :cond_4

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_2

    .line 38
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 39
    .local v0, "primitive":Lorg/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    if-eqz v1, :cond_1

    .line 41
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    return-object v1

    .line 43
    .end local v0    # "primitive":Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    goto :goto_0

    .line 44
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 48
    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    move-object v1, p0

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to construct object descriptor from byte[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal object in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_4
    :goto_1
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "explicit"
        }
    .end annotation

    .line 70
    sget-object v0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    return-object v0
.end method


# virtual methods
.method asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 3
    .param p1, "other"    # Lorg/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 122
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    return v0

    .line 127
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    .line 129
    .local v0, "that":Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lorg/bouncycastle/asn1/ASN1GraphicString;

    iget-object v2, v0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lorg/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1GraphicString;->asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    return v1
.end method

.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 2
    .param p1, "out"    # Lorg/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "withTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    const/4 v0, 0x7

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 103
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lorg/bouncycastle/asn1/ASN1GraphicString;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/asn1/ASN1GraphicString;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 104
    return-void
.end method

.method encodeConstructed()Z
    .locals 1

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method encodedLength(Z)I
    .locals 1
    .param p1, "withTag"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "withTag"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lorg/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1GraphicString;->encodedLength(Z)I

    move-result v0

    return v0
.end method

.method public getBaseGraphicString()Lorg/bouncycastle/asn1/ASN1GraphicString;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lorg/bouncycastle/asn1/ASN1GraphicString;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lorg/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1GraphicString;->hashCode()I

    move-result v0

    not-int v0, v0

    return v0
.end method

.method toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lorg/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1GraphicString;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1GraphicString;

    .line 110
    .local v0, "der":Lorg/bouncycastle/asn1/ASN1GraphicString;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lorg/bouncycastle/asn1/ASN1GraphicString;

    if-ne v0, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lorg/bouncycastle/asn1/ASN1GraphicString;)V

    :goto_0
    return-object v1
.end method

.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lorg/bouncycastle/asn1/ASN1GraphicString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1GraphicString;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1GraphicString;

    .line 117
    .local v0, "dl":Lorg/bouncycastle/asn1/ASN1GraphicString;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lorg/bouncycastle/asn1/ASN1GraphicString;

    if-ne v0, v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lorg/bouncycastle/asn1/ASN1GraphicString;)V

    :goto_0
    return-object v1
.end method
