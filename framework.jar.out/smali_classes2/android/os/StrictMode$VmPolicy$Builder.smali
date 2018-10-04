.class public final Landroid/os/StrictMode$VmPolicy$Builder;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode$VmPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mClassInstanceLimit:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClassInstanceLimitNeedCow:Z

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mListener:Landroid/os/StrictMode$OnVmViolationListener;

.field private mMask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    return-void
.end method

.method public constructor <init>(Landroid/os/StrictMode$VmPolicy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    iget v0, p1, Landroid/os/StrictMode$VmPolicy;->mask:I

    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    iget-object v0, p1, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    iget-object v0, p1, Landroid/os/StrictMode$VmPolicy;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    iget-object v0, p1, Landroid/os/StrictMode$VmPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private enable(I)Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    return-object p0
.end method


# virtual methods
.method public build()Landroid/os/StrictMode$VmPolicy;
    .locals 7

    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    const/high16 v1, 0x270000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    :cond_0
    new-instance v0, Landroid/os/StrictMode$VmPolicy;

    iget v2, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    iget-object v1, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->access$100()Ljava/util/HashMap;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v4, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    iget-object v5, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/os/StrictMode$VmPolicy;-><init>(ILjava/util/HashMap;Landroid/os/StrictMode$OnVmViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode$1;)V

    return-object v0
.end method

.method public detectActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectAll()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 3

    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    :cond_1
    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    :cond_2
    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    const-string/jumbo v1, "persist.sys.strictmode.clear"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectCleartextNetwork()Landroid/os/StrictMode$VmPolicy$Builder;

    :cond_3
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectContentUriWithoutPermission()Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectUntaggedSockets()Landroid/os/StrictMode$VmPolicy$Builder;

    :cond_4
    return-object p0
.end method

.method public detectCleartextNetwork()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectContentUriWithoutPermission()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectNonSdkApiUsage()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public detectUntaggedSockets()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method disable(I)Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 2

    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    return-object p0
.end method

.method public penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyDeathOnCleartextNetwork()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/high16 v0, 0x2000000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyDeathOnFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/high16 v0, 0x4000000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyListener(Landroid/os/StrictMode$OnVmViolationListener;Ljava/util/concurrent/Executor;)Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    invoke-virtual {p0, p2, p1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyListener(Ljava/util/concurrent/Executor;Landroid/os/StrictMode$OnVmViolationListener;)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public penaltyListener(Ljava/util/concurrent/Executor;Landroid/os/StrictMode$OnVmViolationListener;)Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 2

    if-eqz p1, :cond_0

    iput-object p2, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mListener:Landroid/os/StrictMode$OnVmViolationListener;

    iput-object p1, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->enable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public permitActivityLeaks()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public permitNonSdkApiUsage()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public permitUntaggedSockets()Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 1

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClassInstanceLimit(Ljava/lang/Class;I)Landroid/os/StrictMode$VmPolicy$Builder;
    .locals 2

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimitNeedCow:Z

    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    :cond_2
    :goto_0
    iget v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mMask:I

    iget-object v0, p0, Landroid/os/StrictMode$VmPolicy$Builder;->mClassInstanceLimit:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "klass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
