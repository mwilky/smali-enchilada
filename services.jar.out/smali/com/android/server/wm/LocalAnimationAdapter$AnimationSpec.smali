.class interface abstract Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
.super Ljava/lang/Object;
.source "LocalAnimationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/LocalAnimationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AnimationSpec"
.end annotation


# virtual methods
.method public abstract apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
.end method

.method public calculateStatusBarTransitionStartTime()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public canSkipFirstFrame()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public getBackgroundColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDetachWallpaper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getDuration()J
.end method

.method public getShowWallpaper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsEarlyWakeup()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 2

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-interface {p0, p1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->writeToProtoInner(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public abstract writeToProtoInner(Landroid/util/proto/ProtoOutputStream;)V
.end method
