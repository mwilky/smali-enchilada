.class public Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;
.super Ljava/lang/Object;
.source "OPZenModeControllerImpl_dumy.java"

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

.field private mDndEnable:Z

.field private mHandler:Landroid/os/Handler;

.field private mThreeKeySatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;->mDndEnable:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;->mThreeKeySatus:I

    nop

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;->addCallback(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V

    return-void
.end method

.method public getDndEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;->mDndEnable:Z

    return v0
.end method

.method public getThreeKeySatus()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;->mThreeKeySatus:I

    return v0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl_dumy;->removeCallback(Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;)V

    return-void
.end method

.method public setDndEnable(Z)V
    .locals 0

    return-void
.end method
