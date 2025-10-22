.class public Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;
.source "KeyFactorySpi.java"


# static fields
.field private static final dilithium2Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final dilithium3Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final dilithium5Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final ecdsaBrainpoolP256r1Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final ecdsaBrainpoolP384r1Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final ecdsaP256Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final ecdsaP384Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final ed25519Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final ed448Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final falcon512Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private static final rsaIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium2Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 49
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium3Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 50
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium5Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 51
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->falcon512Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 52
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/internal/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ed25519Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 53
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/x9/X962Parameters;

    sget-object v3, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaP256Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 54
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/x9/X962Parameters;

    sget-object v3, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaBrainpoolP256r1Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 55
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->rsaIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 56
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/internal/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ed448Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 57
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/x9/X962Parameters;

    sget-object v3, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaP384Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 58
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/x9/X962Parameters;

    sget-object v3, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaBrainpoolP384r1Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;-><init>()V

    return-void
.end method

.method private getKeyFactoriesFromIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/util/List;
    .locals 7
    .param p1, "algorithmIdentifier"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithmIdentifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/KeyFactory;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyFactory;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v1, "algorithmNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi$1;->$SwitchMap$org$bouncycastle$jcajce$provider$asymmetric$compositesignatures$CompositeSignaturesConstants$CompositeName:[I

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants;->ASN1IdentifierCompositeNameMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "Falcon"

    const-string v4, "ECDSA"

    const-string v5, "Ed25519"

    const-string v6, "Dilithium"

    packed-switch v2, :pswitch_data_0

    .line 218
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot create KeyFactories. Unsupported algorithm identifier."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :pswitch_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    goto :goto_0

    .line 209
    :pswitch_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    goto :goto_0

    .line 205
    :pswitch_2
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    goto :goto_0

    .line 196
    :pswitch_3
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v2, "RSA"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    goto :goto_0

    .line 189
    :pswitch_4
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    const-string v2, "Ed448"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    goto :goto_0

    .line 185
    :pswitch_5
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    nop

    .line 221
    :goto_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "BC"

    invoke-static {v2, v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getKeysSpecs(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[Lorg/bouncycastle/asn1/ASN1BitString;)[Ljava/security/spec/X509EncodedKeySpec;
    .locals 7
    .param p1, "algorithmIdentifier"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "subjectPublicKeys"    # [Lorg/bouncycastle/asn1/ASN1BitString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algorithmIdentifier",
            "subjectPublicKeys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    array-length v0, p2

    new-array v0, v0, [Ljava/security/spec/X509EncodedKeySpec;

    .line 240
    .local v0, "specs":[Ljava/security/spec/X509EncodedKeySpec;
    array-length v1, p2

    new-array v1, v1, [Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 242
    .local v1, "keyInfos":[Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi$1;->$SwitchMap$org$bouncycastle$jcajce$provider$asymmetric$compositesignatures$CompositeSignaturesConstants$CompositeName:[I

    sget-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants;->ASN1IdentifierCompositeNameMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeSignaturesConstants$CompositeName;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 303
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot create key specs. Unsupported algorithm identifier."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 299
    :pswitch_0
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->falcon512Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v4

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v4

    .line 300
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaBrainpoolP256r1Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v3

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v3

    .line 301
    goto/16 :goto_0

    .line 295
    :pswitch_1
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->falcon512Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v4

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v4

    .line 296
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaP256Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v3

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v3

    .line 297
    goto/16 :goto_0

    .line 291
    :pswitch_2
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->falcon512Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v4

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v4

    .line 292
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ed25519Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v3

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v3

    .line 293
    goto/16 :goto_0

    .line 287
    :pswitch_3
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium5Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v4

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v4

    .line 288
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaBrainpoolP384r1Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v3

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v3

    .line 289
    goto/16 :goto_0

    .line 283
    :pswitch_4
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium5Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v4

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v4

    .line 284
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaP384Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v3

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v3

    .line 285
    goto/16 :goto_0

    .line 270
    :pswitch_5
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium3Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v4

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v4

    .line 271
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaBrainpoolP256r1Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v3

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v3

    .line 272
    goto/16 :goto_0

    .line 266
    :pswitch_6
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium3Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v4

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v4

    .line 267
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaP256Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v3

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v3

    .line 268
    goto/16 :goto_0

    .line 253
    :pswitch_7
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium2Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v4

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v4

    .line 254
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaBrainpoolP256r1Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v3

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v3

    .line 255
    goto/16 :goto_0

    .line 249
    :pswitch_8
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium2Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v4

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v4

    .line 250
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecdsaP256Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v3

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v3

    .line 251
    goto :goto_0

    .line 275
    :pswitch_9
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium3Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v4

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v4

    .line 276
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->rsaIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v3

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v3

    .line 277
    goto :goto_0

    .line 258
    :pswitch_a
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium2Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v4

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v4

    .line 259
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->rsaIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v3

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v3

    .line 260
    goto :goto_0

    .line 279
    :pswitch_b
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium5Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v4

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v4

    .line 280
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ed448Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v3

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v3

    .line 281
    goto :goto_0

    .line 262
    :pswitch_c
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium3Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v4

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v4

    .line 263
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ed25519Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v3

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v3

    .line 264
    goto :goto_0

    .line 245
    :pswitch_d
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->dilithium2Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v4

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v4

    .line 246
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ed25519Identifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    aget-object v6, p2, v3

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V

    aput-object v2, v1, v3

    .line 247
    nop

    .line 306
    :goto_0
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    aput-object v2, v0, v4

    .line 307
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    aput-object v2, v0, v3

    .line 308
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 65
    :try_start_0
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->generatePrivate(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_1

    .line 71
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->generatePublic(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 77
    :cond_1
    nop

    .line 79
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Key not recognized"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key could not be parsed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generatePrivate(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 7
    .param p1, "keyInfo"    # Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 95
    .local v0, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 99
    .local v1, "keyIdentifier":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_start_0
    invoke-direct {p0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->getKeyFactoriesFromIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/util/List;

    move-result-object v2

    .line 100
    .local v2, "factories":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyFactory;>;"
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/PrivateKey;

    .line 101
    .local v3, "privateKeys":[Ljava/security/PrivateKey;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 105
    new-instance v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 106
    .local v5, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/KeyFactory;

    invoke-virtual {v6, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v6

    aput-object v6, v3, v4

    .line 101
    .end local v5    # "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Lorg/bouncycastle/jcajce/CompositePrivateKey;

    invoke-direct {v4, v1, v3}, Lorg/bouncycastle/jcajce/CompositePrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 110
    .end local v2    # "factories":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyFactory;>;"
    .end local v3    # "privateKeys":[Ljava/security/PrivateKey;
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/bouncycastle/util/Exceptions;->ioException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method public generatePublic(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 9
    .param p1, "keyInfo"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 130
    .local v0, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 134
    .local v1, "keyIdentifier":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_start_0
    invoke-direct {p0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->getKeyFactoriesFromIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/util/List;

    move-result-object v2

    .line 135
    .local v2, "factories":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyFactory;>;"
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v3, v3, [Lorg/bouncycastle/asn1/ASN1BitString;

    .line 136
    .local v3, "componentBitStrings":[Lorg/bouncycastle/asn1/ASN1BitString;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 141
    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    instance-of v5, v5, Lorg/bouncycastle/asn1/DEROctetString;

    if-eqz v5, :cond_0

    .line 143
    new-instance v5, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    aput-object v5, v3, v4

    goto :goto_1

    .line 147
    :cond_0
    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DERBitString;

    aput-object v5, v3, v4

    .line 136
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    .end local v4    # "i":I
    :cond_1
    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->getKeysSpecs(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[Lorg/bouncycastle/asn1/ASN1BitString;)[Ljava/security/spec/X509EncodedKeySpec;

    move-result-object v4

    .line 153
    .local v4, "x509EncodedKeySpecs":[Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/PublicKey;

    .line 154
    .local v5, "publicKeys":[Ljava/security/PublicKey;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 156
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/KeyFactory;

    aget-object v8, v4, v6

    invoke-virtual {v7, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v7

    aput-object v7, v5, v6

    .line 154
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 159
    .end local v6    # "i":I
    :cond_2
    new-instance v6, Lorg/bouncycastle/jcajce/CompositePublicKey;

    invoke-direct {v6, v1, v5}, Lorg/bouncycastle/jcajce/CompositePublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 161
    .end local v2    # "factories":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyFactory;>;"
    .end local v3    # "componentBitStrings":[Lorg/bouncycastle/asn1/ASN1BitString;
    .end local v4    # "x509EncodedKeySpecs":[Ljava/security/spec/X509EncodedKeySpec;
    .end local v5    # "publicKeys":[Ljava/security/PublicKey;
    :catch_0
    move-exception v2

    .line 163
    .local v2, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/bouncycastle/util/Exceptions;->ioException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method
