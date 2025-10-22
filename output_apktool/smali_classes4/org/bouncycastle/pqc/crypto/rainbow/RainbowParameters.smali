.class public Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;
.super Ljava/lang/Object;
.source "RainbowParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# static fields
.field private static final len_pkseed:I = 0x20

.field private static final len_salt:I = 0x10

.field private static final len_skseed:I = 0x20

.field public static final rainbowIIIcircumzenithal:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

.field public static final rainbowIIIclassic:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

.field public static final rainbowIIIcompressed:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

.field public static final rainbowVcircumzenithal:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

.field public static final rainbowVclassic:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

.field public static final rainbowVcompressed:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;


# instance fields
.field private final hash_algo:Lorg/bouncycastle/crypto/Digest;

.field private final m:I

.field private final n:I

.field private final name:Ljava/lang/String;

.field private final o1:I

.field private final o2:I

.field private final v1:I

.field private final v2:I

.field private final version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CLASSIC:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    const-string v2, "rainbow-III-classic"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;-><init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowIIIclassic:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    .line 12
    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    const-string v1, "rainbow-III-circumzenithal"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CIRCUMZENITHAL:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    invoke-direct {v0, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;-><init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowIIIcircumzenithal:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    .line 13
    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    const-string v1, "rainbow-III-compressed"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->COMPRESSED:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    invoke-direct {v0, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;-><init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowIIIcompressed:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    .line 15
    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CLASSIC:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    const-string v2, "rainbow-V-classic"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;-><init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowVclassic:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    .line 16
    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    const-string v1, "rainbow-V-circumzenithal"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CIRCUMZENITHAL:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    invoke-direct {v0, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;-><init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowVcircumzenithal:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    .line 17
    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    const-string v1, "rainbow-V-compressed"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->COMPRESSED:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    invoke-direct {v0, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;-><init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowVcompressed:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "strength"    # I
    .param p3, "version"    # Lorg/bouncycastle/pqc/crypto/rainbow/Version;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "strength",
            "version"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->name:Ljava/lang/String;

    .line 36
    packed-switch p2, :pswitch_data_0

    .line 51
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No valid version. Please choose one of the following: 3, 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :pswitch_1
    const/16 v0, 0x60

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->v1:I

    .line 46
    const/16 v0, 0x24

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o1:I

    .line 47
    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o2:I

    .line 48
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->hash_algo:Lorg/bouncycastle/crypto/Digest;

    .line 49
    goto :goto_0

    .line 39
    :pswitch_2
    const/16 v0, 0x44

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->v1:I

    .line 40
    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o1:I

    .line 41
    const/16 v0, 0x30

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o2:I

    .line 42
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->hash_algo:Lorg/bouncycastle/crypto/Digest;

    .line 43
    nop

    .line 55
    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->v1:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o1:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->v2:I

    .line 56
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->v1:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o1:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o2:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->n:I

    .line 57
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o1:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o2:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->m:I

    .line 58
    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    .line 59
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method getHash_algo()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->hash_algo:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method getLen_pkseed()I
    .locals 1

    .line 108
    const/16 v0, 0x20

    return v0
.end method

.method getLen_salt()I
    .locals 1

    .line 118
    const/16 v0, 0x10

    return v0
.end method

.method getLen_skseed()I
    .locals 1

    .line 113
    const/16 v0, 0x20

    return v0
.end method

.method getM()I
    .locals 1

    .line 103
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->m:I

    return v0
.end method

.method getN()I
    .locals 1

    .line 98
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->n:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method getO1()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o1:I

    return v0
.end method

.method getO2()I
    .locals 1

    .line 83
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o2:I

    return v0
.end method

.method getV1()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->v1:I

    return v0
.end method

.method getV2()I
    .locals 1

    .line 93
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->v2:I

    return v0
.end method

.method getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    return-object v0
.end method
