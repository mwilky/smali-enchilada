.class final Landroid/view/Choreographer$CallbackRecord;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackRecord"
.end annotation


# instance fields
.field public action:Ljava/lang/Object;

.field public dueTime:J

.field public next:Landroid/view/Choreographer$CallbackRecord;

.field public token:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/Choreographer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/Choreographer$1;

    .line 1162
    invoke-direct {p0}, Landroid/view/Choreographer$CallbackRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public run(J)V
    .locals 2
    .param p1, "frameTimeNanos"    # J

    .line 1169
    iget-object v0, p0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    invoke-static {}, Landroid/view/Choreographer;->access$500()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1170
    iget-object v0, p0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    check-cast v0, Landroid/view/Choreographer$FrameCallback;

    invoke-interface {v0, p1, p2}, Landroid/view/Choreographer$FrameCallback;->doFrame(J)V

    goto :goto_0

    .line 1172
    :cond_0
    iget-object v0, p0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1174
    :goto_0
    return-void
.end method
