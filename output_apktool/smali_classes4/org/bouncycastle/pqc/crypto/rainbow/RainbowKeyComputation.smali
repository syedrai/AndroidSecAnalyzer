.class Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;
.super Ljava/lang/Object;
.source "RainbowKeyComputation.java"


# instance fields
.field cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

.field private l1_F1:[[[S

.field private l1_F2:[[[S

.field private l1_Q1:[[[S

.field private l1_Q2:[[[S

.field private l1_Q3:[[[S

.field private l1_Q5:[[[S

.field private l1_Q6:[[[S

.field private l1_Q9:[[[S

.field private l2_F1:[[[S

.field private l2_F2:[[[S

.field private l2_F3:[[[S

.field private l2_F5:[[[S

.field private l2_F6:[[[S

.field private l2_Q1:[[[S

.field private l2_Q2:[[[S

.field private l2_Q3:[[[S

.field private l2_Q5:[[[S

.field private l2_Q6:[[[S

.field private l2_Q9:[[[S

.field private o1:I

.field private o2:I

.field private pk_seed:[B

.field private rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

.field private random:Ljava/security/SecureRandom;

.field private s1:[[S

.field private sk_seed:[B

.field private t1:[[S

.field private t2:[[S

.field private t3:[[S

.field private t4:[[S

.field private v1:I

.field private version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "random"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    .line 50
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    .line 51
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->random:Ljava/security/SecureRandom;

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getV1()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    .line 56
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[B)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;
    .param p2, "pk_seed"    # [B
    .param p3, "sk_seed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "params",
            "pk_seed",
            "sk_seed"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    .line 61
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->random:Ljava/security/SecureRandom;

    .line 63
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    .line 65
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->pk_seed:[B

    .line 66
    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getV1()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    .line 68
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    .line 69
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    .line 70
    return-void
.end method

.method private calculate_F_from_Q()V
    .locals 8

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q1:[[[S

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    .line 105
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    new-array v0, v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    .line 106
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q1:[[[S

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrixTranspose([[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    .line 109
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    .line 110
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "k":I
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    new-array v0, v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    .line 115
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    new-array v0, v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    .line 116
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    new-array v0, v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    .line 117
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    new-array v0, v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    .line 120
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q1:[[[S

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F1:[[[S

    .line 122
    const/4 v0, 0x0

    .restart local v0    # "k":I
    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    if-ge v0, v1, :cond_1

    .line 125
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q1:[[[S

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrixTranspose([[S)[[S

    move-result-object v1

    .line 126
    .local v1, "Q1Q1_t":[[S
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v3, v1, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    .line 127
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    aget-object v4, v4, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    .line 130
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t4:[[S

    invoke-virtual {v3, v1, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    .line 131
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v2

    .line 132
    .local v2, "temp":[[S
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    aget-object v5, v5, v0

    invoke-virtual {v4, v5, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v4

    aput-object v4, v3, v0

    .line 133
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    aget-object v5, v5, v0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    aget-object v6, v6, v0

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v4

    aput-object v4, v3, v0

    .line 136
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q1:[[[S

    aget-object v4, v4, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v2

    .line 137
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v3, v2, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v2

    .line 138
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v3

    .line 139
    .local v3, "T1_trans":[[S
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v5, v3, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v5

    aput-object v5, v4, v0

    .line 140
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    aget-object v6, v6, v0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    aget-object v7, v7, v0

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v5

    aput-object v5, v4, v0

    .line 141
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->to_UT([[S)[[S

    move-result-object v5

    aput-object v5, v4, v0

    .line 145
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    aget-object v6, v6, v0

    invoke-virtual {v5, v3, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v5

    aput-object v5, v4, v0

    .line 146
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t4:[[S

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v2

    .line 147
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    aget-object v6, v6, v0

    invoke-virtual {v5, v6, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v5

    aput-object v5, v4, v0

    .line 148
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrixTranspose([[S)[[S

    move-result-object v2

    .line 149
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    invoke-virtual {v4, v2, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v2

    .line 150
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    aget-object v6, v6, v0

    invoke-virtual {v5, v6, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v5

    aput-object v5, v4, v0

    .line 151
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    aget-object v6, v6, v0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    aget-object v7, v7, v0

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v5

    aput-object v5, v4, v0

    .line 122
    .end local v1    # "Q1Q1_t":[[S
    .end local v2    # "temp":[[S
    .end local v3    # "T1_trans":[[S
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 153
    .end local v0    # "k":I
    :cond_1
    return-void
.end method

.method private calculate_Q_from_F()V
    .locals 9

    .line 157
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v0

    .line 158
    .local v0, "T1_trans":[[S
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v1

    .line 162
    .local v1, "T2_trans":[[S
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q1:[[[S

    .line 165
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    new-array v2, v2, [[[S

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    .line 166
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    if-ge v2, v3, :cond_0

    .line 168
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrixTranspose([[S)[[S

    move-result-object v4

    aput-object v4, v3, v2

    .line 169
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    aget-object v5, v5, v2

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v4

    aput-object v4, v3, v2

    .line 170
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    aget-object v5, v5, v2

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    aget-object v6, v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v4

    aput-object v4, v3, v2

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v2    # "k":I
    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->calculate_l1_Q3569([[S[[S)V

    .line 176
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    new-array v2, v2, [[[S

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    .line 177
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    new-array v2, v2, [[[S

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    .line 178
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    new-array v2, v2, [[[S

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    .line 179
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    new-array v2, v2, [[[S

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    .line 185
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F1:[[[S

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q1:[[[S

    .line 187
    const/4 v2, 0x0

    .restart local v2    # "k":I
    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    if-ge v2, v3, :cond_1

    .line 190
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F1:[[[S

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrixTranspose([[S)[[S

    move-result-object v3

    .line 191
    .local v3, "F1F1_t":[[S
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v5, v3, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v5

    aput-object v5, v4, v2

    .line 192
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    aget-object v6, v6, v2

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    aget-object v7, v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v5

    aput-object v5, v4, v2

    .line 195
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    invoke-virtual {v5, v3, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v5

    aput-object v5, v4, v2

    .line 196
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    aget-object v5, v5, v2

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v4

    .line 197
    .local v4, "temp":[[S
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    aget-object v7, v7, v2

    invoke-virtual {v6, v7, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v6

    aput-object v6, v5, v2

    .line 198
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    aget-object v7, v7, v2

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    aget-object v8, v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v6

    aput-object v6, v5, v2

    .line 201
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F1:[[[S

    aget-object v6, v6, v2

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v4

    .line 202
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    aget-object v6, v6, v2

    invoke-virtual {v5, v4, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v4

    .line 203
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v6, v0, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v6

    aput-object v6, v5, v2

    .line 204
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    aget-object v7, v7, v2

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    aget-object v8, v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v6

    aput-object v6, v5, v2

    .line 205
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->to_UT([[S)[[S

    move-result-object v6

    aput-object v6, v5, v2

    .line 209
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    aget-object v7, v7, v2

    invoke-virtual {v6, v0, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v6

    aput-object v6, v5, v2

    .line 210
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v4

    .line 211
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    aget-object v7, v7, v2

    invoke-virtual {v6, v7, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v6

    aput-object v6, v5, v2

    .line 212
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrixTranspose([[S)[[S

    move-result-object v4

    .line 213
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    invoke-virtual {v5, v4, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v4

    .line 214
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    aget-object v7, v7, v2

    invoke-virtual {v6, v7, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v6

    aput-object v6, v5, v2

    .line 215
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    aget-object v7, v7, v2

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    aget-object v8, v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v6

    aput-object v6, v5, v2

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 218
    .end local v2    # "k":I
    .end local v3    # "F1F1_t":[[S
    .end local v4    # "temp":[[S
    :cond_1
    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->calculate_l2_Q9([[S)V

    .line 219
    return-void
.end method

.method private calculate_Q_from_F_cyclic()V
    .locals 3

    .line 223
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v0

    .line 224
    .local v0, "T1_trans":[[S
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v1

    .line 226
    .local v1, "T2_trans":[[S
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->calculate_l1_Q3569([[S[[S)V

    .line 228
    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->calculate_l2_Q9([[S)V

    .line 229
    return-void
.end method

.method private calculate_l1_Q3569([[S[[S)V
    .locals 6
    .param p1, "T1_trans"    # [[S
    .param p2, "T2_trans"    # [[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "T1_trans",
            "T2_trans"
        }
    .end annotation

    .line 234
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    new-array v0, v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    .line 235
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    new-array v0, v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    .line 236
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    new-array v0, v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    .line 237
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    new-array v0, v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    .line 242
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    if-ge v0, v1, :cond_0

    .line 245
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v1

    .line 246
    .local v1, "F2T3":[[S
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrixTranspose([[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    .line 247
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    aget-object v4, v4, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    .line 248
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    .line 251
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    aget-object v4, v4, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    .line 252
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    aget-object v4, v4, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    .line 253
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v3, p1, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    .line 254
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->to_UT([[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    .line 258
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v2

    .line 259
    .local v2, "temp":[[S
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    aget-object v5, v5, v0

    invoke-virtual {v4, p1, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v4

    aput-object v4, v3, v0

    .line 260
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    aget-object v5, v5, v0

    invoke-virtual {v4, v5, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v4

    aput-object v4, v3, v0

    .line 263
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    aget-object v4, v4, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v2

    .line 264
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v4, v2, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v4

    aput-object v4, v3, v0

    .line 265
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    aget-object v5, v5, v0

    invoke-virtual {v4, p2, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v4

    aput-object v4, v3, v0

    .line 266
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->to_UT([[S)[[S

    move-result-object v4

    aput-object v4, v3, v0

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 268
    .end local v0    # "k":I
    .end local v1    # "F2T3":[[S
    .end local v2    # "temp":[[S
    :cond_0
    return-void
.end method

.method private calculate_l2_Q9([[S)V
    .locals 6
    .param p1, "T2_trans"    # [[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "T2_trans"
        }
    .end annotation

    .line 273
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    new-array v0, v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    .line 277
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    if-ge v0, v1, :cond_0

    .line 280
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F1:[[[S

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    .line 281
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v1

    .line 282
    .local v1, "temp":[[S
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    .line 283
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    aget-object v4, v4, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    .line 284
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v3, p1, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    .line 285
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v1

    .line 286
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v1

    .line 287
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v1

    .line 288
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    .line 289
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->to_UT([[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 291
    .end local v0    # "k":I
    .end local v1    # "temp":[[S
    :cond_0
    return-void
.end method

.method private calculate_t4()V
    .locals 3

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[[S)[[S

    move-result-object v0

    .line 95
    .local v0, "temp":[[S
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t4:[[S

    .line 96
    return-void
.end method

.method private genKeyMaterial()V
    .locals 6

    .line 295
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_skseed()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    .line 296
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->random:Ljava/security/SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 297
    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getHash_algo()Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;-><init>([BLorg/bouncycastle/crypto/Digest;)V

    .line 299
    .local v0, "sk_random":Ljava/security/SecureRandom;
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->generate_S_and_T(Ljava/security/SecureRandom;)V

    .line 302
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    .line 303
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    .line 304
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F1:[[[S

    .line 305
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    invoke-static {v0, v1, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    .line 306
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    invoke-static {v0, v1, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    .line 307
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    .line 308
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    invoke-static {v0, v1, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    .line 311
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->calculate_Q_from_F()V

    .line 313
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->calculate_t4()V

    .line 315
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q1:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q1:[[[S

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q1:[[[S

    .line 316
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    .line 317
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    .line 318
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    .line 319
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    .line 320
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    .line 321
    return-void
.end method

.method private genKeyMaterial_cyclic()V
    .locals 4

    .line 342
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_skseed()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    .line 343
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->random:Ljava/security/SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 345
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_pkseed()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->pk_seed:[B

    .line 346
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->random:Ljava/security/SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->pk_seed:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 348
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->genPrivateKeyMaterial_cyclic()V

    .line 351
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->calculate_Q_from_F_cyclic()V

    .line 352
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    .line 353
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    .line 354
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    .line 355
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    .line 356
    return-void
.end method

.method private genPrivateKeyMaterial_cyclic()V
    .locals 6

    .line 325
    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getHash_algo()Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;-><init>([BLorg/bouncycastle/crypto/Digest;)V

    .line 326
    .local v0, "sk_random":Ljava/security/SecureRandom;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->pk_seed:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getHash_algo()Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;-><init>([BLorg/bouncycastle/crypto/Digest;)V

    .line 328
    .local v1, "pk_random":Ljava/security/SecureRandom;
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->generate_S_and_T(Ljava/security/SecureRandom;)V

    .line 330
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->calculate_t4()V

    .line 333
    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->generate_B1_and_B2(Ljava/security/SecureRandom;)V

    .line 334
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q1:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q1:[[[S

    invoke-virtual {v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q1:[[[S

    .line 335
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    invoke-virtual {v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->obfuscate_l1_polys([[S[[[S[[[S)[[[S

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    .line 337
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->calculate_F_from_Q()V

    .line 338
    return-void
.end method

.method private generate_B1_and_B2(Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "pk_random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pk_random"
        }
    .end annotation

    .line 82
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q1:[[[S

    .line 83
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    const/4 v4, 0x0

    invoke-static {p1, v0, v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    .line 84
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    invoke-static {p1, v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q1:[[[S

    .line 85
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    invoke-static {p1, v0, v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    .line 86
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    invoke-static {p1, v0, v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    .line 87
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    invoke-static {p1, v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    .line 88
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    invoke-static {p1, v0, v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    .line 89
    return-void
.end method

.method private generate_S_and_T(Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "sk_random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sk_random"
        }
    .end annotation

    .line 74
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random_2d(Ljava/security/SecureRandom;II)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    .line 75
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random_2d(Ljava/security/SecureRandom;II)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    .line 76
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->v1:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random_2d(Ljava/security/SecureRandom;II)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t2:[[S

    .line 77
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o1:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->o2:I

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random_2d(Ljava/security/SecureRandom;II)[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    .line 78
    return-void
.end method


# virtual methods
.method public genKeyPairCircumzenithal()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 17

    .line 374
    move-object/from16 v0, p0

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->genKeyMaterial_cyclic()V

    .line 376
    new-instance v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->pk_seed:[B

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[[[S[[[S[[[S[[[S[[[S)V

    .line 378
    .local v1, "pubKey":Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t4:[[S

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F1:[[[S

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    .line 380
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getEncoded()[B

    move-result-object v16

    invoke-direct/range {v2 .. v16}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[[S[[S[[S[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[B)V

    .line 382
    .local v2, "privKey":Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;
    new-instance v3, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v3
.end method

.method public genKeyPairClassical()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 17

    .line 360
    move-object/from16 v0, p0

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->genKeyMaterial()V

    .line 362
    new-instance v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q1:[[[S

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q2:[[[S

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q1:[[[S

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q2:[[[S

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q3:[[[S

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q5:[[[S

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q6:[[[S

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    invoke-direct/range {v1 .. v14}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S)V

    .line 365
    .local v1, "pubKey":Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t4:[[S

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F1:[[[S

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    .line 367
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getEncoded()[B

    move-result-object v16

    invoke-direct/range {v2 .. v16}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[[S[[S[[S[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[B)V

    .line 369
    .local v2, "privKey":Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;
    new-instance v3, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v3
.end method

.method public genKeyPairCompressed()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 8

    .line 387
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->genKeyMaterial_cyclic()V

    .line 389
    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->pk_seed:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q3:[[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q5:[[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q6:[[[S

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_Q9:[[[S

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_Q9:[[[S

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[[[S[[[S[[[S[[[S[[[S)V

    .line 391
    .local v0, "pubKey":Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->pk_seed:[B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    .line 392
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getEncoded()[B

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[B[B)V

    .line 394
    .local v1, "privKey":Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;
    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2
.end method

.method generatePrivateKey()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;
    .locals 17

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    .line 400
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->pk_seed:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->pk_seed:[B

    .line 402
    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->genPrivateKeyMaterial_cyclic()V

    .line 404
    new-instance v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->rainbowParams:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->sk_seed:[B

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->s1:[[S

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t1:[[S

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t3:[[S

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->t4:[[S

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F1:[[[S

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l1_F2:[[[S

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F1:[[[S

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F2:[[[S

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F3:[[[S

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F5:[[[S

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyComputation;->l2_F6:[[[S

    const/16 v16, 0x0

    invoke-direct/range {v2 .. v16}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[[S[[S[[S[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[B)V

    return-object v2
.end method
