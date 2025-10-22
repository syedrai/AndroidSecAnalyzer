.class public Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;
.super Ljava/lang/Object;
.source "AuthorizationList.java"


# static fields
.field public static final HW_AUTH_FINGERPRINT:I = 0x2

.field public static final HW_AUTH_PASSWORD:I = 0x1

.field private static final KEYMASTER_TAG_TYPE_MASK:I = 0xfffffff

.field public static final KM_ALGORITHM_EC:I = 0x3

.field public static final KM_ALGORITHM_RSA:I = 0x1

.field private static final KM_BOOL:I = 0x70000000

.field private static final KM_BYTES:I = -0x70000000

.field private static final KM_DATE:I = 0x60000000

.field public static final KM_DIGEST_MD5:I = 0x1

.field public static final KM_DIGEST_NONE:I = 0x0

.field public static final KM_DIGEST_SHA1:I = 0x2

.field public static final KM_DIGEST_SHA_2_224:I = 0x3

.field public static final KM_DIGEST_SHA_2_256:I = 0x4

.field public static final KM_DIGEST_SHA_2_384:I = 0x5

.field public static final KM_DIGEST_SHA_2_512:I = 0x6

.field public static final KM_EC_CURVE_P224:I = 0x0

.field public static final KM_EC_CURVE_P256:I = 0x1

.field public static final KM_EC_CURVE_P384:I = 0x2

.field public static final KM_EC_CURVE_P521:I = 0x3

.field private static final KM_ENUM:I = 0x10000000

.field private static final KM_ENUM_REP:I = 0x20000000

.field public static final KM_ORIGIN_GENERATED:I = 0x0

.field public static final KM_ORIGIN_IMPORTED:I = 0x2

.field public static final KM_ORIGIN_UNKNOWN:I = 0x3

.field public static final KM_PAD_NONE:I = 0x1

.field public static final KM_PAD_RSA_OAEP:I = 0x2

.field public static final KM_PAD_RSA_PKCS1_1_5_ENCRYPT:I = 0x4

.field public static final KM_PAD_RSA_PKCS1_1_5_SIGN:I = 0x5

.field public static final KM_PAD_RSA_PSS:I = 0x3

.field public static final KM_PURPOSE_DECRYPT:I = 0x1

.field public static final KM_PURPOSE_ENCRYPT:I = 0x0

.field public static final KM_PURPOSE_SIGN:I = 0x2

.field public static final KM_PURPOSE_VERIFY:I = 0x3

.field private static final KM_TAG_ACTIVE_DATETIME:I = 0x60000190

.field private static final KM_TAG_ALGORITHM:I = 0x10000002

.field private static final KM_TAG_ALLOW_WHILE_ON_BODY:I = 0x700001fa

.field private static final KM_TAG_ALL_APPLICATIONS:I = 0x70000258

.field private static final KM_TAG_APPLICATION_ID:I = -0x6ffffda7

.field private static final KM_TAG_ATTESTATION_APPLICATION_ID:I = -0x6ffffd3b

.field private static final KM_TAG_ATTESTATION_ID_BRAND:I = -0x6ffffd3a

.field private static final KM_TAG_ATTESTATION_ID_DEVICE:I = -0x6ffffd39

.field private static final KM_TAG_ATTESTATION_ID_IMEI:I = -0x6ffffd36

.field private static final KM_TAG_ATTESTATION_ID_MANUFACTURER:I = -0x6ffffd34

.field private static final KM_TAG_ATTESTATION_ID_MEID:I = -0x6ffffd35

.field private static final KM_TAG_ATTESTATION_ID_MODEL:I = -0x6ffffd33

.field private static final KM_TAG_ATTESTATION_ID_PRODUCT:I = -0x6ffffd38

.field private static final KM_TAG_ATTESTATION_ID_SERIAL:I = -0x6ffffd37

.field private static final KM_TAG_AUTH_TIMEOUT:I = 0x300001f9

