.class public Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;
.super Ljava/lang/Object;
.source "EtsiTs102941TrustLists.java"


# static fields
.field public static final AaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CtlDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CtlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final CtlFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final DcDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final DcEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final DeltaCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final EaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final FullCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final RootCaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SequenceOfCrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final SequenceOfCtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final TlmEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedCrl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedRcaCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final ToBeSignedTlmCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field public static final Url:Lorg/bouncycastle/oer/OERDefinition$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 13
    sget-object v0, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "CrlEntry"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 19
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 20
    invoke-static {v1}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    const-string v2, "SequenceOfCrlEntry"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->SequenceOfCrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 35
    sget-object v1, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->Version:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 36
    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    sget-object v4, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Time32:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 37
    const-string/jumbo v5, "thisUpdate"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Time32:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 38
    const-string v6, "nextUpdate"

    invoke-virtual {v5, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    sget-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->SequenceOfCrlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 39
    const-string v8, "entries"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    .line 40
    invoke-static {v8}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v8

    const/4 v9, 0x5

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v1, v10, v3

    aput-object v4, v10, v0

    const/4 v1, 0x2

    aput-object v5, v10, v1

    const/4 v4, 0x3

    aput-object v7, v10, v4

    const/4 v5, 0x4

    aput-object v8, v10, v5

    .line 35
    invoke-static {v10}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    .line 41
    const-string v8, "ToBeSignedCrl"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->ToBeSignedCrl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 47
    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->ia5String()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v8, "Url"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->Url:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 52
    sget-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->Url:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v8, "DcDelete"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->DcDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 61
    sget-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->Url:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 62
    const-string/jumbo v8, "url"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sget-object v8, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->SequenceOfHashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 63
    const-string v10, "cert"

    invoke-virtual {v8, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v7, v11, v3

    aput-object v8, v11, v0

    .line 61
    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    .line 64
    const-string v8, "DcEntry"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->DcEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 72
    sget-object v7, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 73
    const-string v8, "aaCertificate"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sget-object v8, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->Url:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 74
    const-string v11, "accessPoint"

    invoke-virtual {v8, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    new-array v12, v1, [Ljava/lang/Object;

    aput-object v7, v12, v3

    aput-object v8, v12, v0

    .line 72
    invoke-static {v12}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    .line 75
    const-string v8, "AaEntry"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->AaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 85
    sget-object v7, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 86
    const-string v8, "eaCertificate"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sget-object v8, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->Url:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 87
    const-string v12, "aaAccessPoint"

    invoke-virtual {v8, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    sget-object v12, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->Url:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 88
    const-string v13, "itsAccessPoint"

    invoke-virtual {v12, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    new-array v13, v0, [Ljava/lang/Object;

    aput-object v12, v13, v3

    invoke-static {v13}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v7, v13, v3

    aput-object v8, v13, v0

    aput-object v12, v13, v1

    .line 85
    invoke-static {v13}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    .line 89
    const-string v8, "EaEntry"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->EaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 98
    sget-object v7, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 99
    const-string v8, "selfsignedRootCa"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sget-object v8, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 100
    const-string/jumbo v12, "successorTo"

    invoke-virtual {v8, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    new-array v13, v0, [Ljava/lang/Object;

    aput-object v8, v13, v3

    invoke-static {v13}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-array v13, v1, [Ljava/lang/Object;

    aput-object v7, v13, v3

    aput-object v8, v13, v0

    .line 98
    invoke-static {v13}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    .line 101
    const-string v8, "RootCaEntry"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->RootCaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 111
    sget-object v7, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 112
    const-string v8, "selfSignedTLMCertificate"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sget-object v8, Lorg/bouncycastle/oer/its/template/etsi103097/EtsiTs103097Module;->EtsiTs103097Certificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 113
    invoke-virtual {v8, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    new-array v12, v0, [Ljava/lang/Object;

    aput-object v8, v12, v3

    invoke-static {v12}, Lorg/bouncycastle/oer/OERDefinition;->optional([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    sget-object v12, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->Url:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 114
    invoke-virtual {v12, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v7, v12, v3

    aput-object v8, v12, v0

    aput-object v11, v12, v1

    .line 111
    invoke-static {v12}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    .line 115
    const-string v8, "TlmEntry"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->TlmEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 125
    sget-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->HashedId8:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 126
    invoke-virtual {v7, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sget-object v8, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->DcDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 127
    const-string v10, "dc"

    invoke-virtual {v8, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    new-array v11, v3, [Ljava/lang/Object;

    .line 128
    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v7, v12, v3

    aput-object v8, v12, v0

    aput-object v11, v12, v1

    .line 125
    invoke-static {v12}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    .line 129
    const-string v8, "CtlDelete"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 143
    sget-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->RootCaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 144
    const-string v8, "rca"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sget-object v8, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->EaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 145
    const-string v11, "ea"

    invoke-virtual {v8, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    sget-object v11, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->AaEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 146
    const-string v12, "aa"

    invoke-virtual {v11, v12}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v11

    sget-object v12, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->DcEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 147
    invoke-virtual {v12, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    sget-object v12, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->TlmEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 148
    const-string/jumbo v13, "tlm"

    invoke-virtual {v12, v13}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v12

    new-array v13, v3, [Ljava/lang/Object;

    .line 149
    invoke-static {v13}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v13

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v7, v15, v3

    aput-object v8, v15, v0

    aput-object v11, v15, v1

    aput-object v10, v15, v4

    aput-object v12, v15, v5

    aput-object v13, v15, v9

    .line 143
    invoke-static {v15}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    .line 150
    const-string v8, "CtlEntry"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 159
    sget-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlEntry:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 160
    const-string v8, "add"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sget-object v8, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlDelete:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 161
    const-string v10, "delete"

    invoke-virtual {v8, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    new-array v10, v3, [Ljava/lang/Object;

    .line 162
    invoke-static {v10}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Object;

    aput-object v7, v11, v3

    aput-object v8, v11, v0

    aput-object v10, v11, v1

    .line 159
    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->choice([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    .line 163
    const-string v8, "CtlCommand"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 168
    new-array v7, v0, [Ljava/lang/Object;

    sget-object v8, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

    aput-object v8, v7, v3

    invoke-static {v7}, Lorg/bouncycastle/oer/OERDefinition;->seqof([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v8, "SequenceOfCtlCommand"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    sput-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->SequenceOfCtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 182
    sget-object v7, Lorg/bouncycastle/oer/its/template/etsi102941/basetypes/EtsiTs102941BaseTypes;->Version:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 183
    invoke-virtual {v7, v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v2

    sget-object v7, Lorg/bouncycastle/oer/its/template/ieee1609dot2/basetypes/Ieee1609Dot2BaseTypes;->Time32:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 184
    invoke-virtual {v7, v6}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v6

    .line 185
    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition;->bool()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    const-string v8, "isFullCtl"

    invoke-virtual {v7, v8}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v7

    .line 186
    const-wide/16 v10, 0x0

    const-wide/16 v12, 0xff

    invoke-static {v10, v11, v12, v13}, Lorg/bouncycastle/oer/OERDefinition;->integer(JJ)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    const-string v10, "ctlSequence"

    invoke-virtual {v8, v10}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v8

    sget-object v10, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->SequenceOfCtlCommand:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 187
    const-string v11, "ctlCommands"

    invoke-virtual {v10, v11}, Lorg/bouncycastle/oer/OERDefinition$Builder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    .line 188
    invoke-static {v11}, Lorg/bouncycastle/oer/OERDefinition;->extension([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v2, v12, v3

    aput-object v6, v12, v0

    aput-object v7, v12, v1

    aput-object v8, v12, v4

    aput-object v10, v12, v5

    aput-object v11, v12, v9

    .line 182
    invoke-static {v12}, Lorg/bouncycastle/oer/OERDefinition;->seq([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    .line 189
    const-string v1, "CtlFormat"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 196
    sget-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "DeltaCtl"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->DeltaCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 209
    sget-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "FullCtl"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->FullCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 225
    sget-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

    const-string v1, "ToBeSignedRcaCtl"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->ToBeSignedTlmCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    .line 240
    sget-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->CtlFormat:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/its/template/etsi102941/EtsiTs102941TrustLists;->ToBeSignedRcaCtl:Lorg/bouncycastle/oer/OERDefinition$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
