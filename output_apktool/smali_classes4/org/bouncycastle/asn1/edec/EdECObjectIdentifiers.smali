.class public interface abstract Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;
.super Ljava/lang/Object;
.source "EdECObjectIdentifiers.java"


# static fields
.field public static final id_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_Ed448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_X25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_X448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_edwards_curve_algs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.101"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_edwards_curve_algs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 12
    sget-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_edwards_curve_algs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "110"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 13
    sget-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_edwards_curve_algs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "111"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_X448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 14
    sget-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_edwards_curve_algs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "112"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 15
    sget-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_edwards_curve_algs:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "113"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->intern()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
