.class public Lcom/oneplus/injector/ScrollViewInjector$ScrollView;
.super Ljava/lang/Object;
.source "ScrollViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/injector/ScrollViewInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollView"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrollViewInjector"

.field public static isInjection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/injector/ScrollViewInjector$ScrollView;->isInjection:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onOverScrolled(Landroid/content/Context;Z)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/injector/ScrollViewInjector$ScrollView;->isInjection:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "longshot"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/longshot/LongScreenshotManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/longshot/LongScreenshotManager;->isLongshotMoveState()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v0, p1}, Lcom/oneplus/longshot/LongScreenshotManager;->notifyLongshotScroll(Z)V

    :cond_1
    return-void
.end method
