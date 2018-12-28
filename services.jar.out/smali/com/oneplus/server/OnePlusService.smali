.class public final Lcom/oneplus/server/OnePlusService;
.super Lcom/android/server/SystemService;
.source "OnePlusService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OnePlusService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private opams:Lcom/android/server/am/OnePlusAppControlModeService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/OnePlusService;->opams:Lcom/android/server/am/OnePlusAppControlModeService;

    iput-object p1, p0, Lcom/oneplus/server/OnePlusService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/server/OnePlusService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OnePlusService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/server/OnePlusService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppControlModeService;->getInstance(Landroid/content/Context;)Lcom/android/server/am/OnePlusAppControlModeService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/server/OnePlusService;->opams:Lcom/android/server/am/OnePlusAppControlModeService;

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-string/jumbo v0, "opservice"

    new-instance v1, Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;

    invoke-direct {v1, p0}, Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;-><init>(Lcom/oneplus/server/OnePlusService;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/server/OnePlusService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
