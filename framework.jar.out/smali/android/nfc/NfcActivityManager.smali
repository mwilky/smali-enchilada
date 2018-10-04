.class public final Landroid/nfc/NfcActivityManager;
.super Landroid/nfc/IAppCallback$Stub;
.source "NfcActivityManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcActivityManager$NfcActivityState;,
        Landroid/nfc/NfcActivityManager$NfcApplicationState;
    }
.end annotation


# static fields
.field static final DBG:Ljava/lang/Boolean;

.field static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nfc/NfcActivityManager$NfcActivityState;",
            ">;"
        }
    .end annotation
.end field

.field final mAdapter:Landroid/nfc/NfcAdapter;

.field final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nfc/NfcActivityManager$NfcApplicationState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/nfc/NfcAdapter;)V
    .locals 2

    invoke-direct {p0}, Landroid/nfc/IAppCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createBeamShareData(B)Landroid/nfc/BeamShareData;
    .locals 18

    move-object/from16 v1, p0

    new-instance v0, Landroid/nfc/NfcEvent;

    iget-object v2, v1, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    move/from16 v3, p1

    invoke-direct {v0, v2, v3}, Landroid/nfc/NfcEvent;-><init>(Landroid/nfc/NfcAdapter;B)V

    move-object v2, v0

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v0, :cond_0

    const/4 v4, 0x0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4

    :catchall_0
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_7

    :cond_0
    :try_start_2
    iget-object v4, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    iget-object v5, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    iget-object v6, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    iget-object v7, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    iget v8, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    iget-object v9, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    if-eqz v4, :cond_1

    :try_start_3
    invoke-interface {v4, v2}, Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;->createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v6, v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    goto/16 :goto_6

    :cond_1
    :goto_0
    if-eqz v5, :cond_6

    :try_start_4
    invoke-interface {v5, v2}, Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;->createBeamUris(Landroid/nfc/NfcEvent;)[Landroid/net/Uri;

    move-result-object v12

    move-object v7, v12

    if-eqz v7, :cond_6

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    array-length v13, v7

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_5

    aget-object v15, v7, v14

    if-nez v15, :cond_2

    const-string v0, "NFC"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v16, v2

    :try_start_5
    const-string v2, "Uri not allowed to be null."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    move-object/from16 v16, v2

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v15, v2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    :goto_2
    const-string v2, "NFC"

    move-object/from16 v17, v0

    const-string v0, "Uri needs to have either scheme file or scheme content"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v16

    goto :goto_1

    :cond_5
    move-object/from16 v16, v2

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    move-object v7, v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_6

    :cond_6
    move-object/from16 v16, v2

    :goto_4
    if-eqz v7, :cond_7

    array-length v0, v7

    if-lez v0, :cond_7

    array-length v0, v7

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_7

    aget-object v12, v7, v2

    const-string v13, "com.android.nfc"

    const/4 v14, 0x1

    invoke-virtual {v9, v13, v12, v14}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catchall_3
    move-exception v0

    :goto_6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_7
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    new-instance v0, Landroid/nfc/BeamShareData;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-direct {v2, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v0, v6, v7, v2, v8}, Landroid/nfc/BeamShareData;-><init>(Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;I)V

    return-object v0

    :catchall_4
    move-exception v0

    move-object/from16 v16, v2

    :goto_7
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_7
.end method

.method declared-synchronized destroyActivityState(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcActivityState;->destroy()V

    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public disableReaderMode(Landroid/app/Activity;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    const/4 v2, 0x0

    iput v2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    iput-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    iget-object v3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    iget-boolean v4, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3, v2, v1}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

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

.method public enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    iput p3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    iput-object p4, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    iget-boolean v2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, p3, p4}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

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

.method declared-synchronized findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcActivityManager$NfcActivityState;

    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;
    .locals 3

    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcActivityManager$NfcApplicationState;

    iget-object v2, v1, Landroid/nfc/NfcActivityManager$NfcApplicationState;->app:Landroid/app/Application;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method declared-synchronized findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcActivityManager$NfcActivityState;

    iget-boolean v2, v1, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/nfc/NfcActivityManager$NfcActivityState;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcActivityManager$NfcActivityState;-><init>(Landroid/nfc/NfcActivityManager;Landroid/app/Activity;)V

    move-object v0, v1

    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDestroy() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->destroyActivityState(Landroid/app/Activity;)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    sget-object v1, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPause() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    iget-object v2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    iget v3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    move v0, v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v2

    sget-object v3, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "NFC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResume() for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    iget-object v3, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    iget v4, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    move v0, v4

    iget-object v4, v2, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    move-object v1, v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3, v0, v1}, Landroid/nfc/NfcActivityManager;->setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V

    :cond_2
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onNdefPushComplete(B)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    move-object v0, v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Landroid/nfc/NfcEvent;

    iget-object v2, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {v1, v2, p1}, Landroid/nfc/NfcEvent;-><init>(Landroid/nfc/NfcAdapter;B)V

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;->onNdefPushComplete(Landroid/nfc/NfcEvent;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->findResumedActivityState()Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    move-object v0, v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/nfc/NfcAdapter$ReaderCallback;->onTagDiscovered(Landroid/nfc/Tag;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method registerApplication(Landroid/app/Application;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/nfc/NfcActivityManager$NfcApplicationState;

    invoke-direct {v1, p0, p1}, Landroid/nfc/NfcActivityManager$NfcApplicationState;-><init>(Landroid/nfc/NfcActivityManager;Landroid/app/Application;)V

    move-object v0, v1

    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcApplicationState;->register()V

    return-void
.end method

.method requestNfcServiceCallback()V
    .locals 2

    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p0}, Landroid/nfc/INfcAdapter;->setAppCallback(Landroid/nfc/IAppCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setNdefPushContentUri(Landroid/app/Activity;[Landroid/net/Uri;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setNdefPushContentUriCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setNdefPushMessage(Landroid/app/Activity;Landroid/nfc/NdefMessage;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    iput p3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setNdefPushMessageCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    iput p3, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setOnNdefPushCompleteCallback(Landroid/app/Activity;Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->getActivityState(Landroid/app/Activity;)Landroid/nfc/NfcActivityManager$NfcActivityState;

    move-result-object v0

    iput-object p2, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    iget-boolean v1, v0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    move v0, v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->requestNfcServiceCallback()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcActivityManager;->verifyNfcPermission()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setReaderMode(Landroid/os/Binder;ILandroid/os/Bundle;)V
    .locals 2

    sget-object v0, Landroid/nfc/NfcActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NFC"

    const-string v1, "Setting reader mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0, p1, p0, p2, p3}, Landroid/nfc/INfcAdapter;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method unregisterApplication(Landroid/app/Application;)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/nfc/NfcActivityManager;->findAppState(Landroid/app/Application;)Landroid/nfc/NfcActivityManager$NfcApplicationState;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "NFC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app was not registered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcActivityManager$NfcApplicationState;->unregister()V

    return-void
.end method

.method verifyNfcPermission()V
    .locals 2

    :try_start_0
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v0}, Landroid/nfc/INfcAdapter;->verifyNfcPermission()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/nfc/NfcActivityManager;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
