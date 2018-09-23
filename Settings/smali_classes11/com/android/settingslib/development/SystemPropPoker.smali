.class public Lcom/android/settingslib/development/SystemPropPoker;
.super Ljava/lang/Object;
.source "SystemPropPoker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/development/SystemPropPoker$PokerTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemPropPoker"

.field private static final sInstance:Lcom/android/settingslib/development/SystemPropPoker;


# instance fields
.field private mBlockPokes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/development/SystemPropPoker;

    invoke-direct {v0}, Lcom/android/settingslib/development/SystemPropPoker;-><init>()V

    sput-object v0, Lcom/android/settingslib/development/SystemPropPoker;->sInstance:Lcom/android/settingslib/development/SystemPropPoker;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/development/SystemPropPoker;->mBlockPokes:Z

    return-void
.end method

.method public static getInstance()Lcom/android/settingslib/development/SystemPropPoker;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/android/settingslib/development/SystemPropPoker;->sInstance:Lcom/android/settingslib/development/SystemPropPoker;

    return-object v0
.end method


# virtual methods
.method public blockPokes()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/development/SystemPropPoker;->mBlockPokes:Z

    return-void
.end method

.method createPokerTask()Lcom/android/settingslib/development/SystemPropPoker$PokerTask;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/settingslib/development/SystemPropPoker$PokerTask;

    invoke-direct {v0}, Lcom/android/settingslib/development/SystemPropPoker$PokerTask;-><init>()V

    return-object v0
.end method

.method public poke()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settingslib/development/SystemPropPoker;->mBlockPokes:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/development/SystemPropPoker;->createPokerTask()Lcom/android/settingslib/development/SystemPropPoker$PokerTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/development/SystemPropPoker$PokerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public unblockPokes()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/development/SystemPropPoker;->mBlockPokes:Z

    return-void
.end method
