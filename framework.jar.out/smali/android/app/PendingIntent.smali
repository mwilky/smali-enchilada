.class public final Landroid/app/PendingIntent;
.super Ljava/lang/Object;
.source "PendingIntent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PendingIntent$CancelListener;,
        Landroid/app/PendingIntent$OnMarshaledListener;,
        Landroid/app/PendingIntent$FinishedDispatcher;,
        Landroid/app/PendingIntent$OnFinished;,
        Landroid/app/PendingIntent$CanceledException;,
        Landroid/app/PendingIntent$Flags;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_CANCEL_CURRENT:I = 0x10000000

.field public static final FLAG_IMMUTABLE:I = 0x4000000

.field public static final FLAG_NO_CREATE:I = 0x20000000

.field public static final FLAG_ONE_SHOT:I = 0x40000000

.field public static final FLAG_UPDATE_CURRENT:I = 0x8000000

.field private static final sOnMarshaledListener:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/app/PendingIntent$OnMarshaledListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCancelListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/app/PendingIntent$CancelListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelReceiver:Lcom/android/internal/os/IResultReceiver;

.field private final mTarget:Landroid/content/IIntentSender;

.field private mWhitelistToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/PendingIntent;->sOnMarshaledListener:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/app/PendingIntent$2;

    invoke-direct {v0}, Landroid/app/PendingIntent$2;-><init>()V

    sput-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/content/IIntentSender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Landroid/app/PendingIntent;->mWhitelistToken:Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/PendingIntent;->notifyCancelListeners()V

    return-void
.end method

