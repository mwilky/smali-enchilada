.class public Landroid/security/net/config/XmlConfigSource;
.super Ljava/lang/Object;
.source "XmlConfigSource.java"

# interfaces
.implements Landroid/security/net/config/ConfigSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/XmlConfigSource$ParserException;
    }
.end annotation


# static fields
.field private static final CONFIG_BASE:I = 0x0

.field private static final CONFIG_DEBUG:I = 0x2

.field private static final CONFIG_DOMAIN:I = 0x1


# instance fields
.field private final mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private mContext:Landroid/content/Context;

.field private final mDebugBuild:Z

.field private mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

.field private mDomainMap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private final mResourceId:I


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/pm/ApplicationInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    iput p2, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p3}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/security/net/config/XmlConfigSource;->mDebugBuild:Z

    return-void
.end method

.method private addDebugAnchorsIfNeeded(Landroid/security/net/config/NetworkSecurityConfig$Builder;Landroid/security/net/config/NetworkSecurityConfig$Builder;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->hasCertificatesEntryRefs()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->hasCertificatesEntryRefs()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getCertificatesEntryRefs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRefs(Ljava/util/Collection;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private ensureInitialized()V
    .locals 6

    iget-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/security/net/config/XmlConfigSource;->mInitialized:Z

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/security/net/config/XmlConfigSource$ParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    :try_start_2
    invoke-direct {p0, v1}, Landroid/security/net/config/XmlConfigSource;->parseNetworkSecurityConfig(Landroid/content/res/XmlResourceParser;)V

    iput-object v2, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/security/net/config/XmlConfigSource;->mInitialized:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-static {v2, v1}, Landroid/security/net/config/XmlConfigSource;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/security/net/config/XmlConfigSource$ParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    nop

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    :try_start_6
    invoke-static {v2, v1}, Landroid/security/net/config/XmlConfigSource;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw v3
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/security/net/config/XmlConfigSource$ParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_1
    move-exception v1

    :try_start_7
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse XML configuration from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method

.method private static final getConfigString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown config type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "debug-overrides"

    return-object v0

    :pswitch_1
    const-string v0, "domain-config"

    return-object v0

    :pswitch_2
    const-string v0, "base-config"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseCertificatesEntry(Landroid/content/res/XmlResourceParser;Z)Landroid/security/net/config/CertificatesEntryRef;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    const-string/jumbo v0, "overridePins"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, p2}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v2, "src"

    const/4 v3, -0x1

    invoke-interface {p1, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "src"

    invoke-interface {p1, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eq v2, v3, :cond_0

    new-instance v3, Landroid/security/net/config/ResourceCertificateSource;

    iget-object v5, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    invoke-direct {v3, v2, v5}, Landroid/security/net/config/ResourceCertificateSource;-><init>(ILandroid/content/Context;)V

    :goto_0
    goto :goto_1

    :cond_0
    const-string/jumbo v3, "system"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/security/net/config/SystemCertificateSource;->getInstance()Landroid/security/net/config/SystemCertificateSource;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "user"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/security/net/config/UserCertificateSource;->getInstance()Landroid/security/net/config/UserCertificateSource;

    move-result-object v3

    goto :goto_0

    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    new-instance v4, Landroid/security/net/config/CertificatesEntryRef;

    invoke-direct {v4, v3, v0}, Landroid/security/net/config/CertificatesEntryRef;-><init>(Landroid/security/net/config/CertificateSource;Z)V

    return-object v4

    :cond_2
    new-instance v3, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v5, "Unknown certificates src. Should be one of system|user|@resourceVal"

    invoke-direct {v3, p1, v5}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3

    :cond_3
    new-instance v3, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v5, "certificates element missing src attribute"

    invoke-direct {v3, p1, v5}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v3
.end method

.method private parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/security/net/config/NetworkSecurityConfig$Builder;",
            "I)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/security/net/config/NetworkSecurityConfig$Builder;",
            "Ljava/util/Set<",
            "Landroid/security/net/config/Domain;",
            ">;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v4}, Landroid/security/net/config/NetworkSecurityConfig$Builder;-><init>()V

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setParent(Landroid/security/net/config/NetworkSecurityConfig$Builder;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x2

    if-ne v2, v11, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v9

    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    new-instance v14, Landroid/util/Pair;

    invoke-direct {v14, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v14, v9

    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v15

    if-ge v14, v15, :cond_3

    invoke-interface {v1, v14}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v15

    const-string v10, "hstsEnforced"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    nop

    invoke-interface {v1, v14, v9}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result v10

    invoke-virtual {v4, v10}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setHstsEnforced(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    goto :goto_2

    :cond_1
    const-string v10, "cleartextTrafficPermitted"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    nop

    const/4 v10, 0x1

    invoke-interface {v1, v14, v10}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result v9

    invoke-virtual {v4, v9}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setCleartextTrafficPermitted(Z)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    :goto_3
    invoke-static {v1, v13}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "domain"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    if-ne v2, v10, :cond_4

    invoke-direct/range {p0 .. p2}, Landroid/security/net/config/XmlConfigSource;->parseDomain(Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/security/net/config/Domain;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    new-instance v10, Landroid/security/net/config/XmlConfigSource$ParserException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "domain element not allowed in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Landroid/security/net/config/XmlConfigSource;->getConfigString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v1, v14}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v10

    :cond_5
    const-string/jumbo v10, "trust-anchors"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-nez v8, :cond_6

    nop

    invoke-direct {v0, v1, v11}, Landroid/security/net/config/XmlConfigSource;->parseTrustAnchors(Landroid/content/res/XmlResourceParser;Z)Ljava/util/Collection;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->addCertificatesEntryRefs(Ljava/util/Collection;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    const/4 v8, 0x1

    :goto_4
    move-object/from16 v10, p2

    goto/16 :goto_5

    :cond_6
    new-instance v10, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v14, "Multiple trust-anchor elements not allowed"

    invoke-direct {v10, v1, v14}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v10

    :cond_7
    const-string/jumbo v10, "pin-set"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    if-ne v2, v10, :cond_9

    if-nez v7, :cond_8

    invoke-direct/range {p0 .. p1}, Landroid/security/net/config/XmlConfigSource;->parsePinSet(Landroid/content/res/XmlResourceParser;)Landroid/security/net/config/PinSet;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setPinSet(Landroid/security/net/config/PinSet;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    const/4 v7, 0x1

    goto :goto_4

    :cond_8
    new-instance v10, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v14, "Multiple pin-set elements not allowed"

    invoke-direct {v10, v1, v14}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v10

    :cond_9
    new-instance v10, Landroid/security/net/config/XmlConfigSource$ParserException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "pin-set element not allowed in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Landroid/security/net/config/XmlConfigSource;->getConfigString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v1, v14}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v10

    :cond_a
    const-string v10, "domain-config"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    if-ne v2, v10, :cond_b

    move-object/from16 v10, p2

    invoke-direct {v0, v1, v10, v4, v2}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_b
    move-object/from16 v10, p2

    new-instance v14, Landroid/security/net/config/XmlConfigSource$ParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Nested domain-config not allowed in "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Landroid/security/net/config/XmlConfigSource;->getConfigString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v1, v0}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v14

    :cond_c
    move-object/from16 v10, p2

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_5
    nop

    move-object/from16 v0, p0

    goto/16 :goto_3

    :cond_d
    move-object/from16 v10, p2

    const/4 v0, 0x1

    if-ne v2, v0, :cond_f

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_6

    :cond_e
    new-instance v0, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v9, "No domain elements in domain-config"

    invoke-direct {v0, v1, v9}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_6
    return-object v3
.end method

.method private parseDebugOverridesResource()Landroid/security/net/config/NetworkSecurityConfig$Builder;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/net/config/XmlConfigSource;->mResourceId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_debug"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "xml"

    invoke-virtual {v0, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    :try_start_0
    const-string/jumbo v7, "network-security-config"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v8, 0x0

    move-object v9, v5

    move v5, v8

    :goto_0
    :try_start_1
    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "debug-overrides"

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    if-nez v5, :cond_2

    iget-boolean v10, p0, Landroid/security/net/config/XmlConfigSource;->mDebugBuild:Z

    if-eqz v10, :cond_1

    const/4 v10, 0x2

    invoke-direct {p0, v6, v4, v4, v10}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-object v9, v10

    goto :goto_1

    :cond_1
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    new-instance v8, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v10, "Only one debug-overrides allowed"

    invoke-direct {v8, v6, v10}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v8

    :cond_3
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_5

    invoke-static {v4, v6}, Landroid/security/net/config/XmlConfigSource;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5
    return-object v9

    :catchall_0
    move-exception v5

    goto :goto_3

    :catch_0
    move-exception v4

    move-object v5, v9

    goto :goto_2

    :catchall_1
    move-exception v7

    move-object v9, v5

    move-object v5, v7

    goto :goto_3

    :catch_1
    move-exception v4

    :goto_2
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    if-eqz v6, :cond_6

    invoke-static {v4, v6}, Landroid/security/net/config/XmlConfigSource;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_6
    throw v5
.end method

.method private parseDomain(Landroid/content/res/XmlResourceParser;Ljava/util/Set;)Landroid/security/net/config/Domain;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/security/net/config/Domain;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    const-string v0, "includeSubdomains"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/security/net/config/Domain;

    invoke-direct {v2, v1, v0}, Landroid/security/net/config/Domain;-><init>(Ljava/lang/String;Z)V

    return-object v2

    :cond_0
    new-instance v2, Landroid/security/net/config/XmlConfigSource$ParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has already been specified"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v3, "domain contains additional elements"

    invoke-direct {v2, p1, v3}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v2, "Domain name missing"

    invoke-direct {v1, p1, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v1
.end method

.method private parseNetworkSecurityConfig(Landroid/content/res/XmlResourceParser;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "network-security-config"

    invoke-static {v1, v8}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    :goto_0
    invoke-static {v1, v8}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "base-config"

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v9, :cond_1

    if-nez v7, :cond_0

    const/4 v7, 0x1

    nop

    invoke-direct {v0, v1, v2, v11, v10}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v9

    check-cast v4, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    goto :goto_0

    :cond_0
    new-instance v9, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v10, "Only one base-config allowed"

    invoke-direct {v9, v1, v10}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v9

    :cond_1
    const-string v9, "domain-config"

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    invoke-direct {v0, v1, v2, v4, v9}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    const-string v9, "debug-overrides"

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez v6, :cond_4

    iget-boolean v9, v0, Landroid/security/net/config/XmlConfigSource;->mDebugBuild:Z

    if-eqz v9, :cond_3

    const/4 v9, 0x2

    invoke-direct {v0, v1, v11, v11, v9}, Landroid/security/net/config/XmlConfigSource;->parseConfigEntry(Landroid/content/res/XmlResourceParser;Ljava/util/Set;Landroid/security/net/config/NetworkSecurityConfig$Builder;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v9

    check-cast v5, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    new-instance v9, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v10, "Only one debug-overrides allowed"

    invoke-direct {v9, v1, v10}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v9

    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_6
    iget-boolean v9, v0, Landroid/security/net/config/XmlConfigSource;->mDebugBuild:Z

    if-eqz v9, :cond_7

    if-nez v5, :cond_7

    invoke-direct/range {p0 .. p0}, Landroid/security/net/config/XmlConfigSource;->parseDebugOverridesResource()Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v5

    :cond_7
    iget-object v9, v0, Landroid/security/net/config/XmlConfigSource;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v9}, Landroid/security/net/config/NetworkSecurityConfig;->getDefaultBuilder(Landroid/content/pm/ApplicationInfo;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v9

    invoke-direct {v0, v5, v9}, Landroid/security/net/config/XmlConfigSource;->addDebugAnchorsIfNeeded(Landroid/security/net/config/NetworkSecurityConfig$Builder;Landroid/security/net/config/NetworkSecurityConfig$Builder;)V

    if-eqz v4, :cond_8

    invoke-virtual {v4, v9}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setParent(Landroid/security/net/config/NetworkSecurityConfig$Builder;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    invoke-direct {v0, v5, v4}, Landroid/security/net/config/XmlConfigSource;->addDebugAnchorsIfNeeded(Landroid/security/net/config/NetworkSecurityConfig$Builder;Landroid/security/net/config/NetworkSecurityConfig$Builder;)V

    goto :goto_2

    :cond_8
    move-object v4, v9

    :goto_2
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v13, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Landroid/security/net/config/NetworkSecurityConfig$Builder;

    iget-object v14, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/util/Set;

    invoke-virtual {v13}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->getParent()Landroid/security/net/config/NetworkSecurityConfig$Builder;

    move-result-object v15

    if-nez v15, :cond_9

    invoke-virtual {v13, v4}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->setParent(Landroid/security/net/config/NetworkSecurityConfig$Builder;)Landroid/security/net/config/NetworkSecurityConfig$Builder;

    :cond_9
    invoke-direct {v0, v5, v13}, Landroid/security/net/config/XmlConfigSource;->addDebugAnchorsIfNeeded(Landroid/security/net/config/NetworkSecurityConfig$Builder;Landroid/security/net/config/NetworkSecurityConfig$Builder;)V

    invoke-virtual {v13}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->build()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v15

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    check-cast v1, Landroid/security/net/config/Domain;

    move-object/from16 v18, v2

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    nop

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto :goto_4

    :cond_a
    move-object/from16 v18, v2

    move-object/from16 v1, p1

    goto :goto_3

    :cond_b
    move-object/from16 v18, v2

    invoke-virtual {v4}, Landroid/security/net/config/NetworkSecurityConfig$Builder;->build()Landroid/security/net/config/NetworkSecurityConfig;

    move-result-object v1

    iput-object v1, v0, Landroid/security/net/config/XmlConfigSource;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    iput-object v10, v0, Landroid/security/net/config/XmlConfigSource;->mDomainMap:Ljava/util/Set;

    return-void
.end method

.method private parsePin(Landroid/content/res/XmlResourceParser;)Landroid/security/net/config/Pin;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    const-string v0, "digest"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/net/config/Pin;->isSupportedDigestAlgorithm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    nop

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    nop

    invoke-static {v0}, Landroid/security/net/config/Pin;->getDigestLength(Ljava/lang/String;)I

    move-result v3

    array-length v4, v1

    if-ne v4, v3, :cond_1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    new-instance v4, Landroid/security/net/config/Pin;

    invoke-direct {v4, v0, v1}, Landroid/security/net/config/Pin;-><init>(Ljava/lang/String;[B)V

    return-object v4

    :cond_0
    new-instance v4, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string/jumbo v5, "pin contains additional elements"

    invoke-direct {v4, p1, v5}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v4, Landroid/security/net/config/XmlConfigSource$ParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "digest length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " does not match expected length for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v3

    new-instance v4, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v5, "Invalid pin digest"

    invoke-direct {v4, p1, v5, v3}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_2
    new-instance v1, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v2, "Missing pin digest"

    invoke-direct {v1, p1, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Landroid/security/net/config/XmlConfigSource$ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported pin digest algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v1
.end method

.method private parsePinSet(Landroid/content/res/XmlResourceParser;)Landroid/security/net/config/PinSet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    const-string v0, "expiration"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-wide v1, v5

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v6, "Invalid expiration date in pin-set"

    invoke-direct {v5, p1, v6}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    new-instance v4, Landroid/security/net/config/XmlConfigSource$ParserException;

    const-string v5, "Invalid expiration date in pin-set"

    invoke-direct {v4, p1, v5, v3}, Landroid/security/net/config/XmlConfigSource$ParserException;-><init>(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    :goto_1
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "pin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0, p1}, Landroid/security/net/config/XmlConfigSource;->parsePin(Landroid/content/res/XmlResourceParser;)Landroid/security/net/config/Pin;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_2
    goto :goto_1

    :cond_3
    new-instance v5, Landroid/security/net/config/PinSet;

    invoke-direct {v5, v4, v1, v2}, Landroid/security/net/config/PinSet;-><init>(Ljava/util/Set;J)V

    return-object v5
.end method

.method private parseTrustAnchors(Landroid/content/res/XmlResourceParser;Z)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Z)",
            "Ljava/util/Collection<",
            "Landroid/security/net/config/CertificatesEntryRef;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/security/net/config/XmlConfigSource$ParserException;
        }
    .end annotation

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "certificates"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/security/net/config/XmlConfigSource;->parseCertificatesEntry(Landroid/content/res/XmlResourceParser;Z)Landroid/security/net/config/CertificatesEntryRef;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;
    .locals 1

    invoke-direct {p0}, Landroid/security/net/config/XmlConfigSource;->ensureInitialized()V

    iget-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mDefaultConfig:Landroid/security/net/config/NetworkSecurityConfig;

    return-object v0
.end method

.method public getPerDomainConfigs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/net/config/XmlConfigSource;->ensureInitialized()V

    iget-object v0, p0, Landroid/security/net/config/XmlConfigSource;->mDomainMap:Ljava/util/Set;

    return-object v0
.end method
