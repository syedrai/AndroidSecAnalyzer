.class public Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
.super Ljava/lang/Object;
.source "LMSigParameters.java"


# static fields
.field public static final lms_sha256_n24_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n24_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n24_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n24_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n24_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n32_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n32_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n32_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n32_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_sha256_n32_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n24_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n24_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n24_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n24_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n24_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n32_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n32_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n32_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n32_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public static final lms_shake256_n32_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field private static paramBuilders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final digestOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final h:I

.field private final m:I

.field private final type:I


# direct methods
.method static bridge synthetic -$$Nest$fgettype(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->type:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 10

    .line 11
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x5

    const/16 v3, 0x20

    invoke-direct {v0, v2, v3, v2, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 12
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v4, 0x6

    const/16 v5, 0xa

    invoke-direct {v0, v4, v3, v5, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 13
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v4, 0x7

    const/16 v6, 0xf

    invoke-direct {v0, v4, v3, v6, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 14
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v4, 0x8

    const/16 v7, 0x14

    invoke-direct {v0, v4, v3, v7, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 15
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v4, 0x9

    const/16 v8, 0x19

    invoke-direct {v0, v4, v3, v8, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n32_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 17
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v4, 0x18

    invoke-direct {v0, v5, v4, v2, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n24_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 18
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v1, 0xb

    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v4, v5, v9}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n24_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 19
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v1, 0xc

    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v4, v6, v9}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n24_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 20
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v1, 0xd

    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v4, v7, v9}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n24_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 21
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v1, 0xe

    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v4, v8, v9}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_sha256_n24_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 23
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v6, v3, v2, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n32_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 24
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v1, 0x10

    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v3, v5, v9}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n32_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 25
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v1, 0x11

    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v3, v6, v9}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n32_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 26
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v1, 0x12

    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v3, v7, v9}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n32_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 27
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v1, 0x13

    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v3, v8, v9}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n32_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 29
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v7, v4, v2, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n24_h5:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 30
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v1, 0x15

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v4, v5, v2}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n24_h10:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 31
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v1, 0x16

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v4, v6, v2}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n24_h15:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 32
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    const/16 v1, 0x17

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, v4, v7, v2}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n24_h20:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 33
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v4, v4, v8, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;-><init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->lms_shake256_n24_h25:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    .line 35
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters$1;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters$1;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->paramBuilders:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(IIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "m"    # I
    .param p3, "h"    # I
    .param p4, "digestOid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "m",
            "h",
            "digestOid"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->type:I

    .line 72
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->m:I

    .line 73
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->h:I

    .line 74
    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->digestOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 75
    return-void
.end method

.method static getParametersForType(I)Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;
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

    .line 99
    sget-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->paramBuilders:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    return-object v0
.end method


# virtual methods
.method public getDigestOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->digestOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getH()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->h:I

    return v0
.end method

.method public getM()I
    .locals 1

    .line 89
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->m:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 79
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->type:I

    return v0
.end method
