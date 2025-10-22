.class public Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;
.super Ljava/lang/Object;
.source "RootOfTrust.java"


# static fields
.field private static final DEVICE_LOCKED_INDEX:I = 0x1

.field public static final KM_VERIFIED_BOOT_FAILED:I = 0x3

.field public static final KM_VERIFIED_BOOT_SELF_SIGNED:I = 0x1

.field public static final KM_VERIFIED_BOOT_UNVERIFIED:I = 0x2

.field public static final KM_VERIFIED_BOOT_VERIFIED:I = 0x0

.field private static final VERIFIED_BOOT_KEY_INDEX:I = 0x0

.field private static final VERIFIED_BOOT_STATE_INDEX:I = 0x2


# instance fields
.field private final deviceLocked:Z

.field private final verifiedBootKey:[B

.field private final verifiedBootState:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 4
    .param p1, "asn1Encodable"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "asn1Encodable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 45
    .local v0, "sequence":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->verifiedBootKey:[B

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getBooleanFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->deviceLocked:Z

    .line 47
    nop

    .line 48
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v1

    iput v1, p0, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->verifiedBootState:I

    .line 49
    return-void

    .line 40
    .end local v0    # "sequence":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected sequence for root of trust, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verifiedBootStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "verifiedBootState"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verifiedBootState"
        }
    .end annotation

    .line 52
    packed-switch p0, :pswitch_data_0

    .line 62
    const-string v0, "Unknown"

    return-object v0

    .line 60
    :pswitch_0
    const-string v0, "Failed"

    return-object v0

    .line 58
    :pswitch_1
    const-string v0, "Unverified"

    return-object v0

    .line 56
    :pswitch_2
    const-string v0, "Self-signed"

    return-object v0

    .line 54
    :pswitch_3
    const-string v0, "Verified"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getVerifiedBootKey()[B
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->verifiedBootKey:[B

    return-object v0
.end method

.method public getVerifiedBootState()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->verifiedBootState:I

    return v0
.end method

.method public isDeviceLocked()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->deviceLocked:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    const-string v1, "\nVerified boot Key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->verifiedBootKey:[B

    invoke-virtual {v1, v2}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    const-string v1, "\nDevice locked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->deviceLocked:Z

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    const-string v1, "\nVerified boot state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->verifiedBootState:I

    .line 86
    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;->verifiedBootStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    return-object v0
.end method
