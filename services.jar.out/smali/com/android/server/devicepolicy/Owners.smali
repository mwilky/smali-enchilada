.class Lcom/android/server/devicepolicy/Owners;
.super Ljava/lang/Object;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/Owners$Injector;,
        Lcom/android/server/devicepolicy/Owners$OwnerInfo;,
        Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;,
        Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;,
        Lcom/android/server/devicepolicy/Owners$FileReadWriter;
    }
.end annotation


# static fields
.field private static final ATTR_COMPONENT_NAME:Ljava/lang/String; = "component"

.field private static final ATTR_FREEZE_RECORD_END:Ljava/lang/String; = "end"

.field private static final ATTR_FREEZE_RECORD_START:Ljava/lang/String; = "start"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_REMOTE_BUGREPORT_HASH:Ljava/lang/String; = "remoteBugreportHash"

.field private static final ATTR_REMOTE_BUGREPORT_URI:Ljava/lang/String; = "remoteBugreportUri"

.field private static final ATTR_USERID:Ljava/lang/String; = "userId"

.field private static final ATTR_USER_RESTRICTIONS_MIGRATED:Ljava/lang/String; = "userRestrictionsMigrated"

.field private static final DEBUG:Z = false

.field private static final DEVICE_OWNER_XML:Ljava/lang/String; = "device_owner_2.xml"

.field private static final DEVICE_OWNER_XML_LEGACY:Ljava/lang/String; = "device_owner.xml"

.field private static final PROFILE_OWNER_XML:Ljava/lang/String; = "profile_owner.xml"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final TAG_DEVICE_INITIALIZER:Ljava/lang/String; = "device-initializer"

.field private static final TAG_DEVICE_OWNER:Ljava/lang/String; = "device-owner"

.field private static final TAG_DEVICE_OWNER_CONTEXT:Ljava/lang/String; = "device-owner-context"

.field private static final TAG_FREEZE_PERIOD_RECORD:Ljava/lang/String; = "freeze-record"

.field private static final TAG_PENDING_OTA_INFO:Ljava/lang/String; = "pending-ota-info"

.field private static final TAG_PROFILE_OWNER:Ljava/lang/String; = "profile-owner"

.field private static final TAG_ROOT:Ljava/lang/String; = "root"

.field private static final TAG_SYSTEM_UPDATE_POLICY:Ljava/lang/String; = "system-update-policy"


# instance fields
.field private mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

.field private mDeviceOwnerUserId:I

.field private final mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mProfileOwners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/devicepolicy/Owners$OwnerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

.field private mSystemUpdateFreezeStart:Ljava/time/LocalDate;

.field private mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

.field private mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Landroid/os/UserManagerInternal;Landroid/content/pm/PackageManagerInternal;)V
    .locals 1

    new-instance v0, Lcom/android/server/devicepolicy/Owners$Injector;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/Owners$Injector;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/devicepolicy/Owners;-><init>(Landroid/os/UserManager;Landroid/os/UserManagerInternal;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/devicepolicy/Owners$Injector;)V

    return-void
.end method

