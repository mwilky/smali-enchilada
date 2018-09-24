.class public Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;
.super Ljava/lang/Object;
.source "OPZenModeControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OPZenModeController;


# static fields
.field private static DEBUG:Z


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDndEnable:Z

.field private mDndSettingObserver:Lcom/android/systemui/qs/SystemSetting;

.field private final mHandler:Landroid/os/Handler;

.field private mThreeKeySatus:I

.field private mThreeKeySettingObserver:Lcom/android/systemui/qs/GlobalSetting;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private mZenModeSettingObserver:Lcom/android/systemui/qs/GlobalSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndEnable:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    nop

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->registerListener()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCurrentUserId:I

    new-instance v0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->handleThreeKeyUpdate(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->handleDndUpdate(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->onUserSwitched(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->onDndUpdate(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->onThreeKeyUpdate(I)V

    return-void
.end method

.method private handleDndUpdate(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndEnable:Z

    if-eq v0, p1, :cond_1

    const-string v0, "OPZenModeControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleDndUpdate enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndEnable:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndEnable:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;->onDndChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleThreeKeyUpdate(I)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    const-string v0, "OPZenModeControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleThreeKeyUpdate :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;->onThreeKeyStatus(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onDndUpdate(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xca

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onThreeKeyUpdate(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onUserSwitched(I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPZenModeControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCurrentUserId:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCurrentUserId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->registerListener()V

    :cond_1
    return-void
.end method

.method private registerListener()V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$3;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v3, "zen_mode"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mZenModeSettingObserver:Lcom/android/systemui/qs/GlobalSetting;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mZenModeSettingObserver:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mZenModeSettingObserver:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->onDndUpdate(Z)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$4;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mHandler:Landroid/os/Handler;

    const-string v4, "three_Key_mode"

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySettingObserver:Lcom/android/systemui/qs/GlobalSetting;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySettingObserver:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->getThreeKeyStatus(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->onThreeKeyUpdate(I)V

    :cond_1
    const-string v1, "OPZenModeControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener mThreeKeySatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " current user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendUpdates(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndEnable:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;->onDndChanged(Z)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;->onThreeKeyStatus(I)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OPZenModeControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** register callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "OPZenModeControllerImpl"

    const-string v3, "Object tried to add another callback"

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Called by"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->sendUpdates(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V

    return-void
.end method

.method public getDndEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndEnable:Z

    return v0
.end method

.method public getThreeKeySatus()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mThreeKeySatus:I

    return v0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OPZenModeControllerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** unregister callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V

    return-void
.end method

.method public setDndEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->mDndSettingObserver:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    return-void
.end method