.field private static final KM_TAG_BOOT_PATCHLEVEL:I = 0x300002cf

.field private static final KM_TAG_CREATION_DATETIME:I = 0x600002bd

.field private static final KM_TAG_DEVICE_UNIQUE_ATTESTATION:I = 0x700002d0

.field private static final KM_TAG_DIGEST:I = 0x20000005

.field private static final KM_TAG_EC_CURVE:I = 0x1000000a

.field private static final KM_TAG_KEY_SIZE:I = 0x30000003

.field private static final KM_TAG_NO_AUTH_REQUIRED:I = 0x700001f7

.field private static final KM_TAG_ORIGIN:I = 0x100002be

.field private static final KM_TAG_ORIGINATION_EXPIRE_DATETIME:I = 0x60000191

.field private static final KM_TAG_OS_PATCHLEVEL:I = 0x300002c2

.field private static final KM_TAG_OS_VERSION:I = 0x300002c1

.field private static final KM_TAG_PADDING:I = 0x20000006

.field private static final KM_TAG_PURPOSE:I = 0x20000001

.field private static final KM_TAG_ROLLBACK_RESISTANT:I = 0x700002bf

.field private static final KM_TAG_ROOT_OF_TRUST:I = -0x6ffffd40

.field private static final KM_TAG_RSA_PUBLIC_EXPONENT:I = 0x500000c8

.field private static final KM_TAG_TRUSTED_CONFIRMATION_REQUIRED:I = 0x700001fc

.field private static final KM_TAG_TRUSTED_USER_PRESENCE_REQUIRED:I = 0x700001fb

.field private static final KM_TAG_USAGE_EXPIRE_DATETIME:I = 0x60000192

.field private static final KM_TAG_USER_AUTH_TYPE:I = 0x100001f8

.field private static final KM_TAG_VENDOR_PATCHLEVEL:I = 0x300002ce

.field private static final KM_UINT:I = 0x30000000

.field private static final KM_ULONG:I = 0x50000000

.field private static final digestMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final paddingMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final purposeMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activeDateTime:Ljava/util/Date;

.field private algorithm:Ljava/lang/Integer;

.field private allApplications:Z

.field private allowWhileOnBody:Z

