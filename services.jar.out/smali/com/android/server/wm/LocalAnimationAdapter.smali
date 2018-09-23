.class Lcom/android/server/wm/LocalAnimationAdapter;
.super Ljava/lang/Object;
.source "LocalAnimationAdapter.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    }
.end annotation


# instance fields
.field private final mAnimator:Lcom/android/server/wm/SurfaceAnimationRunner;

.field private final mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# direct methods
.method constructor <init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    iput-object p2, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mAnimator:Lcom/android/server/wm/SurfaceAnimationRunner;

    return-void
.end method

.method public static synthetic lambda$startAnimation$0(Lcom/android/server/wm/LocalAnimationAdapter;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Lcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v0}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getDetachWallpaper()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v0}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getDetachWallpaper()Z

    move-result v0

    return v0
.end method

.method public getDurationHint()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v0}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v0}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getShowWallpaper()Z

    move-result v0

    return v0
.end method

.method public getStatusBarTransitionsStartTime()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v0}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->calculateStatusBarTransitionStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mAnimator:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mAnimator:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object v1, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$LocalAnimationAdapter$X--EomqUvw4qy89IeeTFTH7aCMo;

    invoke-direct {v2, p0, p3}, Lcom/android/server/wm/-$$Lambda$LocalAnimationAdapter$X--EomqUvw4qy89IeeTFTH7aCMo;-><init>(Lcom/android/server/wm/LocalAnimationAdapter;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimation(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5

    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/wm/LocalAnimationAdapter;->mSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v4, p1, v0, v1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