.method constructor <init>(Landroid/os/UserManager;Landroid/os/UserManagerInternal;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/devicepolicy/Owners$Injector;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManager:Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    iput-object p3, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iput-object p4, p0, Lcom/android/server/devicepolicy/Owners;->mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/devicepolicy/Owners;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/devicepolicy/Owners;Lcom/android/server/devicepolicy/Owners$OwnerInfo;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdatePolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/devicepolicy/Owners;Landroid/app/admin/SystemUpdatePolicy;)Landroid/app/admin/SystemUpdatePolicy;
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdateInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/devicepolicy/Owners;Landroid/app/admin/SystemUpdateInfo;)Landroid/app/admin/SystemUpdateInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/devicepolicy/Owners;)I
    .locals 1

    iget v0, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/devicepolicy/Owners;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/devicepolicy/Owners;)Ljava/time/LocalDate;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/devicepolicy/Owners;Ljava/time/LocalDate;)Ljava/time/LocalDate;
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/devicepolicy/Owners;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private pushToPackageManagerLocked()V
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v3, v3, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v3, v3, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManagerInternal;->setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method private readLegacyOwnerFileLocked(Ljava/io/File;)Z
    .locals 22

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    :try_start_0
    new-instance v0, Landroid/util/AtomicFile;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v4, p1

    :try_start_1
    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v7, v6

    if-eq v6, v3, :cond_9

    const/4 v6, 0x2

    if-eq v7, v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "device-owner"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    const-string/jumbo v8, "name"

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v8, "package"

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v8, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v8

    invoke-direct/range {v10 .. v15}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v8, v1, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iput v2, v1, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    goto/16 :goto_2

    :cond_2
    const-string v8, "device-initializer"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string/jumbo v8, "profile-owner"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string/jumbo v8, "package"

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v8, "name"

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v8, "component"

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "userId"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    if-eqz v8, :cond_5

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_4

    new-instance v13, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v13

    move-object/from16 v18, v11

    invoke-direct/range {v16 .. v21}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    move-object v10, v13

    goto :goto_1

    :cond_4
    const-string v13, "DevicePolicyManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error parsing device-owner file. Bad component name "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    move-object/from16 v16, v10

    if-nez v16, :cond_6

    new-instance v18, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    invoke-direct/range {v10 .. v15}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v18

    :cond_6
    move-object/from16 v10, v16

    iget-object v11, v1, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    const-string/jumbo v8, "system-update-policy"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {v5}, Landroid/app/admin/SystemUpdatePolicy;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    :goto_2
    goto/16 :goto_0

    :cond_8
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected tag in device owner file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v4, p1

    :goto_3
    const-string v2, "DevicePolicyManagerService"

    const-string v5, "Error parsing device-owner file"

    invoke-static {v2, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return v3
.end method


# virtual methods
.method clearDeviceOwner()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/UserManagerInternal;->setDeviceManaged(Z)V

    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearSystemUpdatePolicy()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Device Owner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  User ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "System Update Policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Profile Owner (User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    if-eqz v1, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Pending System Update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_6
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    if-eqz v1, :cond_9

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "System update freeze record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_9
    return-void
.end method

.method getDeviceOwnerComponent()Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerFile()Ljava/io/File;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$Injector;->environmentGetDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "device_owner_2.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getDeviceOwnerName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerPackageName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerRemoteBugreportHash()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerRemoteBugreportUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerUserId()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerUserIdAndComponent()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_0
    iget v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v2, v2, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceOwnerUserRestrictionsNeedsMigration()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-boolean v1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getLegacyConfigFile()Ljava/io/File;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$Injector;->environmentGetDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "device_owner.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getProfileOwnerComponent(I)Landroid/content/ComponentName;
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->admin:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getProfileOwnerFile(I)Ljava/io/File;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mInjector:Lcom/android/server/devicepolicy/Owners$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/Owners$Injector;->environmentGetUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "profile_owner.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getProfileOwnerKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getProfileOwnerName(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getProfileOwnerPackage(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getProfileOwnerUserRestrictionsNeedsMigration(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSystemUpdateFreezePeriodRecord()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/time/LocalDate;",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSystemUpdateFreezePeriodRecordAsString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "; end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSystemUpdateInfo()Landroid/app/admin/SystemUpdateInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasDeviceOwner()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasProfileOwner(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isDeviceOwnerUserId(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method load()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getLegacyConfigFile()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mUserManager:Landroid/os/UserManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/Owners;->readLegacyOwnerFileLocked(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerKeys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/Owners;->writeProfileOwner(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Failed to remove the legacy setting file"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    new-instance v4, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;

    invoke-direct {v4, p0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;)V

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->readFromFileLocked()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    new-instance v6, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v6, p0, v7}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;I)V

    invoke-virtual {v6}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->readFromFileLocked()V

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManagerInternal;->setDeviceManaged(Z)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/Owners;->hasProfileOwner(I)Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/UserManagerInternal;->setUserManaged(IZ)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/Owners;->hasProfileOwner(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "DevicePolicyManagerService"

    const-string v5, "User %d has both DO and PO, which is not supported"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method pushToAppOpsLocked()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/devicepolicy/Owners;->mSystemReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const v4, 0x422000

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v5, v5, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v3

    if-ltz v3, :cond_1

    iget v5, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_3

    iget-object v5, p0, Lcom/android/server/devicepolicy/Owners;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v6, v6, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v5

    if-ltz v5, :cond_2

    iget-object v6, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    const-class v3, Landroid/app/AppOpsManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManagerInternal;

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_4

    move-object v4, v2

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/app/AppOpsManagerInternal;->setDeviceAndProfileOwners(Landroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method removeProfileOwner(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/os/UserManagerInternal;->setUserManaged(IZ)V

    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method saveSystemUpdateInfo(Landroid/app/admin/SystemUpdateInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateInfo:Landroid/app/admin/SystemUpdateInfo;

    new-instance v1, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;

    invoke-direct {v1, p0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;)V

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->writeToFileLocked()V

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 3

    if-gez p3, :cond_0

    const-string v0, "DevicePolicyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user id for device owner user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/devicepolicy/Owners;->setDeviceOwnerWithRestrictionsMigrated(Landroid/content/ComponentName;Ljava/lang/String;IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iput-object p1, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iput-object p2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDeviceOwnerUserRestrictionsMigrated()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->writeDeviceOwner()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDeviceOwnerWithRestrictionsMigrated(Landroid/content/ComponentName;Ljava/lang/String;IZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v7, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iput p3, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwnerUserId:I

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/UserManagerInternal;->setDeviceManaged(Z)V

    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v9, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Landroid/os/UserManagerInternal;->setUserManaged(IZ)V

    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setProfileOwnerUserRestrictionsMigrated(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/Owners;->writeProfileOwner(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setSystemUpdateFreezePeriodRecord(Ljava/time/LocalDate;Ljava/time/LocalDate;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeStart:Ljava/time/LocalDate;

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object p2, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdateFreezeEnd:Ljava/time/LocalDate;

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method setSystemUpdatePolicy(Landroid/app/admin/SystemUpdatePolicy;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemUpdatePolicy:Landroid/app/admin/SystemUpdatePolicy;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/devicepolicy/Owners;->mSystemReady:Z

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method transferDeviceOwnership(Landroid/content/ComponentName;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v7, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-boolean v4, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v5, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    iget-object v6, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    move-object v1, v7

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/devicepolicy/Owners;->mDeviceOwner:Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method transferProfileOwner(Landroid/content/ComponentName;I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    new-instance v8, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->userRestrictionsMigrated:Z

    iget-object v6, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportUri:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->remoteBugreportHash:Ljava/lang/String;

    move-object v2, v8

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;ZLjava/lang/String;Ljava/lang/String;)V

    move-object v2, v8

    iget-object v3, p0, Lcom/android/server/devicepolicy/Owners;->mProfileOwners:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/devicepolicy/Owners;->pushToPackageManagerLocked()V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->pushToAppOpsLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method writeDeviceOwner()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;

    invoke-direct {v1, p0}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;)V

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->writeToFileLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method writeProfileOwner(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;

    invoke-direct {v1, p0, p1}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;-><init>(Lcom/android/server/devicepolicy/Owners;I)V

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->writeToFileLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