.field private applicationId:[B

.field private attestationApplicationId:Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

.field private authTimeout:Ljava/lang/Integer;

.field private bootPatchLevel:Ljava/lang/Integer;

.field private brand:Ljava/lang/String;

.field private confirmationRequired:Z

.field private creationDateTime:Ljava/util/Date;

.field private device:Ljava/lang/String;

.field private digests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ecCurve:Ljava/lang/Integer;

.field private imei:Ljava/lang/String;

.field private individualAttestation:Z

.field private keySize:Ljava/lang/Integer;

.field private manufacturer:Ljava/lang/String;

.field private meid:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private noAuthRequired:Z

.field private origin:Ljava/lang/Integer;

.field private originationExpireDateTime:Ljava/util/Date;

.field private osPatchLevel:Ljava/lang/Integer;

.field private osVersion:Ljava/lang/Integer;

.field private paddingModes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private product:Ljava/lang/String;

.field private purposes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rollbackResistant:Z

.field private rootOfTrust:Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;

.field private rsaPublicExponent:Ljava/lang/Long;

.field private serialNumber:Ljava/lang/String;

.field private usageExpireDateTime:Ljava/util/Date;

.field private userAuthType:Ljava/lang/Integer;

.field private userPresenceRequired:Z

.field private vendorPatchLevel:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 140
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 141
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NONE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 142
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "OAEP"

    invoke-virtual {v0, v3, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 143
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "PSS"

    invoke-virtual {v0, v4, v5}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 144
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "PKCS1 ENCRYPT"

    invoke-virtual {v0, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 145
    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "PKCS1 SIGN"

    invoke-virtual {v0, v6, v7}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingMap:Lcom/google/common/collect/ImmutableMap;

    .line 150
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 151
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 152
    const-string v2, "MD5"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 153
    const-string v2, "SHA1"

    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 154
    const-string v2, "SHA224"

    invoke-virtual {v0, v4, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 155
    const-string v2, "SHA256"

    invoke-virtual {v0, v5, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 156
    const-string v2, "SHA384"

    invoke-virtual {v0, v6, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 157
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "SHA512"

    invoke-virtual {v0, v2, v5}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->digestMap:Lcom/google/common/collect/ImmutableMap;

    .line 162
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 163
    const-string v2, "DECRYPT"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 164
    const-string v1, "ENCRYPT"

    invoke-virtual {v0, v7, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 165
    const-string v1, "SIGN"

    invoke-virtual {v0, v3, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 166
    const-string v1, "VERIFY"

    invoke-virtual {v0, v4, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->purposeMap:Lcom/google/common/collect/ImmutableMap;

    .line 161
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 8
    .param p1, "sequence"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sequence"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 213
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->parser()Lorg/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v0

    .line 214
    .local v0, "parser":Lorg/bouncycastle/asn1/ASN1SequenceParser;
    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->parseAsn1TaggedObject(Lorg/bouncycastle/asn1/ASN1SequenceParser;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 215
    .local v1, "entry":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_0
    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    .line 217
    .local v2, "tag":I
    nop

    .line 219
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing tag: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], value: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    const-string v4, "Attestation"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/16 v3, 0x11

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 222
    new-instance v3, Ljava/security/cert/CertificateParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 391
    :sswitch_0
    iput-boolean v7, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->individualAttestation:Z

    goto/16 :goto_1

    .line 284
    :sswitch_1
    nop

    .line 286
    invoke-static {v1, v2, v7, v6}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 285
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->bootPatchLevel:Ljava/lang/Integer;

    .line 287
    goto/16 :goto_1

    .line 279
    :sswitch_2
    nop

    .line 281
    invoke-static {v1, v2, v7, v6}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 280
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->vendorPatchLevel:Ljava/lang/Integer;

    .line 282
    goto/16 :goto_1

    .line 377
    :sswitch_3
    nop

    .line 379
    invoke-static {v1, v2, v7, v5}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 378
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->model:Ljava/lang/String;

    .line 380
    goto/16 :goto_1

    .line 372
    :sswitch_4
    nop

    .line 374
    invoke-static {v1, v2, v7, v5}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 373
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->manufacturer:Ljava/lang/String;

    .line 375
    goto/16 :goto_1

    .line 367
    :sswitch_5
    nop

    .line 369
    invoke-static {v1, v2, v7, v5}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 368
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->meid:Ljava/lang/String;

    .line 370
    goto/16 :goto_1

    .line 362
    :sswitch_6
    nop

    .line 364
    invoke-static {v1, v2, v7, v5}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 363
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->imei:Ljava/lang/String;

    .line 365
    goto/16 :goto_1

    .line 357
    :sswitch_7
    nop

    .line 359
    invoke-static {v1, v2, v7, v5}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 358
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->serialNumber:Ljava/lang/String;

    .line 360
    goto/16 :goto_1

    .line 352
    :sswitch_8
    nop

    .line 354
    invoke-static {v1, v2, v7, v5}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 353
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->product:Ljava/lang/String;

    .line 355
    goto/16 :goto_1

    .line 347
    :sswitch_9
    nop

    .line 349
    invoke-static {v1, v2, v7, v5}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 348
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->device:Ljava/lang/String;

    .line 350
    goto/16 :goto_1

    .line 342
    :sswitch_a
    nop

    .line 344
    invoke-static {v1, v2, v7, v5}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 343
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->brand:Ljava/lang/String;

    .line 345
    goto/16 :goto_1

    .line 334
    :sswitch_b
    new-instance v3, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

    .line 338
    invoke-static {v1, v2, v7, v5}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    .line 337
    invoke-static {v4}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v4

    .line 336
    invoke-static {v4}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getAsn1EncodableFromBytes([B)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->attestationApplicationId:Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

    .line 340
    goto/16 :goto_1

    .line 274
    :sswitch_c
    nop

    .line 276
    invoke-static {v1, v2, v7, v6}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 275
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->osPatchLevel:Ljava/lang/Integer;

    .line 277
    goto/16 :goto_1

    .line 269
    :sswitch_d
    nop

    .line 271
    invoke-static {v1, v2, v7, v6}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 270
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->osVersion:Ljava/lang/Integer;

    .line 272
    goto/16 :goto_1

    .line 330
    :sswitch_e
    new-instance v3, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;

    .line 331
    const/16 v4, 0x10

    invoke-static {v1, v2, v7, v4}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rootOfTrust:Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;

    .line 332
    goto/16 :goto_1

    .line 309
    :sswitch_f
    iput-boolean v7, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rollbackResistant:Z

    .line 310
    goto/16 :goto_1

    .line 264
    :sswitch_10
    nop

    .line 266
    invoke-static {v1, v2, v7, v6}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 265
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->origin:Ljava/lang/Integer;

    .line 267
    goto/16 :goto_1

    .line 259
    :sswitch_11
    nop

    .line 261
    invoke-static {v1, v2, v7, v6}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 260
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getDateFromAsn1(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->creationDateTime:Ljava/util/Date;

    .line 262
    goto/16 :goto_1

    .line 304
    :sswitch_12
    nop

    .line 306
    invoke-static {v1, v2, v7, v5}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 305
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getByteArrayFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->applicationId:[B

    .line 307
    goto/16 :goto_1

    .line 382
    :sswitch_13
    iput-boolean v7, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->allApplications:Z

    .line 383
    goto/16 :goto_1

    .line 388
    :sswitch_14
    iput-boolean v7, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->confirmationRequired:Z

    .line 389
    goto/16 :goto_1

    .line 385
    :sswitch_15
    iput-boolean v7, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->userPresenceRequired:Z

    .line 386
    goto/16 :goto_1

    .line 317
    :sswitch_16
    iput-boolean v7, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->allowWhileOnBody:Z

    .line 318
    goto/16 :goto_1

    .line 312
    :sswitch_17
    nop

    .line 314
    invoke-static {v1, v2, v7, v6}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 313
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->authTimeout:Ljava/lang/Integer;

    .line 315
    goto/16 :goto_1

    .line 325
    :sswitch_18
    nop

    .line 327
    invoke-static {v1, v2, v7, v6}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 326
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->userAuthType:Ljava/lang/Integer;

    .line 328
    goto/16 :goto_1

    .line 256
    :sswitch_19
    iput-boolean v7, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->noAuthRequired:Z

    .line 257
    goto/16 :goto_1

    .line 299
    :sswitch_1a
    nop

    .line 301
    invoke-static {v1, v2, v7, v6}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 300
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getDateFromAsn1(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->usageExpireDateTime:Ljava/util/Date;

    .line 302
    goto/16 :goto_1

    .line 294
    :sswitch_1b
    nop

    .line 296
    invoke-static {v1, v2, v7, v6}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 295
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getDateFromAsn1(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->originationExpireDateTime:Ljava/util/Date;

    .line 297
    goto/16 :goto_1

    .line 289
    :sswitch_1c
    nop

    .line 291
    invoke-static {v1, v2, v7, v6}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 290
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getDateFromAsn1(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->activeDateTime:Ljava/util/Date;

    .line 292
    goto/16 :goto_1

    .line 251
    :sswitch_1d
    nop

    .line 253
    invoke-static {v1, v2, v7, v6}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 252
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getLongFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rsaPublicExponent:Ljava/lang/Long;

    .line 254
    goto :goto_1

    .line 320
    :sswitch_1e
    nop

    .line 322
    invoke-static {v1, v2, v7, v6}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 321
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->ecCurve:Ljava/lang/Integer;

    .line 323
    goto :goto_1

    .line 246
    :sswitch_1f
    nop

    .line 248
    invoke-static {v1, v2, v7, v3}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 247
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegersFromAsn1Set(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingModes:Ljava/util/Set;

    .line 249
    goto :goto_1

    .line 241
    :sswitch_20
    nop

    .line 243
    invoke-static {v1, v2, v7, v3}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 242
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegersFromAsn1Set(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->digests:Ljava/util/Set;

    .line 244
    goto :goto_1

    .line 235
    :sswitch_21
    nop

    .line 237
    invoke-static {v1, v2, v7, v6}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 236
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->keySize:Ljava/lang/Integer;

    .line 238
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->keySize:Ljava/lang/Integer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found KEY SIZE, value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    goto :goto_1

    .line 230
    :sswitch_22
    nop

    .line 232
    invoke-static {v1, v2, v7, v6}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 231
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegerFromAsn1(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->algorithm:Ljava/lang/Integer;

    .line 233
    goto :goto_1

    .line 225
    :sswitch_23
    nop

    .line 227
    invoke-static {v1, v2, v7, v3}, Lorg/bouncycastle/asn1/ASN1Util;->getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 226
    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getIntegersFromAsn1Set(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->purposes:Ljava/util/Set;

    .line 228
    nop

    .line 215
    .end local v2    # "tag":I
    :goto_1
    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->parseAsn1TaggedObject(Lorg/bouncycastle/asn1/ASN1SequenceParser;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    goto/16 :goto_0

    .line 395
    :cond_0
    return-void

    .line 209
    .end local v0    # "parser":Lorg/bouncycastle/asn1/ASN1SequenceParser;
    .end local v1    # "entry":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    .line 210
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected sequence for authorization list, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_22
        0x3 -> :sswitch_21
        0x5 -> :sswitch_20
        0x6 -> :sswitch_1f
        0xa -> :sswitch_1e
        0xc8 -> :sswitch_1d
        0x190 -> :sswitch_1c
        0x191 -> :sswitch_1b
        0x192 -> :sswitch_1a
        0x1f7 -> :sswitch_19
        0x1f8 -> :sswitch_18
        0x1f9 -> :sswitch_17
        0x1fa -> :sswitch_16
        0x1fb -> :sswitch_15
        0x1fc -> :sswitch_14
        0x258 -> :sswitch_13
        0x259 -> :sswitch_12
        0x2bd -> :sswitch_11
        0x2be -> :sswitch_10
        0x2bf -> :sswitch_f
        0x2c0 -> :sswitch_e
        0x2c1 -> :sswitch_d
        0x2c2 -> :sswitch_c
        0x2c5 -> :sswitch_b
        0x2c6 -> :sswitch_a
        0x2c7 -> :sswitch_9
        0x2c8 -> :sswitch_8
        0x2c9 -> :sswitch_7
        0x2ca -> :sswitch_6
        0x2cb -> :sswitch_5
        0x2cc -> :sswitch_4
        0x2cd -> :sswitch_3
        0x2ce -> :sswitch_2
        0x2cf -> :sswitch_1
        0x2d0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static algorithmToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "algorithm"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .line 398
    packed-switch p0, :pswitch_data_0

    .line 404
    :pswitch_0
    const-string v0, "Unknown"

    return-object v0

    .line 402
    :pswitch_1
    const-string v0, "ECDSA"

    return-object v0

    .line 400
    :pswitch_2
    const-string v0, "RSA"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static digestToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "digest"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 421
    sget-object v0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->digestMap:Lcom/google/common/collect/ImmutableMap;

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Lcom/google/common/base/Functions;->forMap(Ljava/util/Map;Ljava/lang/Object;)Lcom/google/common/base/Function;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static digestsToString(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 417
    .local p0, "digests":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->digestMap:Lcom/google/common/collect/ImmutableMap;

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Lcom/google/common/base/Functions;->forMap(Ljava/util/Map;Ljava/lang/Object;)Lcom/google/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->joinStrings(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date"
        }
    .end annotation

    .line 457
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringFromAsn1Value(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Lorg/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 678
    :try_start_0
    invoke-static {p1}, Lcom/afwsamples/testdpc/policy/utils/Asn1Utils;->getStringFromAsn1OctetStreamAssumingUTF8(Lorg/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    const-string v2, "Error parsing ASN.1 value"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static joinStrings(Ljava/util/Collection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 449
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 451
    const-string v1, ", "

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 452
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    return-object v0
.end method

.method public static originToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "origin"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "origin"
        }
    .end annotation

    .line 436
    packed-switch p0, :pswitch_data_0

    .line 444
    :pswitch_0
    const-string v0, "Unknown"

    return-object v0

    .line 442
    :pswitch_1
    const-string v0, "Unknown (KM0)"

    return-object v0

    .line 440
    :pswitch_2
    const-string v0, "Imported"

    return-object v0

    .line 438
    :pswitch_3
    const-string v0, "Generated"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static paddingModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "paddingMode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paddingMode"
        }
    .end annotation

    .line 413
    sget-object v0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingMap:Lcom/google/common/collect/ImmutableMap;

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Lcom/google/common/base/Functions;->forMap(Ljava/util/Map;Ljava/lang/Object;)Lcom/google/common/base/Function;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static paddingModesToString(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "paddingModes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 409
    .local p0, "paddingModes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingMap:Lcom/google/common/collect/ImmutableMap;

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Lcom/google/common/base/Functions;->forMap(Ljava/util/Map;Ljava/lang/Object;)Lcom/google/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->joinStrings(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseAsn1Encodable(Lorg/bouncycastle/asn1/ASN1SequenceParser;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 3
    .param p0, "parser"    # Lorg/bouncycastle/asn1/ASN1SequenceParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 473
    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    const-string v2, "Failed to parse ASN1 sequence"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static parseAsn1TaggedObject(Lorg/bouncycastle/asn1/ASN1SequenceParser;)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 5
    .param p0, "parser"    # Lorg/bouncycastle/asn1/ASN1SequenceParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 462
    invoke-static {p0}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->parseAsn1Encodable(Lorg/bouncycastle/asn1/ASN1SequenceParser;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 463
    .local v0, "asn1Encodable":Lorg/bouncycastle/asn1/ASN1Encodable;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    .line 467
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected tagged object, found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 464
    :cond_1
    :goto_0
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    return-object v1
.end method

.method public static purposesToString(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "purposes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 425
    .local p0, "purposes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->purposeMap:Lcom/google/common/collect/ImmutableMap;

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Lcom/google/common/base/Functions;->forMap(Ljava/util/Map;Ljava/lang/Object;)Lcom/google/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->joinStrings(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static userAuthTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "userAuthType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userAuthType"
        }
    .end annotation

    .line 429
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 430
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_0

    const-string v1, "Fingerprint"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_0
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    const-string v1, "Password"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_1
    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->joinStrings(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public ecCurveAsString()Ljava/lang/String;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->ecCurve:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v0, "NULL"

    return-object v0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->ecCurve:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 546
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 544
    :pswitch_0
    const-string v0, "secp521r1"

    return-object v0

    .line 542
    :pswitch_1
    const-string v0, "secp384r1"

    return-object v0

    .line 540
    :pswitch_2
    const-string v0, "secp256r1"

    return-object v0

    .line 538
    :pswitch_3
    const-string v0, "secp224r1"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getActiveDateTime()Ljava/util/Date;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->activeDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/Integer;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->algorithm:Ljava/lang/Integer;

    return-object v0
.end method

.method public getApplicationId()[B
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->applicationId:[B

    return-object v0
.end method

.method public getAttestationApplicationId()Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->attestationApplicationId:Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

    return-object v0
.end method

.method public getAuthTimeout()Ljava/lang/Integer;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->authTimeout:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBootPatchLevel()Ljava/lang/Integer;
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->bootPatchLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationDateTime()Ljava/util/Date;
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->creationDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getDigests()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->digests:Ljava/util/Set;

    return-object v0
.end method

.method public getEcCurve()Ljava/lang/Integer;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->ecCurve:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getKeySize()Ljava/lang/Integer;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->keySize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->meid:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/Integer;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->origin:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOriginationExpireDateTime()Ljava/util/Date;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->originationExpireDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getOsPatchLevel()Ljava/lang/Integer;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->osPatchLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/Integer;
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->osVersion:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPaddingModes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingModes:Ljava/util/Set;

    return-object v0
.end method

.method public getPaddingModesAsStrings()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingModes:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 501
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 504
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 505
    .local v0, "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingModes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 506
    .local v2, "paddingMode":I
    packed-switch v2, :pswitch_data_0

    .line 523
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid padding mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 517
    :pswitch_0
    const-string v3, "PKCS1"

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 518
    goto :goto_1

    .line 514
    :pswitch_1
    const-string v3, "PKCS1Padding"

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 515
    goto :goto_1

    .line 520
    :pswitch_2
    const-string v3, "PSS"

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 521
    goto :goto_1

    .line 511
    :pswitch_3
    const-string v3, "OAEPPadding"

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 512
    goto :goto_1

    .line 508
    :pswitch_4
    const-string v3, "NoPadding"

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 509
    nop

    .line 525
    .end local v2    # "paddingMode":I
    :goto_1
    goto :goto_0

    .line 526
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getPurposes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->purposes:Ljava/util/Set;

    return-object v0
.end method

.method public getRootOfTrust()Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rootOfTrust:Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;

    return-object v0
.end method

.method public getRsaPublicExponent()Ljava/lang/Long;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rsaPublicExponent:Ljava/lang/Long;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getUsageExpireDateTime()Ljava/util/Date;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->usageExpireDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getUserAuthType()Ljava/lang/Integer;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->userAuthType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVendorPatchLevel()Ljava/lang/Integer;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->vendorPatchLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public isAllApplications()Z
    .locals 1

    .line 583
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->allApplications:Z

    return v0
.end method

.method public isAllowWhileOnBody()Z
    .locals 1

    .line 579
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->allowWhileOnBody:Z

    return v0
.end method

.method public isConfirmationRequired()Z
    .locals 1

    .line 669
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->confirmationRequired:Z

    return v0
.end method

.method public isIndividualAttestation()Z
    .locals 1

    .line 673
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->individualAttestation:Z

    return v0
.end method

.method public isNoAuthRequired()Z
    .locals 1

    .line 567
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->noAuthRequired:Z

    return v0
.end method

.method public isRollbackResistant()Z
    .locals 1

    .line 599
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rollbackResistant:Z

    return v0
.end method

.method public isUserPresenceRequired()Z
    .locals 1

    .line 665
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->userPresenceRequired:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->algorithm:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 689
    const-string v1, "\nAlgorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->algorithm:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->algorithmToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->keySize:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 693
    const-string v1, "\nKeySize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->keySize:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 696
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->purposes:Ljava/util/Set;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->purposes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 697
    const-string v1, "\nPurposes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->purposes:Ljava/util/Set;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->purposesToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    :cond_2
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->digests:Ljava/util/Set;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->digests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 701
    const-string v1, "\nDigests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->digests:Ljava/util/Set;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->digestsToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    :cond_3
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingModes:Ljava/util/Set;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingModes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 705
    const-string v1, "\nPadding modes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingModes:Ljava/util/Set;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->paddingModesToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    :cond_4
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->ecCurve:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 709
    const-string v1, "\nEC Curve: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->ecCurveAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    :cond_5
    const-string v1, "\nRSA exponent: "

    .line 713
    .local v1, "label":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rsaPublicExponent:Ljava/lang/Long;

    if-eqz v2, :cond_6

    .line 714
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rsaPublicExponent:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 717
    :cond_6
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->activeDateTime:Ljava/util/Date;

    if-eqz v2, :cond_7

    .line 718
    const-string v2, "\nActive: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->activeDateTime:Ljava/util/Date;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    :cond_7
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->originationExpireDateTime:Ljava/util/Date;

    if-eqz v2, :cond_8

    .line 722
    const-string v2, "\nOrigination expire: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->originationExpireDateTime:Ljava/util/Date;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    :cond_8
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->usageExpireDateTime:Ljava/util/Date;

    if-eqz v2, :cond_9

    .line 726
    const-string v2, "\nUsage expire: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->usageExpireDateTime:Ljava/util/Date;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    :cond_9
    iget-boolean v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->noAuthRequired:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->userAuthType:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    .line 730
    const-string v2, "\nAuth types: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->userAuthType:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->userAuthTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->authTimeout:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    .line 732
    const-string v2, "\nAuth timeout: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->authTimeout:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 736
    :cond_a
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->applicationId:[B

    if-eqz v2, :cond_b

    .line 737
    const-string v2, "\nApplication ID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->applicationId:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    :cond_b
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->creationDateTime:Ljava/util/Date;

    if-eqz v2, :cond_c

    .line 741
    const-string v2, "\nCreated: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->creationDateTime:Ljava/util/Date;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    :cond_c
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->origin:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    .line 745
    const-string v2, "\nOrigin: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->origin:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->originToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    :cond_d
    iget-boolean v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rollbackResistant:Z

    if-eqz v2, :cond_e

    .line 749
    const-string v2, "\nRollback resistant: true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    :cond_e
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rootOfTrust:Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;

    if-eqz v2, :cond_f

    .line 753
    const-string v2, "\nRoot of Trust:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->rootOfTrust:Lcom/afwsamples/testdpc/policy/utils/RootOfTrust;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 757
    :cond_f
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->osVersion:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    .line 758
    const-string v2, "\nOS Version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->osVersion:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 761
    :cond_10
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->osPatchLevel:Ljava/lang/Integer;

    if-eqz v2, :cond_11

    .line 762
    const-string v2, "\nOS Patchlevel: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->osPatchLevel:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 765
    :cond_11
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->vendorPatchLevel:Ljava/lang/Integer;

    if-eqz v2, :cond_12

    .line 766
    const-string v2, "\nVendor Patchlevel: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->vendorPatchLevel:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 769
    :cond_12
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->bootPatchLevel:Ljava/lang/Integer;

    if-eqz v2, :cond_13

    .line 770
    const-string v2, "\nBoot Patchlevel: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->bootPatchLevel:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 773
    :cond_13
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->attestationApplicationId:Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

    if-eqz v2, :cond_14

    .line 774
    const-string v2, "\nAttestation Application Id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->attestationApplicationId:Lcom/afwsamples/testdpc/policy/utils/AttestationApplicationId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 777
    :cond_14
    iget-boolean v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->userPresenceRequired:Z

    if-eqz v2, :cond_15

    .line 778
    const-string v2, "\nUser presence required"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    :cond_15
    iget-boolean v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->confirmationRequired:Z

    if-eqz v2, :cond_16

    .line 782
    const-string v2, "\nConfirmation required"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    :cond_16
    iget-boolean v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->individualAttestation:Z

    if-eqz v2, :cond_17

    .line 786
    const-string v2, "\nIndividual attestation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    :cond_17
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->brand:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 790
    const-string v2, "\nBrand: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->brand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    :cond_18
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->device:Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 793
    const-string v2, "\nDevice type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/utils/AuthorizationList;->device:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
