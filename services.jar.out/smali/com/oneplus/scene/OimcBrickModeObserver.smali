.class public Lcom/oneplus/scene/OimcBrickModeObserver;
.super Ljava/lang/Object;
.source "OimcBrickModeObserver.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "OimcBrickModeObserver"

.field private static sInstance:Lcom/oneplus/scene/OimcBrickModeObserver;


# instance fields
.field private mModeOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/scene/OimcBrickModeObserver;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mModeOn:Z

    return-void
.end method

.method public static final getInstance()Lcom/oneplus/scene/OimcBrickModeObserver;
    .locals 1

    sget-object v0, Lcom/oneplus/scene/OimcBrickModeObserver;->sInstance:Lcom/oneplus/scene/OimcBrickModeObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/scene/OimcBrickModeObserver;

    invoke-direct {v0}, Lcom/oneplus/scene/OimcBrickModeObserver;-><init>()V

    sput-object v0, Lcom/oneplus/scene/OimcBrickModeObserver;->sInstance:Lcom/oneplus/scene/OimcBrickModeObserver;

    :cond_0
    sget-object v0, Lcom/oneplus/scene/OimcBrickModeObserver;->sInstance:Lcom/oneplus/scene/OimcBrickModeObserver;

    return-object v0
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mModeOn:Z

    return v0
.end method

.method public shouldBlockNotifSound(Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lcom/oneplus/scene/OimcBrickModeObserver;->DBG:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mModeOn:Z

    if-eqz v0, :cond_0

    const-string v0, "OimcBrickModeObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Block notification sound by breath mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mModeOn:Z

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/oneplus/scene/OimcBrickModeObserver;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OimcBrickModeObserver"

    const-string v1, "breath mode: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mModeOn:Z

    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/oneplus/scene/OimcBrickModeObserver;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OimcBrickModeObserver"

    const-string v1, "breath mode: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/scene/OimcBrickModeObserver;->mModeOn:Z

    return v0
.end method
