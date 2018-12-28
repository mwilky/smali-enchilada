.class public Lcom/android/server/preload/ProtectedAppUtils;
.super Ljava/lang/Object;
.source "ProtectedAppUtils.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.color.provider.SafeProvider"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final COLUMN_MAIN_KEY:Ljava/lang/String; = "key"

.field private static final COLUMN_MAIN_VALUE:Ljava/lang/String; = "value"

.field private static final COLUMN_PKG_NAME:Ljava/lang/String; = "pkg_name"

.field private static final PROTECT_TYPE:Ljava/lang/String; = "protect_type"

.field private static final TABLE_PP_PRIVACY_PROTECT:Ljava/lang/String; = "pp_privacy_protect"

.field private static final TABLE_SETTINGS:Ljava/lang/String; = "settings"

.field private static final TAG:Ljava/lang/String; = "ProtectedAppUtils"

.field private static final URI_MAIN:Landroid/net/Uri;

.field private static final URI_PRIVARY_PROTECT:Landroid/net/Uri;

.field private static volatile sInstance:Lcom/android/server/preload/ProtectedAppUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHideIconAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPrivacyOn:Z

.field private mPrivacyDetailsObserver:Landroid/database/ContentObserver;

.field private mPrivacySwitchObserver:Landroid/database/ContentObserver;

.field private mProtectedPkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.color.provider.SafeProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/preload/ProtectedAppUtils;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/android/server/preload/ProtectedAppUtils;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/preload/ProtectedAppUtils;->URI_MAIN:Landroid/net/Uri;

    sget-object v0, Lcom/android/server/preload/ProtectedAppUtils;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "pp_privacy_protect"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/preload/ProtectedAppUtils;->URI_PRIVARY_PROTECT:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/preload/ProtectedAppUtils;->sInstance:Lcom/android/server/preload/ProtectedAppUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/preload/ProtectedAppUtils;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/preload/ProtectedAppUtils;->mProtectedPkgList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/preload/ProtectedAppUtils;->mHideIconAppList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/preload/ProtectedAppUtils;->mIsPrivacyOn:Z

    iput-object v0, p0, Lcom/android/server/preload/ProtectedAppUtils;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/preload/ProtectedAppUtils;->mPrivacySwitchObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/android/server/preload/ProtectedAppUtils;->mPrivacyDetailsObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Lcom/android/server/preload/ProtectedAppUtils;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/preload/ProtectedAppUtils;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/preload/ProtectedAppUtils;->isPrivacySwitchOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/preload/ProtectedAppUtils;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/preload/ProtectedAppUtils;->mIsPrivacyOn:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/preload/ProtectedAppUtils;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/preload/ProtectedAppUtils;->mIsPrivacyOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/preload/ProtectedAppUtils;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/preload/ProtectedAppUtils;->updatePrivacyData(Z)V

    return-void
.end method

.method public static getInstance()Lcom/android/server/preload/ProtectedAppUtils;
    .locals 2

    sget-object v0, Lcom/android/server/preload/ProtectedAppUtils;->sInstance:Lcom/android/server/preload/ProtectedAppUtils;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/preload/ProtectedAppUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/preload/ProtectedAppUtils;->sInstance:Lcom/android/server/preload/ProtectedAppUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/preload/ProtectedAppUtils;

    invoke-direct {v1}, Lcom/android/server/preload/ProtectedAppUtils;-><init>()V

    sput-object v1, Lcom/android/server/preload/ProtectedAppUtils;->sInstance:Lcom/android/server/preload/ProtectedAppUtils;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/preload/ProtectedAppUtils;->sInstance:Lcom/android/server/preload/ProtectedAppUtils;

    return-object v0
.end method

.method private isPrivacySwitchOn()Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/preload/ProtectedAppUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/preload/ProtectedAppUtils;->URI_MAIN:Landroid/net/Uri;

    const-string/jumbo v2, "value"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "key= ?"

    const-string/jumbo v2, "pp_privacy_protect"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "value"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v1, 0x0

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v1, 0x0

    throw v2

    :catch_0
    move-exception v2

    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v1, 0x0

    nop

    return v0
