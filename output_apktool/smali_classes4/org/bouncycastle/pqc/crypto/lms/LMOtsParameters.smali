.class public Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
.super Ljava/lang/Object;
.source "LMOtsParameters.java"


# static fields
.field public static final reserved:I

.field public static final sha256_n24_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n24_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n24_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n24_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n32_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n32_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n32_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n24_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n24_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n24_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n24_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n32_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n32_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n32_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field private static final suppliers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final digestOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final ls:I

.field private final n:I

.field private final p:I

.field private final sigLen:I

.field private final type:I

.field private final w:I


# direct methods
.method static bridge synthetic -$$Nest$fgettype(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->type:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 16

    .line 12
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v6, 0x2144

    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x1

    const/16 v2, 0x20

    const/4 v3, 0x1

    const/16 v4, 0x109

    const/4 v5, 0x7

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 13
    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v7, 0x10c4

    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x2

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/16 v5, 0x85

    const/4 v6, 0x6

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 14
    new-instance v2, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v8, 0x884

    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x3

    const/16 v4, 0x20

    const/4 v5, 0x4

    const/16 v6, 0x43

    const/4 v7, 0x4

    invoke-direct/range {v2 .. v9}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 15
    new-instance v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v9, 0x464

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v4, 0x4

    const/16 v5, 0x20

    const/16 v6, 0x8

    const/16 v7, 0x22

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 17
    new-instance v4, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v10, 0x153c

    sget-object v11, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v5, 0x5

    const/16 v6, 0x18

    const/4 v7, 0x1

    const/16 v8, 0xc8

    const/16 v9, 0x8

    invoke-direct/range {v4 .. v11}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v4, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n24_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 18
    new-instance v5, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v11, 0xb7c

    sget-object v12, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v6, 0x6

    const/16 v7, 0x18

    const/4 v8, 0x2

    const/16 v9, 0x65

    const/4 v10, 0x6

    invoke-direct/range {v5 .. v12}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v5, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n24_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 19
    new-instance v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v12, 0x5dc

    sget-object v13, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v7, 0x7

    const/16 v8, 0x18

    const/4 v9, 0x4

    const/16 v10, 0x33

    const/4 v11, 0x4

    invoke-direct/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n24_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 20
    new-instance v7, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v13, 0x3fc

    sget-object v14, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v8, 0x8

    const/16 v9, 0x18

    const/16 v10, 0x8

    const/16 v11, 0x1a

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v14}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v7, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n24_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 22
    new-instance v8, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v14, 0x2144

    sget-object v15, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v9, 0x9

    const/16 v10, 0x20

    const/4 v11, 0x1

    const/16 v12, 0x109

    const/4 v13, 0x7

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v8, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n32_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 23
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v6, 0x10c4

    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v1, 0xa

    const/16 v2, 0x20

    const/4 v3, 0x2

    const/16 v4, 0x85

    const/4 v5, 0x6

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 24
    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v7, 0x884

    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v2, 0xb

    const/16 v3, 0x20

    const/4 v4, 0x4

    const/16 v5, 0x43

    const/4 v6, 0x4

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v1, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n32_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 25
    new-instance v2, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v8, 0x464

    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v3, 0xc

    const/16 v4, 0x20

    const/16 v5, 0x8

    const/16 v6, 0x22

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n32_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 27
    new-instance v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v9, 0x153c

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v4, 0xd

    const/16 v5, 0x18

    const/4 v6, 0x1

    const/16 v7, 0xc8

    const/16 v8, 0x8

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n24_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 28
    new-instance v4, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v10, 0xb7c

    sget-object v11, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v5, 0xe

    const/16 v6, 0x18

    const/4 v7, 0x2

    const/16 v8, 0x65

    const/4 v9, 0x6

    invoke-direct/range {v4 .. v11}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v4, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n24_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 29
    new-instance v5, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v11, 0x5dc

    sget-object v12, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v6, 0xf

    const/16 v7, 0x18

    const/4 v8, 0x4

    const/16 v9, 0x33

    const/4 v10, 0x4

    invoke-direct/range {v5 .. v12}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v5, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n24_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 30
    new-instance v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v12, 0x3fc

    sget-object v13, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v7, 0x10

    const/16 v8, 0x18

    const/16 v9, 0x8

    const/16 v10, 0x1a

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v6, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n24_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 32
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters$1;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters$1;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->suppliers:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "n"    # I
    .param p3, "w"    # I
    .param p4, "p"    # I
    .param p5, "ls"    # I
    .param p6, "sigLen"    # I
    .param p7, "digestOID"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "n",
            "w",
            "p",
            "ls",
            "sigLen",
            "digestOID"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->type:I

    .line 65
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->n:I

    .line 66
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->w:I

    .line 67
    iput p4, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->p:I

    .line 68
    iput p5, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->ls:I

    .line 69
    iput p6, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sigLen:I

    .line 70
    iput-object p7, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->digestOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 71
    return-void
.end method

.method public static getParametersForType(I)Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .locals 2
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 110
    sget-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->suppliers:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    return-object v0
.end method


# virtual methods
.method public getDigestOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->digestOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getLs()I
    .locals 1

    .line 95
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->ls:I

    return v0
.end method

.method public getN()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->n:I

    return v0
.end method

.method public getP()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->p:I

    return v0
.end method

.method public getSigLen()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sigLen:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->type:I

    return v0
.end method

.method public getW()I
    .locals 1

    .line 85
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->w:I

    return v0
.end method
