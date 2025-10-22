.class public Lorg/bouncycastle/pqc/jcajce/spec/QTESLAParameterSpec;
.super Ljava/lang/Object;
.source "QTESLAParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final PROVABLY_SECURE_I:Ljava/lang/String;

.field public static final PROVABLY_SECURE_III:Ljava/lang/String;


# instance fields
.field private securityCategory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASecurityCategory;->getName(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/QTESLAParameterSpec;->PROVABLY_SECURE_I:Ljava/lang/String;

    .line 18
    const/4 v0, 0x6

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASecurityCategory;->getName(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/QTESLAParameterSpec;->PROVABLY_SECURE_III:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "securityCategory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "securityCategory"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/QTESLAParameterSpec;->securityCategory:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getSecurityCategory()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/QTESLAParameterSpec;->securityCategory:Ljava/lang/String;

    return-object v0
.end method
