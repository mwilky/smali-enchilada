.class public Landroid/os/OnePlusParallelAppUtils;
.super Ljava/lang/Object;
.source "OnePlusParallelAppUtils.java"


# static fields
.field private static final BASIC_PARALLEL_APPS:[Ljava/lang/String;

.field public static final DBG:Z

.field public static final DBG_ALL:Z

.field public static final DBG_DUMPDSATCK:Z

.field public static final DBG_DUMPVSATCK:Z

.field private static final IS_PARALLEL_APP_FEATURE:Z

.field private static final TAG:Ljava/lang/String; = "OnePlusParallelAppUtils"

.field private static WHITE_AUTH_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Landroid/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURE:Z

    .line 53
    const-string v2, "android"

    const-string v3, "com.google.android.webview"

    const-string v4, "com.android.webview"

    const-string v5, "com.android.keychain"

    const-string v6, "com.google.android.packageinstaller"

    const-string v7, "com.android.packageinstaller"

    const-string v8, "com.android.providers.telephony"

    const-string v9, "com.android.providers.calendar"

    const-string v10, "com.android.providers.media"

    const-string v11, "com.android.documentsui"

    const-string v12, "com.android.externalstorage"

    const-string v13, "com.android.providers.downloads"

    const-string v14, "com.android.providers.settings"

    const-string v15, "com.android.server.telecom"

    const-string v16, "com.google.android.gms"

    const-string v17, "com.google.android.gsf"

    const-string v18, "com.qualcomm.qti.tetherservice"

    const-string v19, "com.android.vpndialogs"

    const-string v20, "com.android.phone"

    const-string v21, "com.android.providers.contacts"

    const-string v22, "com.android.settings"

    const-string v23, "com.oneplus"

    const-string v24, "com.android.printspooler"

    const-string v25, "com.oneplus.ifaaservice"

    const-string v26, "com.tencent.soter.soterserver"

    filled-new-array/range {v2 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/OnePlusParallelAppUtils;->BASIC_PARALLEL_APPS:[Ljava/lang/String;

    .line 83
    const-string/jumbo v2, "media"

    const-string v3, "com.android.contacts"

    const-string v4, "contacts;com.android.contacts"

    const-string v5, "com.android.contacts.files"

    const-string v6, "com.oneplus.note.fileProvider"

    const-string v7, "com.google.android.apps.photos.contentprovider"

    const-string v8, "com.android.externalstorage.documents"

    const-string/jumbo v9, "oneplus.gallery"

    const-string v10, "com.google.android.apps.docs.storage"

    const-string v11, "com.oneplus.security.database.SafeProvider"

    const-string/jumbo v12, "mms"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/OnePlusParallelAppUtils;->WHITE_AUTH_LIST:[Ljava/lang/String;

    .line 165
    const-string/jumbo v0, "persist.debug.onepluspa.all"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    .line 167
    const-string/jumbo v0, "persist.debug.onepluspa.stackd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_DUMPDSATCK:Z

    .line 169
    const-string/jumbo v0, "persist.debug.onepluspa.stackv"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_DUMPVSATCK:Z

    .line 172
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sget-boolean v1, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    or-int/2addr v0, v1

    sput-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBasicParallelApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgname"    # Ljava/lang/String;

    .line 161
    sget-object v0, Landroid/os/OnePlusParallelAppUtils;->BASIC_PARALLEL_APPS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isParallelAuth(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p0, "FUNC_TAG"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "auth"    # Ljava/lang/String;

    .line 119
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p1}, Landroid/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    sget-object v0, Landroid/os/OnePlusParallelAppUtils;->WHITE_AUTH_LIST:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 122
    .local v4, "authority":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 123
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "OnePlusParallelAppUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": isParallelAuth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 121
    .end local v4    # "authority":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    :cond_2
    return v1
.end method

.method public static isParallelAuth(Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 6
    .param p0, "FUNC_TAG"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "auth"    # Ljava/lang/String;
    .param p3, "isSystemApp"    # Z

    .line 134
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    invoke-static {p1}, Landroid/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    const-string v0, "com.android.contacts"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 137
    return v1

    .line 140
    :cond_0
    sget-object v0, Landroid/os/OnePlusParallelAppUtils;->WHITE_AUTH_LIST:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 141
    .local v4, "authority":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 142
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    if-eqz v0, :cond_1

    .line 143
    const-string v0, "OnePlusParallelAppUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": isParallelAuth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 140
    .end local v4    # "authority":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_3
    return v1
.end method

.method public static isParallelAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "FUNC_TAG"    # Ljava/lang/String;
    .param p1, "auth"    # Ljava/lang/String;

    .line 103
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 106
    sget-object v0, Landroid/os/OnePlusParallelAppUtils;->WHITE_AUTH_LIST:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 107
    .local v4, "authority":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "OnePlusParallelAppUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": isParallelAuth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 106
    .end local v4    # "authority":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    :cond_2
    return v1
.end method

.method public static isParallelUser(I)Z
    .locals 3
    .param p0, "userId"    # I

    .line 152
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURE:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e7

    if-ne p0, v0, :cond_1

    .line 153
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusParallelAppUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isParallelUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 156
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static pLogd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "FUNC_TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 99
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusParallelAppUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Landroid/os/OnePlusParallelAppUtils;->DBG_DUMPDSATCK:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :cond_1
    return-void
.end method

.method public static pLogv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "FUNC_TAG"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 95
    sget-boolean v0, Landroid/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusParallelAppUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Landroid/os/OnePlusParallelAppUtils;->DBG_DUMPVSATCK:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :cond_1
    return-void
.end method