.method private static buildServicePendingIntent(Landroid/content/Context;ILandroid/content/Intent;II)Landroid/app/PendingIntent;
    .locals 16

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    move-object v14, v2

    move-object/from16 v15, p0

    :try_start_0
    invoke-virtual {v1, v15}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    new-array v8, v3, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object v1, v8, v4

    if-eqz v14, :cond_1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v14, v3, v4

    move-object v9, v3

    goto :goto_1

    :cond_1
    move-object v9, v0

    :goto_1
    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getUserId()I

    move-result v12

    move/from16 v3, p4

    move-object v4, v13

    move/from16 v7, p1

    move/from16 v10, p3

    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v2}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 16

    move-object/from16 v12, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    array-length v0, v12

    new-array v14, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, v12

    if-ge v0, v1, :cond_0

    aget-object v1, v12, v0

    invoke-virtual {v1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    aget-object v1, v12, v0

    move-object/from16 v15, p0

    invoke-virtual {v1, v15}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    aget-object v1, v12, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v15, p0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getUserId()I

    move-result v11

    move-object v3, v13

    move/from16 v6, p1

    move-object v7, v12

    move-object v8, v14

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/app/PendingIntent;

    invoke-direct {v1, v0}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getActivitiesAsUser(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 16

    move-object/from16 v12, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    array-length v0, v12

    new-array v14, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, v12

    if-ge v0, v1, :cond_0

    aget-object v1, v12, v0

    invoke-virtual {v1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    aget-object v1, v12, v0

    move-object/from16 v15, p0

    invoke-virtual {v1, v15}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    aget-object v1, v12, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v15, p0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    move-object v3, v13

    move/from16 v6, p1

    move-object v7, v12

    move-object v8, v14

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-interface/range {v1 .. v11}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/app/PendingIntent;

    invoke-direct {v1, v0}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 16

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    move-object v14, v2

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v15, p0

    :try_start_1
    invoke-virtual {v1, v15}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    new-array v8, v4, [Landroid/content/Intent;

    const/4 v7, 0x0

    aput-object v1, v8, v7

    if-eqz v14, :cond_1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v14, v4, v7

    move-object v9, v4

    goto :goto_1

    :cond_1
    nop

    move-object v9, v0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getUserId()I

    move-result v12

    move-object v4, v13

    move/from16 v7, p1

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v2}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v15, p0

    :goto_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 16

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    move-object v14, v2

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v15, p0

    :try_start_1
    invoke-virtual {v1, v15}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    new-array v8, v4, [Landroid/content/Intent;

    const/4 v7, 0x0

    aput-object v1, v8, v7

    if-eqz v14, :cond_1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v14, v4, v7

    move-object v9, v4

    goto :goto_1

    :cond_1
    nop

    move-object v9, v0

    :goto_1
    invoke-virtual/range {p5 .. p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    move-object v4, v13

    move/from16 v7, p1

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v2}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v15, p0

    :goto_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 16

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    move-object v14, v2

    move-object/from16 v15, p0

    :try_start_0
    invoke-virtual {v1, v15}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    new-array v8, v4, [Landroid/content/Intent;

    const/4 v7, 0x0

    aput-object v1, v8, v7

    if-eqz v14, :cond_1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v14, v4, v7

    move-object v9, v4

    goto :goto_1

    :cond_1
    move-object v9, v0

    :goto_1
    const/4 v11, 0x0

    invoke-virtual/range {p4 .. p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    move-object v4, v13

    move/from16 v7, p1

    move/from16 v10, p3

    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v2}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->buildServicePendingIntent(Landroid/content/Context;ILandroid/content/Intent;II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, p2, p3, v0}, Landroid/app/PendingIntent;->buildServicePendingIntent(Landroid/content/Context;ILandroid/content/Intent;II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private notifyCancelListeners()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/PendingIntent;->mCancelListeners:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent$CancelListener;

    invoke-interface {v3, p0}, Landroid/app/PendingIntent$CancelListener;->onCancelled(Landroid/app/PendingIntent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .locals 3

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/PendingIntent;

    const-class v2, Landroid/app/PendingIntent;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->getClassCookie(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/app/PendingIntent;-><init>(Landroid/os/IBinder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static setOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V
    .locals 1

    sget-object v0, Landroid/app/PendingIntent;->sOnMarshaledListener:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    if-eqz p0, :cond_1

    sget-object v0, Landroid/app/PendingIntent;->sOnMarshaledListener:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent$OnMarshaledListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Landroid/app/PendingIntent$OnMarshaledListener;->onMarshaled(Landroid/app/PendingIntent;Landroid/os/Parcel;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->cancelIntentSender(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/app/PendingIntent;

    iget-object v1, v1, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCreatorPackage()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCreatorUid()I
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCreatorUserHandle()Landroid/os/UserHandle;
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getIntentSender()Landroid/content/IntentSender;
    .locals 3

    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    iget-object v2, p0, Landroid/app/PendingIntent;->mWhitelistToken:Landroid/os/IBinder;

    invoke-direct {v0, v1, v2}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1, p1}, Landroid/app/IActivityManager;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTarget()Landroid/content/IIntentSender;
    .locals 1

    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    return-object v0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWhitelistToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/app/PendingIntent;->mWhitelistToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isActivity()Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isForegroundService()Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->isIntentSenderAForegroundService(Landroid/content/IIntentSender;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isTargetedToPackage()Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/PendingIntent;->mCancelReceiver:Lcom/android/internal/os/IResultReceiver;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/PendingIntent$1;

    invoke-direct {v0, p0}, Landroid/app/PendingIntent$1;-><init>(Landroid/app/PendingIntent;)V

    iput-object v0, p0, Landroid/app/PendingIntent;->mCancelReceiver:Lcom/android/internal/os/IResultReceiver;

    :cond_0
    iget-object v0, p0, Landroid/app/PendingIntent;->mCancelListeners:Landroid/util/ArraySet;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/PendingIntent;->mCancelListeners:Landroid/util/ArraySet;

    :cond_1
    iget-object v0, p0, Landroid/app/PendingIntent;->mCancelListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mCancelListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    iget-object v3, p0, Landroid/app/PendingIntent;->mCancelReceiver:Lcom/android/internal/os/IResultReceiver;

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->registerIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public send()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public send(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public send(ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p7}, Landroid/app/PendingIntent;->sendAndReturnResult(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/PendingIntent$CanceledException;

    invoke-direct {v0}, Landroid/app/PendingIntent$CanceledException;-><init>()V

    throw v0
.end method

.method public sendAndReturnResult(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    const/4 v0, 0x0

    if-eqz v11, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v13, p5

    goto :goto_2

    :cond_0
    move-object v7, v0

    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    iget-object v4, v1, Landroid/app/PendingIntent;->mWhitelistToken:Landroid/os/IBinder;

    if-eqz v12, :cond_1

    new-instance v0, Landroid/app/PendingIntent$FinishedDispatcher;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v13, p5

    :try_start_1
    invoke-direct {v0, v1, v12, v13}, Landroid/app/PendingIntent$FinishedDispatcher;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    move-object/from16 v13, p5

    :goto_1
    move-object v8, v0

    move/from16 v5, p2

    move-object v6, v11

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v2 .. v10}, Landroid/app/IActivityManager;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :goto_2
    nop

    new-instance v2, Landroid/app/PendingIntent$CanceledException;

    invoke-direct {v2, v0}, Landroid/app/PendingIntent$CanceledException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "PendingIntent{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/PendingIntent;->mCancelListeners:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/PendingIntent;->mCancelListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mCancelListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/app/PendingIntent;->mCancelListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    iget-object v3, p0, Landroid/app/PendingIntent;->mCancelReceiver:Lcom/android/internal/os/IResultReceiver;

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    sget-object v0, Landroid/app/PendingIntent;->sOnMarshaledListener:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent$OnMarshaledListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Landroid/app/PendingIntent$OnMarshaledListener;->onMarshaled(Landroid/app/PendingIntent;Landroid/os/Parcel;I)V

    :cond_0
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    if-eqz v2, :cond_0

    const-wide v2, 0x10900000001L

    iget-object v4, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v4}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
