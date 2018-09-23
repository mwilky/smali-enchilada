.class Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;
.super Ljava/lang/Object;
.source "TransferOwnershipMetadataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;,
        Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;
    }
.end annotation


# static fields
.field static final ADMIN_TYPE_DEVICE_OWNER:Ljava/lang/String; = "device-owner"

.field static final ADMIN_TYPE_PROFILE_OWNER:Ljava/lang/String; = "profile-owner"

.field public static final OWNER_TRANSFER_METADATA_XML:Ljava/lang/String; = "owner-transfer-metadata.xml"

.field private static final TAG:Ljava/lang/String;

.field static final TAG_ADMIN_TYPE:Ljava/lang/String; = "admin-type"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TAG_SOURCE_COMPONENT:Ljava/lang/String; = "source-component"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TAG_TARGET_COMPONENT:Ljava/lang/String; = "target-component"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TAG_USER_ID:Ljava/lang/String; = "user-id"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    new-instance v0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;-><init>(Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    return-void
.end method

.method private insertSimpleTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private parseMetadataFile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_8

    const/4 v5, 0x3

    if-ne v6, v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v0, :cond_8

    :cond_1
    if-eq v6, v5, :cond_0

    const/4 v8, 0x4

    if-ne v6, v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x1419903f

    if-eq v10, v11, :cond_6

    const v7, -0x8c5cda3

    if-eq v10, v7, :cond_5

    const v7, 0x10c541cb

    if-eq v10, v7, :cond_4

    const v7, 0x264366f8

    if-eq v10, v7, :cond_3

    goto :goto_1

    :cond_3
    const-string v7, "admin-type"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v5

    goto :goto_2

    :cond_4
    const-string/jumbo v5, "source-component"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v7, 0x2

    goto :goto_2

    :cond_5
    const-string/jumbo v5, "user-id"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v7, 0x0

    goto :goto_2

    :cond_6
    const-string/jumbo v5, "target-component"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    move v7, v9

    :goto_2
    packed-switch v7, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    nop

    :goto_3
    goto/16 :goto_0

    :cond_8
    new-instance v5, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;

    invoke-direct {v5, v2, v3, v1, v4}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v5

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method deleteMetadataFile()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;->getOwnerTransferMetadataDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "owner-transfer-metadata.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method loadMetadataFile()Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;
    .locals 7

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;->getOwnerTransferMetadataDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "owner-transfer-metadata.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    sget-object v1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading TransferOwnershipMetadataManager from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->parseMetadataFile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v4

    :catchall_0
    move-exception v3

    move-object v4, v2

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_0
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v5

    :try_start_5
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v1

    sget-object v3, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught exception while trying to load the owner transfer params from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method metadataFileExists()Z
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;->getOwnerTransferMetadataDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "owner-transfer-metadata.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method saveMetadataFile(Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;)Z
    .locals 7

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;->getOwnerTransferMetadataDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "owner-transfer-metadata.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v2, "user-id"

    iget v6, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v2, v6}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->insertSimpleTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "source-component"

    iget-object v6, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->sourceComponent:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v2, v6}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->insertSimpleTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "target-component"

    iget-object v6, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->targetComponent:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v2, v6}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->insertSimpleTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "admin-type"

    iget-object v6, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->adminType:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v6}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->insertSimpleTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v2

    sget-object v4, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception while trying to save Owner Transfer Params to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const/4 v2, 0x0

    return v2
.end method
