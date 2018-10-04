.class public Lcom/oneplus/util/ContentDebugUtils;
.super Ljava/lang/Object;
.source "ContentDebugUtils.java"


# static fields
.field public static final DBG:Z

.field public static final DBG_ALL:Z

.field public static final DBG_DUMP_STACK:Z

.field private static final DBG_URI:Landroid/net/Uri;

.field public static final SAVE_DBG_MSG:Z = true

.field private static final TAG:Ljava/lang/String; = "ContentDebugUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://media/external/op_debug"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/util/ContentDebugUtils;->DBG_URI:Landroid/net/Uri;

    const-string v0, "persist.debug.content.all"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/util/ContentDebugUtils;->DBG_ALL:Z

    const-string v0, "persist.debug.content.dumpstack"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/util/ContentDebugUtils;->DBG_DUMP_STACK:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sget-boolean v1, Lcom/oneplus/util/ContentDebugUtils;->DBG_ALL:Z

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/oneplus/util/ContentDebugUtils;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUriVolumeName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isExternalMediaUri(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "media"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "external"

    invoke-static {p0}, Lcom/oneplus/util/ContentDebugUtils;->getUriVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/util/ContentDebugUtils;->DBG_URI:Landroid/net/Uri;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static packContentValues(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    if-eqz p4, :cond_0

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v3, "_tag"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_action"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_uri"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sel"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sel_arg"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_pkg_name"

    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/oneplus/util/ContentDebugUtils;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "ContentDebugUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v2
.end method

.method public static saveDbgMsg(Landroid/content/ContentProvider;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deletedata=false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static/range {p1 .. p6}, Lcom/oneplus/util/ContentDebugUtils;->packContentValues(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-static {p3}, Lcom/oneplus/util/ContentDebugUtils;->isExternalMediaUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/oneplus/util/ContentDebugUtils;->DBG_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/oneplus/util/ContentDebugUtils;->DBG_DUMP_STACK:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "ContentDebugUtils"

    const-string v3, "DbgMsg Stack:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    throw v0

    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/oneplus/util/ContentDebugUtils;->DBG_DUMP_STACK:Z

    if-eqz v0, :cond_2

    const-string v0, "ContentDebugUtils"

    const-string v1, "DbgMsg Stack:"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/oneplus/util/ContentDebugUtils;->DBG_DUMP_STACK:Z

    if-eqz v0, :cond_2

    const-string v0, "ContentDebugUtils"

    const-string v1, "DbgMsg Stack:"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    :goto_1
    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method public static saveDbgMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_3

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object v5, v6

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/oneplus/util/ContentDebugUtils;->packContentValues(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    sget-object v1, Lcom/oneplus/util/ContentDebugUtils;->DBG_URI:Landroid/net/Uri;

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/oneplus/util/ContentDebugUtils;->DBG_DUMP_STACK:Z

    if-eqz v1, :cond_0

    const-string v1, "ContentDebugUtils"

    const-string v2, "DbgMsg Stack:"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z

    :cond_1
    throw v0

    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/oneplus/util/ContentDebugUtils;->DBG_DUMP_STACK:Z

    if-eqz v0, :cond_2

    const-string v0, "ContentDebugUtils"

    const-string v1, "DbgMsg Stack:"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    if-eqz v7, :cond_5

    goto :goto_1

    :cond_3
    :goto_0
    sget-boolean v0, Lcom/oneplus/util/ContentDebugUtils;->DBG_DUMP_STACK:Z

    if-eqz v0, :cond_4

    const-string v0, "ContentDebugUtils"

    const-string v1, "DbgMsg Stack:"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    if-eqz v7, :cond_5

    :goto_1
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z

    :cond_5
    return-void
.end method

.method public static saveDbgMsg(Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p3, :cond_1

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deletedata=false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static/range {p1 .. p6}, Lcom/oneplus/util/ContentDebugUtils;->packContentValues(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-static {p3}, Lcom/oneplus/util/ContentDebugUtils;->isExternalMediaUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/oneplus/util/ContentDebugUtils;->DBG_URI:Landroid/net/Uri;

    invoke-interface {p0, p6, v2, v1}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/oneplus/util/ContentDebugUtils;->DBG_DUMP_STACK:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "ContentDebugUtils"

    const-string v3, "DbgMsg Stack:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    throw v0

    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/oneplus/util/ContentDebugUtils;->DBG_DUMP_STACK:Z

    if-eqz v0, :cond_2

    const-string v0, "ContentDebugUtils"

    const-string v1, "DbgMsg Stack:"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/oneplus/util/ContentDebugUtils;->DBG_DUMP_STACK:Z

    if-eqz v0, :cond_2

    const-string v0, "ContentDebugUtils"

    const-string v1, "DbgMsg Stack:"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    :goto_1
    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method
