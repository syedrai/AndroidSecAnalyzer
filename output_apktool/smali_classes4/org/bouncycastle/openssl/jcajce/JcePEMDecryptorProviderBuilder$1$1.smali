.class Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1$1;
.super Ljava/lang/Object;
.source "JcePEMDecryptorProviderBuilder.java"

# interfaces
.implements Lorg/bouncycastle/openssl/PEMDecryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;->get(Ljava/lang/String;)Lorg/bouncycastle/openssl/PEMDecryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;

.field final synthetic val$dekAlgName:Ljava/lang/String;

.field final synthetic val$password:[C


# direct methods
.method constructor <init>(Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;[CLjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$password",
            "val$dekAlgName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    iput-object p2, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1$1;->val$password:[C

    iput-object p3, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1$1;->val$dekAlgName:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1$1;->this$1:Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 7
    .param p1, "keyBytes"    # [B
    .param p2, "iv"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyBytes",
            "iv"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openssl/PEMException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1$1;->val$password:[C

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1$1;->this$1:Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;

    iget-object v0, v0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1;->this$0:Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;

    invoke-static {v0}, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;->-$$Nest$fgethelper(Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder;)Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    move-result-object v2

    iget-object v4, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1$1;->val$password:[C

    iget-object v5, p0, Lorg/bouncycastle/openssl/jcajce/JcePEMDecryptorProviderBuilder$1$1;->val$dekAlgName:Ljava/lang/String;

    const/4 v1, 0x0

    move-object v3, p1

    move-object v6, p2

    .end local p1    # "keyBytes":[B
    .end local p2    # "iv":[B
    .local v3, "keyBytes":[B
    .local v6, "iv":[B
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/openssl/jcajce/PEMUtilities;->crypt(ZLorg/bouncycastle/jcajce/util/JcaJceHelper;[B[CLjava/lang/String;[B)[B

    move-result-object p1

    return-object p1

    .line 45
    .end local v3    # "keyBytes":[B
    .end local v6    # "iv":[B
    .restart local p1    # "keyBytes":[B
    .restart local p2    # "iv":[B
    :cond_0
    move-object v3, p1

    move-object v6, p2

    .end local p1    # "keyBytes":[B
    .end local p2    # "iv":[B
    .restart local v3    # "keyBytes":[B
    .restart local v6    # "iv":[B
    new-instance p1, Lorg/bouncycastle/openssl/PasswordException;

    const-string p2, "Password is null, but a password is required"

    invoke-direct {p1, p2}, Lorg/bouncycastle/openssl/PasswordException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
