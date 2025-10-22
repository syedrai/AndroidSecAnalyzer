.class public Lorg/bouncycastle/openssl/bc/BcPEMDecryptorProvider;
.super Ljava/lang/Object;
.source "BcPEMDecryptorProvider.java"

# interfaces
.implements Lorg/bouncycastle/openssl/PEMDecryptorProvider;


# instance fields
.field private final password:[C


# direct methods
.method static bridge synthetic -$$Nest$fgetpassword(Lorg/bouncycastle/openssl/bc/BcPEMDecryptorProvider;)[C
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/openssl/bc/BcPEMDecryptorProvider;->password:[C

    return-object p0
.end method

.method public constructor <init>([C)V
    .locals 0
    .param p1, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "password"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/bouncycastle/openssl/bc/BcPEMDecryptorProvider;->password:[C

    .line 16
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lorg/bouncycastle/openssl/PEMDecryptor;
    .locals 1
    .param p1, "dekAlgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "dekAlgName"
        }
    .end annotation

    .line 20
    new-instance v0, Lorg/bouncycastle/openssl/bc/BcPEMDecryptorProvider$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/openssl/bc/BcPEMDecryptorProvider$1;-><init>(Lorg/bouncycastle/openssl/bc/BcPEMDecryptorProvider;Ljava/lang/String;)V

    return-object v0
.end method
