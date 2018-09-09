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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p1, p0, Lcom/oneplus/server/OnePlusService;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/server/OnePlusService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/server/OnePlusService;

    .line 38
    iget-object v0, p0, Lcom/oneplus/server/OnePlusService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 0
    .param p1, "phase"    # I

    .line 56
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 51
    const-string/jumbo v0, "opservice"

    new-instance v1, Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;

    invoke-direct {v1, p0}, Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;-><init>(Lcom/oneplus/server/OnePlusService;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/server/OnePlusService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 52
    return-void
.end method
