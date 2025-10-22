.class public Lorg/bouncycastle/asn1/cmp/PKIStatus;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PKIStatus.java"


# static fields
.field public static final GRANTED:I = 0x0

.field public static final GRANTED_WITH_MODS:I = 0x1

.field public static final KEY_UPDATE_WARNING:I = 0x6

.field public static final REJECTION:I = 0x2

.field public static final REVOCATION_NOTIFICATION:I = 0x5

.field public static final REVOCATION_WARNING:I = 0x4

.field public static final WAITING:I = 0x3

.field public static final granted:Lorg/bouncycastle/asn1/cmp/PKIStatus;

.field public static final grantedWithMods:Lorg/bouncycastle/asn1/cmp/PKIStatus;

.field public static final keyUpdateWaiting:Lorg/bouncycastle/asn1/cmp/PKIStatus;

.field public static final rejection:Lorg/bouncycastle/asn1/cmp/PKIStatus;

.field public static final revocationNotification:Lorg/bouncycastle/asn1/cmp/PKIStatus;

.field public static final revocationWarning:Lorg/bouncycastle/asn1/cmp/PKIStatus;

.field public static final waiting:Lorg/bouncycastle/asn1/cmp/PKIStatus;


# instance fields
.field private final value:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/PKIStatus;->granted:Lorg/bouncycastle/asn1/cmp/PKIStatus;

    .line 46
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/PKIStatus;->grantedWithMods:Lorg/bouncycastle/asn1/cmp/PKIStatus;

    .line 47
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/PKIStatus;->rejection:Lorg/bouncycastle/asn1/cmp/PKIStatus;

    .line 48
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/PKIStatus;->waiting:Lorg/bouncycastle/asn1/cmp/PKIStatus;

    .line 49
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/PKIStatus;->revocationWarning:Lorg/bouncycastle/asn1/cmp/PKIStatus;

    .line 50
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/PKIStatus;->revocationNotification:Lorg/bouncycastle/asn1/cmp/PKIStatus;

    .line 51
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIStatus;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIStatus;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/PKIStatus;->keyUpdateWaiting:Lorg/bouncycastle/asn1/cmp/PKIStatus;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 57
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmp/PKIStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 0
    .param p1, "value"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 63
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIStatus;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 67
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatus;

    if-eqz v0, :cond_0

    .line 69
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/PKIStatus;

    return-object v0

    .line 72
    :cond_0
    if-eqz p0, :cond_1

    .line 74
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIStatus;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIStatus;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;)V

    return-object v0

    .line 77
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/math/BigInteger;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatus;->value:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method
