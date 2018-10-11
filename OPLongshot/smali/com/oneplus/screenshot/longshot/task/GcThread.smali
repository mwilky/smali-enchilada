.class public Lcom/oneplus/screenshot/longshot/task/GcThread;
.super Lcom/oneplus/screenshot/longshot/task/BaseThread;
.source "GcThread.java"


# static fields
.field private static final GC_DELAY:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "GcThread"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/task/BaseThread;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/task/GcThread;->mDelay:J

    return-void
.end method


# virtual methods
.method protected onRun()V
    .locals 0

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method
