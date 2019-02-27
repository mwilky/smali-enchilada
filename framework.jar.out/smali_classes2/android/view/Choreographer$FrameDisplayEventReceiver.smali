.class final Landroid/view/Choreographer$FrameDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "Choreographer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameDisplayEventReceiver"
.end annotation


# instance fields
.field private mFrame:I

.field private mHavePendingVsync:Z

.field private mTimestampNanos:J

.field final synthetic this$0:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Landroid/os/Looper;I)V
    .locals 0

    iput-object p1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    invoke-direct {p0, p2, p3}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;I)V

    return-void
.end method


# virtual methods
.method public onVsync(JII)V
    .locals 6

    if-eqz p3, :cond_0

    const-string v0, "Choreographer"

    const-string v1, "Received vsync from secondary display, but we don\'t support this case yet.  Choreographer needs a way to explicitly request vsync for a specific display to ensure it doesn\'t lose track of its scheduled vsync."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const-string v2, "Choreographer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Frame time is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, p1, v0

    long-to-float v4, v4

    const v5, 0x358637bd    # 1.0E-6f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " ms in the future!  Check that graphics HAL is generating vsync timestamps using the correct timebase."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p1, v0

    :cond_1
    iget-boolean v2, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const-string v2, "Choreographer"

    const-string v4, "Already have a pending vsync event.  There should only be one at a time."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    :goto_0
    iput-wide p1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mTimestampNanos:J

    iput p4, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mFrame:I

    iget-object v2, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    invoke-static {v2}, Landroid/view/Choreographer;->access$400(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v3, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    invoke-static {v3}, Landroid/view/Choreographer;->access$400(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;

    move-result-object v3

    const-wide/32 v4, 0xf4240

    div-long v4, p1, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    iget-object v0, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    iget-wide v1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mTimestampNanos:J

    iget v3, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mFrame:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->doFrame(JI)V

    return-void
.end method
