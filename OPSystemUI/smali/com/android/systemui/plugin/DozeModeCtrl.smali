.class public Lcom/android/systemui/plugin/DozeModeCtrl;
.super Lcom/android/systemui/plugin/BaseCtrl;
.source "DozeModeCtrl.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/plugin/BaseCtrl;-><init>()V

    const-string v0, "DozeModeCtrl"

    iput-object v0, p0, Lcom/android/systemui/plugin/DozeModeCtrl;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugin/DozeModeCtrl;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onStartCtrl()V
    .locals 0

    return-void
.end method