.end method

.method private registerPrivacyDetailsObserver()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/preload/ProtectedAppUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/preload/ProtectedAppUtils;->URI_PRIVARY_PROTECT:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/preload/ProtectedAppUtils;->mPrivacyDetailsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerPrivacySwitchObserver()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/preload/ProtectedAppUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/preload/ProtectedAppUtils;->URI_MAIN:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/preload/ProtectedAppUtils;->mPrivacySwitchObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unRegisterPrivacyDetailsObserver()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/preload/ProtectedAppUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/preload/ProtectedAppUtils;->mPrivacyDetailsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unRegisterPrivacySwitchObserver()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/preload/ProtectedAppUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/preload/ProtectedAppUtils;->mPrivacySwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updatePrivacyData(Z)V
    .locals 9

    if-eqz p1, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/preload/ProtectedAppUtils;->mProtectedPkgList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/preload/ProtectedAppUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/preload/ProtectedAppUtils;->URI_PRIVARY_PROTECT:Landroid/net/Uri;

    const-string/jumbo v2, "pkg_name"

    const-string/jumbo v5, "protect_type"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/preload/ProtectedAppUtils;->mProtectedPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/preload/ProtectedAppUtils;->mHideIconAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const-string/jumbo v2, "pkg_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/preload/ProtectedAppUtils;->mProtectedPkgList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string/jumbo v3, "protect_type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/preload/ProtectedAppUtils;->mHideIconAppList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v1, 0x0

    throw v2

    :catch_0
    move-exception v2

    :cond_3
    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v1, 0x0

    nop

    iget-object v2, p0, Lcom/android/server/preload/ProtectedAppUtils;->mProtectedPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/preload/ProtectedAppUtils;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/preload/ProtectedAppUtils;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x78

    invoke-virtual {v5, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    goto :goto_1

    :cond_5
    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/server/preload/ProtectedAppUtils;->mProtectedPkgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_2
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/preload/ProtectedAppUtils;->unRegisterPrivacyDetailsObserver()V

    invoke-direct {p0}, Lcom/android/server/preload/ProtectedAppUtils;->unRegisterPrivacySwitchObserver()V

    return-void
.end method

.method public init(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/preload/ProtectedAppUtils;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/preload/ProtectedAppUtils;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/preload/ProtectedAppUtils;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/preload/ProtectedAppUtils$1;

    iget-object v1, p0, Lcom/android/server/preload/ProtectedAppUtils;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/preload/ProtectedAppUtils$1;-><init>(Lcom/android/server/preload/ProtectedAppUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/preload/ProtectedAppUtils;->mPrivacySwitchObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/server/preload/ProtectedAppUtils$2;

    iget-object v1, p0, Lcom/android/server/preload/ProtectedAppUtils;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/preload/ProtectedAppUtils$2;-><init>(Lcom/android/server/preload/ProtectedAppUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/preload/ProtectedAppUtils;->mPrivacyDetailsObserver:Landroid/database/ContentObserver;

    invoke-direct {p0}, Lcom/android/server/preload/ProtectedAppUtils;->isPrivacySwitchOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/preload/ProtectedAppUtils;->mIsPrivacyOn:Z

    invoke-direct {p0, v0}, Lcom/android/server/preload/ProtectedAppUtils;->updatePrivacyData(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/preload/ProtectedAppUtils;->registerPrivacyDetailsObserver()V

    invoke-direct {p0}, Lcom/android/server/preload/ProtectedAppUtils;->registerPrivacySwitchObserver()V

    return-void
.end method

.method public isAppHiden(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/preload/ProtectedAppUtils;->mHideIconAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAppProtected(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/preload/ProtectedAppUtils;->mProtectedPkgList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
