.class public final Lorg/bouncycastle/crypto/util/DERMacData$Builder;
.super Ljava/lang/Object;
.source "DERMacData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DERMacData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private ephemDataU:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private ephemDataV:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private idU:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private idV:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private text:[B

.field private final type:Lorg/bouncycastle/crypto/util/DERMacData$Type;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/util/DERMacData$Type;[B[B[B[B)V
    .locals 1
    .param p1, "type"    # Lorg/bouncycastle/crypto/util/DERMacData$Type;
    .param p2, "idU"    # [B
    .param p3, "idV"    # [B
    .param p4, "ephemDataU"    # [B
    .param p5, "ephemDataV"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "idU",
            "idV",
            "ephemDataU",
            "ephemDataV"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->type:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    .line 59
    invoke-static {p2}, Lorg/bouncycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->idU:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 60
    invoke-static {p3}, Lorg/bouncycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->idV:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 61
    invoke-static {p4}, Lorg/bouncycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->ephemDataU:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 62
    invoke-static {p5}, Lorg/bouncycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->ephemDataV:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 63
    return-void
.end method

.method private concatenate([B[B[B[B[B[B)[B
    .locals 2
    .param p1, "header"    # [B
    .param p2, "id1"    # [B
    .param p3, "id2"    # [B
    .param p4, "ed1"    # [B
    .param p5, "ed2"    # [B
    .param p6, "text"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "header",
            "id1",
            "id2",
            "ed1",
            "ed2",
            "text"
        }
    .end annotation

    .line 99
    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    invoke-static {p4, p5, p6}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Lorg/bouncycastle/crypto/util/DERMacData;
    .locals 10

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->type:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/DERMacData$Type;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown type encountered in build"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/util/DERMacData;

    iget-object v2, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->type:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/util/DERMacData$Type;->getHeader()[B

    move-result-object v4

    iget-object v2, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->idV:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 90
    invoke-static {v2}, Lorg/bouncycastle/crypto/util/DerUtil;->toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v5

    iget-object v2, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->idU:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v2}, Lorg/bouncycastle/crypto/util/DerUtil;->toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->ephemDataV:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 91
    invoke-static {v2}, Lorg/bouncycastle/crypto/util/DerUtil;->toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->ephemDataU:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v2}, Lorg/bouncycastle/crypto/util/DerUtil;->toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v8

    iget-object v9, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->text:[B

    .line 89
    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->concatenate([B[B[B[B[B[B)[B

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/util/DERMacData;-><init>([BLorg/bouncycastle/crypto/util/DERMacData-IA;)V

    return-object v0

    .line 84
    :pswitch_1
    move-object v3, p0

    new-instance v0, Lorg/bouncycastle/crypto/util/DERMacData;

    iget-object v2, v3, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->type:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/util/DERMacData$Type;->getHeader()[B

    move-result-object v4

    iget-object v2, v3, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->idU:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 85
    invoke-static {v2}, Lorg/bouncycastle/crypto/util/DerUtil;->toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v5

    iget-object v2, v3, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->idV:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v2}, Lorg/bouncycastle/crypto/util/DerUtil;->toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v6

    iget-object v2, v3, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->ephemDataU:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 86
    invoke-static {v2}, Lorg/bouncycastle/crypto/util/DerUtil;->toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v7

    iget-object v2, v3, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->ephemDataV:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v2}, Lorg/bouncycastle/crypto/util/DerUtil;->toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v8

    iget-object v9, v3, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->text:[B

    .line 84
    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->concatenate([B[B[B[B[B[B)[B

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/util/DERMacData;-><init>([BLorg/bouncycastle/crypto/util/DERMacData-IA;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public withText([B)Lorg/bouncycastle/crypto/util/DERMacData$Builder;
    .locals 3
    .param p1, "text"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 73
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-direct {v0, v1, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/util/DerUtil;->toByteArray(Lorg/bouncycastle/asn1/ASN1Primitive;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/DERMacData$Builder;->text:[B

    .line 75
    return-object p0
.end method
