.class public abstract Lcom/oneplus/longshot/LongScreenshotService;
.super Lcom/oneplus/longshot/ILongScreenshot$Stub;
.source "LongScreenshotService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.Service"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mNavBarVisible:Z

.field protected mStatusBarVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/longshot/ILongScreenshot$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/longshot/LongScreenshotService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/longshot/LongScreenshotService;->mStatusBarVisible:Z

    iput-boolean v0, p0, Lcom/oneplus/longshot/LongScreenshotService;->mNavBarVisible:Z

    iput-object p1, p0, Lcom/oneplus/longshot/LongScreenshotService;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/oneplus/longshot/LongScreenshotService;->mStatusBarVisible:Z

    iput-boolean p3, p0, Lcom/oneplus/longshot/LongScreenshotService;->mNavBarVisible:Z

    return-void
.end method


# virtual methods
.method public isHandleState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMoveState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyScroll(Z)V
    .locals 0

    return-void
.end method

.method public start(Lcom/oneplus/longshot/ILongScreenshotCallback;)V
    .locals 0

    return-void
.end method

.method public stopLongshot()V
    .locals 0

    return-void
.end method
